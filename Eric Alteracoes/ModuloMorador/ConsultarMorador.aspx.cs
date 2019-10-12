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
    public partial class ConsultarMorador : System.Web.UI.Page
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

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            SqlDataSource1.SelectParameters["CondFuncNome"].DefaultValue = txtNome.Text;
            SqlDataSource1.SelectParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);
            SqlDataSource1.SelectParameters["IDBloco"].DefaultValue = Convert.ToString(User.Bloco);
            SqlDataSource1.SelectParameters["IDUnit"].DefaultValue = Convert.ToString(User.Apart);




            gdvMoradores.DataBind();
        }

        protected void gdvMoradores_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = gdvMoradores.SelectedRow;
            Response.Redirect("~/DetalheAssociado.aspx?id=" + row.Cells[8].Text);
        }
    }
}
