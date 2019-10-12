using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloMorador
{
    public partial class ConsultarClassificado : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectParameters["ClassiFlag"].DefaultValue = txtPesquisa.Text;

            gdvClassificado.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = gdvClassificado.SelectedRow;
            Response.Redirect("~/DetalheClassificado.aspx?id=" + row.Cells[4].Text);
        }
    }
}
