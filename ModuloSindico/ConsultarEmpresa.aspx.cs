using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloSindico
{
    public partial class ConsultarEmpresa : System.Web.UI.Page
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
            SqlDataSource1.SelectParameters["EmpNome"].DefaultValue = txtPesquisar.Text;

            gdvEmpresa.DataBind();
        }

        protected void gdvEmpresa_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = gdvEmpresa.SelectedRow;
            Response.Redirect("~/DetalheEmpresa.aspx?id=" + row.Cells[6].Text);
        }
    }
}
