using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloSindico
{
    public partial class CadastrarPagamentos : System.Web.UI.Page
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

                txtData.Text = SqlDataSource1.SelectCommand[0].ToString();
                txtVencimento.Text = SqlDataSource1.SelectCommand[1].ToString();
                ddlTipo.SelectedItem.Value = SqlDataSource1.SelectCommand[2].ToString();
                ddlSituacao.SelectedItem.Value = SqlDataSource1.SelectCommand[3].ToString();
                ddlEmpresa.SelectedItem.Value = SqlDataSource1.SelectCommand[4].ToString();
                ddlNotaFiscal.SelectedItem.Value = SqlDataSource1.SelectCommand[5].ToString();
                txtBanco.Text = SqlDataSource1.SelectCommand[6].ToString();
                txtAgencia.Text = SqlDataSource1.SelectCommand[7].ToString();
                txtConta.Text = SqlDataSource1.SelectCommand[8].ToString();
            }
            else
            {
                btnCadastrar.Text = "Cadastrar";

                txtData.Text = "";
                txtVencimento.Text = "";
                ddlTipo.SelectedItem.Value = "";
                ddlSituacao.SelectedItem.Value = "";
                ddlEmpresa.SelectedItem.Value = "";
                ddlNotaFiscal.SelectedItem.Value = "";
                txtBanco.Text = "";
                txtAgencia.Text = "";
                txtConta.Text = "";
            }
          
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            string ope = Request.QueryString["ope"];

             if (ope != "E")
            {

                SqlDataSource1.InsertParameters["IDNotaFiscal"].DefaultValue = ddlNotaFiscal.SelectedItem.Value;
                SqlDataSource1.InsertParameters["IDEmpresa"].DefaultValue = ddlEmpresa.SelectedItem.Value;
                SqlDataSource1.InsertParameters["PagValor"].DefaultValue = txtValor.Text;
                SqlDataSource1.InsertParameters["PagDataEntrada"].DefaultValue = txtData.Text;
                SqlDataSource1.InsertParameters["PagVencimento"].DefaultValue = txtVencimento.Text;
                SqlDataSource1.InsertParameters["PagForma"].DefaultValue = ddlTipo.SelectedItem.Value;
                SqlDataSource1.InsertParameters["PagSituacao"].DefaultValue = ddlSituacao.SelectedItem.Value;
                SqlDataSource1.InsertParameters["Banco"].DefaultValue = txtBanco.Text;
                SqlDataSource1.InsertParameters["Agencia"].DefaultValue = txtAgencia.Text;
                SqlDataSource1.InsertParameters["Conta"].DefaultValue = txtConta.Text;
                SqlDataSource1.InsertParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);

                SqlDataSource1.Insert();
            }
            else
            {

                SqlDataSource1.UpdateParameters["IDNotaFiscal"].DefaultValue = ddlNotaFiscal.SelectedItem.Value;
                SqlDataSource1.UpdateParameters["IDEmpresa"].DefaultValue = ddlEmpresa.SelectedItem.Value;
                SqlDataSource1.UpdateParameters["PagValor"].DefaultValue = txtValor.Text;
                SqlDataSource1.UpdateParameters["PagDataEntrada"].DefaultValue = txtData.Text;
                SqlDataSource1.UpdateParameters["PagVencimento"].DefaultValue = txtVencimento.Text;
                SqlDataSource1.UpdateParameters["PagForma"].DefaultValue = ddlTipo.SelectedItem.Value;
                SqlDataSource1.UpdateParameters["PagSituacao"].DefaultValue = ddlSituacao.SelectedItem.Value;
                SqlDataSource1.UpdateParameters["Banco"].DefaultValue = txtBanco.Text;
                SqlDataSource1.UpdateParameters["Agencia"].DefaultValue = txtAgencia.Text;
                SqlDataSource1.UpdateParameters["Conta"].DefaultValue = txtConta.Text;
                SqlDataSource1.UpdateParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);

                SqlDataSource1.Update();
            }
        }

        protected void ddlTipo_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlTipo.SelectedItem.Value == "Deposito Bancario")
            {
                txtAgencia.Enabled = true;
                txtBanco.Enabled = true;
                txtConta.Enabled = true;
            }else{
                txtAgencia.Enabled = false;
                txtBanco.Enabled = false;
                txtConta.Enabled = false;
            }
        }
    }
}
