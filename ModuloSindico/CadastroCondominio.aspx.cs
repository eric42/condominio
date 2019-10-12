using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloSindico
{
    public partial class CadastroCondominio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            if (User.Login == null)
            {
                Response.Redirect("~/login.aspx");
            }
            
            string ope = Request.QueryString["ope"];

            if (ope == "E")
            {
                Int32 id = Int32.Parse(Request.QueryString["id"]);
                btnCadastrar.Text = "Editar";


                txtNome.Text = SqlDataSource1.SelectCommand[0].ToString();
                txtEndereco.Text = SqlDataSource1.SelectCommand[1].ToString();
                txtNumero.Text = SqlDataSource1.SelectCommand[2].ToString();
                txtBairro.Text = SqlDataSource1.SelectCommand[3].ToString();
                txtCidade.Text = SqlDataSource1.SelectCommand[4].ToString();
                txtEstado.Text = SqlDataSource1.SelectCommand[5].ToString();
                txtCep.Text = SqlDataSource1.SelectCommand[6].ToString();
                txtBanco.Text = SqlDataSource1.SelectCommand[7].ToString();
                txtEmail.Text = SqlDataSource1.SelectCommand[8].ToString();
                txtSindico.Text = SqlDataSource1.SelectCommand[9].ToString();
            }
            else
            {
                btnCadastrar.Text = "Cadastrar";

                txtNome.Text = "";
                txtEndereco.Text = "";
                txtNumero.Text = "";
                txtBairro.Text = "";
                txtCidade.Text = "";
                txtEstado.Text = "";
                txtCep.Text = "";
                txtBanco.Text = "";
                txtEmail.Text = "";
                txtSindico.Text = "";
            }

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            string ope = Request.QueryString["ope"];

            if (ope != "E")
            {
                SqlDataSource1.InsertParameters["CondNome"].DefaultValue = txtNome.Text;
                SqlDataSource1.InsertParameters["CondEnd"].DefaultValue = txtEndereco.Text;
                SqlDataSource1.InsertParameters["CondNumero"].DefaultValue = txtNumero.Text;
                SqlDataSource1.InsertParameters["CondBairro"].DefaultValue = txtBairro.Text;
                SqlDataSource1.InsertParameters["CondCidade"].DefaultValue = txtCidade.Text;
                SqlDataSource1.InsertParameters["CondEstado"].DefaultValue = txtEstado.Text;
                SqlDataSource1.InsertParameters["CondCep"].DefaultValue = txtCep.Text;
                SqlDataSource1.InsertParameters["CondAdministrador"].DefaultValue = txtSindico.Text;
                SqlDataSource1.InsertParameters["CondBanco"].DefaultValue = txtBanco.Text;
                SqlDataSource1.InsertParameters["CondEmail"].DefaultValue = txtEmail.Text;

                SqlDataSource1.Insert();
            }
            else
            {
                SqlDataSource1.UpdateParameters["CondNome"].DefaultValue = txtNome.Text;
                SqlDataSource1.UpdateParameters["CondEnd"].DefaultValue = txtEndereco.Text;
                SqlDataSource1.UpdateParameters["CondNumero"].DefaultValue = txtNumero.Text;
                SqlDataSource1.UpdateParameters["CondBairro"].DefaultValue = txtBairro.Text;
                SqlDataSource1.UpdateParameters["CondCidade"].DefaultValue = txtCidade.Text;
                SqlDataSource1.UpdateParameters["CondEstado"].DefaultValue = txtEstado.Text;
                SqlDataSource1.UpdateParameters["CondCep"].DefaultValue = txtCep.Text;
                SqlDataSource1.UpdateParameters["CondAdministrador"].DefaultValue = txtSindico.Text;
                SqlDataSource1.UpdateParameters["CondBanco"].DefaultValue = txtBanco.Text;
                SqlDataSource1.UpdateParameters["CondEmail"].DefaultValue = txtEmail.Text;

                SqlDataSource1.Update();
            }
        }
    }
}
