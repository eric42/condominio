using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloSindico
{
    public partial class CadastrarSindico : System.Web.UI.Page
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

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            SqlDataSource1.SelectParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);

            SqlDataSource4.UpdateParameters["Nome"].DefaultValue = ddlNome.SelectedItem.Value;
            SqlDataSource4.UpdateParameters["Bloco"].DefaultValue = ddlBloco.SelectedItem.Value;
            SqlDataSource4.UpdateParameters["Apart"].DefaultValue = ddlApartamento.SelectedItem.Value;

            SqlDataSource5.UpdateParameters["Nome"].DefaultValue = ddlNome0.SelectedItem.Value;
            SqlDataSource5.UpdateParameters["Bloco"].DefaultValue = ddlBloco0.SelectedItem.Value;
            SqlDataSource5.UpdateParameters["Apart"].DefaultValue = ddlApartamento0.SelectedItem.Value;

            SqlDataSource4.Update();
            SqlDataSource5.Update();
            SqlDataSource6.Update();
        }
    }
}
