using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloSindico
{
    public partial class ConsultarCondominio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           /* if (User.Login == null)
            {
                Usuarios User = new Usuarios();
                User = (Usuarios)Session["usuario"];
            }
            else
            {
                Response.Redirect("~/login.aspx");
            }*/
        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectParameters["CondNome"].DefaultValue = txtPesquisar.Text;

            gdvCondominio.DataBind();
        }

        protected void gdvCondominio_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = gdvCondominio.SelectedRow;
            Response.Redirect("~/DetalheCondominio.aspx?id=" + row.Cells[5].Text);
        }
    }
}
