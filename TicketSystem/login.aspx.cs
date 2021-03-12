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
        string Cadena = ConfigurationManager.ConnectionStrings["TSystemConnectionString"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();


            using (SqlDataAdapter da = new SqlDataAdapter("CheckUser", Cadena))
            {
                da.SelectCommand.CommandType = CommandType.StoredProcedure;

                da.SelectCommand.Parameters.Add("@usr_Email", SqlDbType.VarChar).Value = txtUsername.Text;
                da.SelectCommand.Parameters.Add("@usr_Password", SqlDbType.VarChar).Value = txtPassword.Text;

                da.Fill(ds);

            }


            if (ds.Tables[0].Rows.Count > 0)
            {

                lblMensaje.Text = "Usuario existe";


                //Declarar Variable de sesion
                Session["idUsuario"] = ds.Tables[0].Rows[0][0].ToString();
                Session["NombreUsuario"] = ds.Tables[0].Rows[0][1].ToString();
                Session["Usuario"] = ds.Tables[0].Rows[0][2].ToString();

                Response.Redirect("Categorias.aspx");



            }

            else
            {
                lblMensaje.Visible = true;

                lblMensaje.Text = "Usuario no existe o los datos son erroneos";
            }
        }
    }
}