using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloMorador
{
    public partial class ConsultarProjetosAprovados1 : System.Web.UI.Page
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

        protected void gdvProjetosAprovados_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = gdvProjetosAprovados.SelectedRow;
            Response.Redirect("~/DetalheProjeto.aspx?id=" + row.Cells[4].Text);
        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectParameters["ProjNome"].DefaultValue = txtPesquisar.Text;

            gdvProjetosAprovados.DataBind();
        }
    }
}
