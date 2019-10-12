using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloSindico
{
    public partial class CadastrarVotacao : System.Web.UI.Page
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

            SqlDataSource1.InsertParameters["IDProjetos"].DefaultValue = ddlProjeto.SelectedItem.Value;
            SqlDataSource1.InsertParameters["Situacao"].DefaultValue = ddlSituacao.SelectedItem.Value;
            SqlDataSource1.InsertParameters["Periodo"].DefaultValue = txtEncerramento.Text;
            SqlDataSource1.InsertParameters["DataAssembleia"].DefaultValue = txtDiaAssembleia.Text;
            SqlDataSource1.InsertParameters["Nome"].DefaultValue = txtNome.Text;
            SqlDataSource1.InsertParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);

            SqlDataSource1.Insert();
        }
    }
}
