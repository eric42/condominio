using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace CondominioSite.ModuloMorador
{
    public partial class CadastrarMorador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {

            CadastrarUser();
            CadastrarMoradores();

            Response.Redirect("~/Login.aspx");

        }

        void CadastrarUser()
        {
            
            string password = txtSenha.Text;

            SqlDataSource2.InsertParameters["Login"].DefaultValue = txtLogin.Text;
            SqlDataSource2.InsertParameters["Senha"].DefaultValue = password;
            SqlDataSource2.InsertParameters["Cond"].DefaultValue = ddlCond.SelectedValue;
            SqlDataSource2.InsertParameters["Bloco"].DefaultValue = ddlBloco.SelectedValue;
            SqlDataSource2.InsertParameters["Apart"].DefaultValue = ddlApart.SelectedValue;
            SqlDataSource2.InsertParameters["Nome"].DefaultValue = txtNome.Text;

            SqlDataSource2.Insert();

        }


        void CadastrarMoradores()
        {

            //string Nasc = cldNasc.SelectedDate.ToString();

            SqlDataSource1.InsertParameters["Login"].DefaultValue = txtLogin.Text;
            SqlDataSource1.InsertParameters["Tel"].DefaultValue = txtTelefone.Text.ToString();
            SqlDataSource1.InsertParameters["Mobile"].DefaultValue = txtCelular.Text.ToString();
            SqlDataSource1.InsertParameters["Email"].DefaultValue = txtEmail.Text;
            SqlDataSource1.InsertParameters["Nome"].DefaultValue = txtNome.Text;
            SqlDataSource1.InsertParameters["Sexo"].DefaultValue = rblSexo.SelectedItem.Value;
            //SqlDataSource1.InsertParameters["Birth"].DefaultValue = Nasc;
            SqlDataSource1.InsertParameters["Cpf"].DefaultValue = txtCPF.Text;
            SqlDataSource1.InsertParameters["Rg"].DefaultValue = txtRG.Text;
            SqlDataSource1.InsertParameters["Prof"].DefaultValue = txtProfissao.Text;
            SqlDataSource1.InsertParameters["Emp"].DefaultValue = txtEmpresa.Text;
            SqlDataSource1.InsertParameters["TelEmer"].DefaultValue = txtTelEmer.Text.ToString();
            SqlDataSource1.InsertParameters["Contato"].DefaultValue = txtContEmer.Text;

            SqlDataSource1.Insert();
        }
    }
}
