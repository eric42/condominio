using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloSindico
{
    public partial class ConsultarContas : System.Web.UI.Page
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

            SqlDataSource1.SelectParameters["CtaDtBoleto"].DefaultValue = txtPesquisar.Text;
            SqlDataSource1.SelectParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);

            gdvContas.DataBind();
        }

        protected void gdvContas_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = gdvContas.SelectedRow;
            Response.Redirect("~/DetalheContas.aspx?id=" + row.Cells[6].Text);
        }
    }
}