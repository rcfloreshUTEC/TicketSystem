using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TicketSystem
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Muestra estado actual de la tabla
            UpdateGrid();
        }

        protected void btnInsertarCat_Click(object sender, EventArgs e)
        {
            // llama desde el archivo conn.cs a IngresaCategoria
            var Datos = conn.IngresarCategoria(txtNombreCat.Text, Session["idUser"].ToString());
            UpdateGrid();

            // Muestra mensaje de satisfacción o error al agregar categoria
            lblMensaje.Text = Datos[1];
        }

        public void UpdateGrid()
        {
            // Actualiza el datagridview de Categoria
            dgvCategory.DataSource = conn.ShowCategory();
            dgvCategory.DataBind();
        }
    }   
}