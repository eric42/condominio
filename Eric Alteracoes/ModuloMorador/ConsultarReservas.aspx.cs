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

namespace CondominioSite.ModuloMorador
{
    public partial class ConsultarReservas : System.Web.UI.Page
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
            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            SqlDataSource1.SelectParameters["DonoFesta"].DefaultValue = txtReserva.Text;
            SqlDataSource1.SelectParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);

            gdvReservas.DataBind();
        }

        protected void gdvReservas_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = gdvReservas.SelectedRow;
            Response.Redirect("~/DetalheReserva.aspx?id=" + row.Cells[5].Text);
        }
    }
}
