using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloMorador
{
    public partial class CadastrarConvidados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Login == null)
            {
                Usuarios User = new Usuarios();
                User = (Usuarios)Session["usuario"];
            }
            else
            {
                Response.Redirect("~/login.aspx");
            }
        }
    }
}
