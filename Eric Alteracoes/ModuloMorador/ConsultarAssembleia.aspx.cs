using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloMorador
{
    public partial class Assembleia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            SqlDataSource1.SelectParameters["AssembleiaData"].DefaultValue = txtPesquisar.Text;
            SqlDataSource1.SelectParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);

            gdvAssembleia.DataBind();
        }
    }
}
