using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Ado .Net
using System.Data;
using System.Data.SqlClient;

using System.Configuration;

namespace TicketSystem
{
    public partial class login : System.Web.UI.Page
    {
        // Llama cadena de conexion 
        string Cadena = ConfigurationManager.ConnectionStrings["TSystemConnectionString"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {
            // no existe accion al cargar la pagina
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            
            // se crea un dataset
            DataSet ds = new DataSet();

            // se prepara la cadena para la ejecucion del procedimiento almacenado
            using (SqlDataAdapter da = new SqlDataAdapter("CheckUser", Cadena))
            {
                // llama al procedimiento almacenado
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                // Envia variables de usuario
                da.SelectCommand.Parameters.Add("@usr_Email", SqlDbType.VarChar).Value = txtUsername.Text;
                // Envia variables de contraseña
                da.SelectCommand.Parameters.Add("@usr_Password", SqlDbType.VarChar).Value = txtPassword.Text;

                // llena la informacion 
                da.Fill(ds);

            }

            // verifica si regreso datos
            // Si el usuario existe mostrará
            if (ds.Tables[0].Rows.Count > 0)
            {

                
                lblMensaje.Text = "Usuario existe";


                //Declarar Variable de sesion
                Session["idUser"] = ds.Tables[0].Rows[0][0].ToString();
                Session["usr_Fname"] = ds.Tables[0].Rows[0][1].ToString();
                Session["usr_Email"] = ds.Tables[0].Rows[0][2].ToString();


                // Redirecciona al menu
                Response.Redirect("menu.aspx");

            }
            // si el usuario no existe o credenciales invalidas
            else
            {
                // muestra etiqueta oculta
                lblMensaje.Visible = true;
                // muestra error
                lblMensaje.Text = "Usuario no existe o los datos son erroneos";
            }
        }
    }
}