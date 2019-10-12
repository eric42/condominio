using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloSindico
{
    public partial class ConsultarFunc : System.Web.UI.Page
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

        protected void gdvFuncionarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = gdvFuncionarios.SelectedRow;
            Response.Redirect("~/DetalheFuncionario.aspx?id=" + row.Cells[4].Text);
        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            SqlDataSource1.SelectParameters["CondFuncNome"].DefaultValue = txtPesquisar.Text;
            SqlDataSource1.SelectParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);

            gdvFuncionarios.DataBind();
        }
    }
}
