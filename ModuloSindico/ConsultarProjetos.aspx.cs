using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace CondominioSite.ModuloSindico
{
    public partial class ConsultarProjetos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            if (User.Login == null)
            {
                Response.Redirect("~/login.aspx");
            }
        }

        protected void btnPequisar_Click(object sender, EventArgs e)
        {
            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            SqlDataSource1.SelectParameters["ProjNome"].DefaultValue = txtPesquisa.Text;
            SqlDataSource1.SelectParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);

            gdvProjetos.DataBind();
        }

        protected void gdvProjetos_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = gdvProjetos.SelectedRow;
            Response.Redirect("~/DetalheProjeto.aspx?id=" + row.Cells[3].Text);

        }
    }
}
