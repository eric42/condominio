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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            if (User.Login == null)
            {
                Response.Redirect("~/login.aspx");
            }

            Int32 id = Int32.Parse(Request.QueryString["id"]);

                txtLogin.Text = SqlDataSource2.SelectCommand[0].ToString();
                txtSenha.Text = SqlDataSource2.SelectCommand[1].ToString();
                ddlApart.SelectedItem.Value = SqlDataSource2.SelectCommand[2].ToString();
                ddlBloco.SelectedItem.Value = SqlDataSource2.SelectCommand[3].ToString();
                ddlCond.SelectedItem.Value = SqlDataSource2.SelectCommand[4].ToString();
                txtEmail.Text = SqlDataSource1.SelectCommand[0].ToString();
                txtTelefone.Text = SqlDataSource1.SelectCommand[1].ToString();
                txtCelular.Text = SqlDataSource1.SelectCommand[2].ToString();
                txtNome.Text = SqlDataSource1.SelectCommand[3].ToString();
                rblSexo.SelectedItem.Value = SqlDataSource1.SelectCommand[4].ToString();
                txtdtNasc.Text = SqlDataSource1.SelectCommand[5].ToString();
                txtTelEmer.Text = SqlDataSource1.SelectCommand[6].ToString();
                txtContEmer.Text = SqlDataSource1.SelectCommand[7].ToString();
                txtProfissao.Text = SqlDataSource1.SelectCommand[8].ToString();
                txtEmpresa.Text = SqlDataSource1.SelectCommand[9].ToString();

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {

                SqlDataSource2.UpdateParameters["Login"].DefaultValue = txtLogin.Text;
                SqlDataSource2.UpdateParameters["Senha"].DefaultValue = txtSenha.Text;
                SqlDataSource2.UpdateParameters["IDCond"].DefaultValue = ddlCond.SelectedItem.Value;
                SqlDataSource2.UpdateParameters["IDBloco"].DefaultValue = ddlBloco.SelectedItem.Value;
                SqlDataSource2.UpdateParameters["IDUnit"].DefaultValue = ddlApart.SelectedItem.Value;
                SqlDataSource1.UpdateParameters["Email"].DefaultValue = txtEmail.Text;
                SqlDataSource1.UpdateParameters["Telefone"].DefaultValue = txtTelefone.Text;
                SqlDataSource1.UpdateParameters["Celular"].DefaultValue = txtCelular.Text;
                SqlDataSource1.UpdateParameters["Email"].DefaultValue = txtEmail.Text;
                SqlDataSource1.UpdateParameters["Nome"].DefaultValue = txtNome.Text;
                SqlDataSource1.UpdateParameters["Sexo"].DefaultValue = rblSexo.SelectedItem.Value;
                SqlDataSource1.UpdateParameters["dtNasc"].DefaultValue = txtdtNasc.Text;
                SqlDataSource1.UpdateParameters["MorCpf"].DefaultValue = txtCPF.Text;
                SqlDataSource1.UpdateParameters["MorRg"].DefaultValue = txtRG.Text;
                SqlDataSource1.UpdateParameters["MorProf"].DefaultValue = txtProfissao.Text;
                SqlDataSource1.UpdateParameters["MorEmpresa"].DefaultValue = txtEmpresa.Text;
                SqlDataSource1.UpdateParameters["MorTelEmer"].DefaultValue = txtTelEmer.Text;
                SqlDataSource1.UpdateParameters["MorEmerContato"].DefaultValue = txtContEmer.Text;

                SqlDataSource1.Update();
                SqlDataSource2.Update();


       }
    }
}
