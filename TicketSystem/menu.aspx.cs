using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TicketSystem
{
    public partial class menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCategoria_Click(object sender, EventArgs e)
        {
            // boton que redirecciona hacia agregar categoria
            Response.Redirect("AddCategory.aspx");
        }

        protected void btnNuevoUsuario_Click(object sender, EventArgs e)
        {
            // boton que redirecciona hacia agregar usuario
            Response.Redirect("AddUser.aspx");
        }

        protected void btnNuevoTicket_Click(object sender, EventArgs e)
        {
            // boton que redirecciona hacia agregar nuevo ticket
            Response.Redirect("CreateTicket.aspx");
        }
    }
}