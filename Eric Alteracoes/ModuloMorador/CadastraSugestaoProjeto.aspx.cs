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
    public partial class CadastraSugestaoProjeto : System.Web.UI.Page
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

            string ope = Request.QueryString["ope"];

            if (ope == "E")
            {
                Int32 id = Int32.Parse(Request.QueryString["id"]);
                btnCadastrar.Text = "Editar";

                txtProjeto.Text = SqlDataSource1.SelectCommand[0].ToString();
                txtResponsavel.Text = SqlDataSource1.SelectCommand[1].ToString();
                txtTipo.Text = SqlDataSource1.SelectCommand[2].ToString();
                txtOrcamento.Text = SqlDataSource1.SelectCommand[3].ToString();
                txtDias.Text = SqlDataSource1.SelectCommand[4].ToString();
                txtDescricao.Text = SqlDataSource1.SelectCommand[5].ToString();
            }
            else
            {
                btnCadastrar.Text = "Cadastrar";

                txtProjeto.Text = "";
                txtResponsavel.Text = "";
                txtTipo.Text = "";
                txtOrcamento.Text = "";
                txtDias.Text = "";
                txtDescricao.Text = "";
            }

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {

            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            string ope = Request.QueryString["ope"];

             if (ope != "E")
            {
                SqlDataSource1.InsertParameters["Nome"].DefaultValue = txtProjeto.Text;
                SqlDataSource1.InsertParameters["Responsavel"].DefaultValue = txtResponsavel.Text;
                SqlDataSource1.InsertParameters["Tipo"].DefaultValue = txtTipo.Text;
                SqlDataSource1.InsertParameters["Orcamento"].DefaultValue = txtOrcamento.Text;
                SqlDataSource1.InsertParameters["Periodo"].DefaultValue = txtDias.Text;
                SqlDataSource1.InsertParameters["Descricao"].DefaultValue = txtDescricao.Text;
                SqlDataSource1.InsertParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);
                SqlDataSource1.InsertParameters["Login"].DefaultValue = User.Login;

                SqlDataSource1.Insert();
            }
            else
            {
                SqlDataSource1.UpdateParameters["Nome"].DefaultValue = txtProjeto.Text;
                SqlDataSource1.UpdateParameters["Responsavel"].DefaultValue = txtResponsavel.Text;
                SqlDataSource1.UpdateParameters["Tipo"].DefaultValue = txtTipo.Text;
                SqlDataSource1.UpdateParameters["Orcamento"].DefaultValue = txtOrcamento.Text;
                SqlDataSource1.UpdateParameters["Periodo"].DefaultValue = txtDias.Text;
                SqlDataSource1.UpdateParameters["Descricao"].DefaultValue = txtDescricao.Text;

                SqlDataSource1.Update();
            }
        }
    }
}
