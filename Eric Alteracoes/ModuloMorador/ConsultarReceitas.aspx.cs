using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloMorador
{
    public partial class ConsultarReceitas : System.Web.UI.Page
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

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectParameters["ReceitaFlag"].DefaultValue = txtPesquisar.Text;

            gdvReceita.DataBind();
        }

        protected void gdvReceita_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = gdvReceita.SelectedRow;
            Response.Redirect("~/DetalheReceita.aspx?id=" + row.Cells[5].Text);
        }
    }
}
