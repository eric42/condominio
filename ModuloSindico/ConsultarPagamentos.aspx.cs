using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloSindico
{
    public partial class ConsultarPagamentos : System.Web.UI.Page
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

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            SqlDataSource1.SelectParameters["PagDataEntrada"].DefaultValue = txtPesquisar.Text;
            SqlDataSource1.SelectParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);

            gdvPagamento.DataBind();
        }

        protected void gdvPagamento_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = gdvPagamento.SelectedRow;
            Response.Redirect("~/DetalhePagamento.aspx?id=" + row.Cells[4].Text);
        }
    }
}
