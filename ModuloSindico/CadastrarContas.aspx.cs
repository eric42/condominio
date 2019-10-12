using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloSindico
{
    public partial class CadastrarContas : System.Web.UI.Page
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

                ddlEmpresa.SelectedItem.Value = SqlDataSource1.SelectCommand[0].ToString();
                ddlNf.SelectedItem.Value = SqlDataSource1.SelectCommand[1].ToString();
                txtDescricao.Text = SqlDataSource1.SelectCommand[2].ToString();
                txtBoleto.Text = SqlDataSource1.SelectCommand[3].ToString();
                txtRecebimento.Text = SqlDataSource1.SelectCommand[4].ToString();
                txtVencimento.Text = SqlDataSource1.SelectCommand[5].ToString();
                txtValor.Text = SqlDataSource1.SelectCommand[6].ToString();
            }
            else
            {
                btnCadastrar.Text = "Cadastrar";

                ddlEmpresa.SelectedItem.Value = "";
                ddlNf.SelectedItem.Value = "";
                txtDescricao.Text = "";
                txtBoleto.Text = "";
                txtRecebimento.Text = "";
                txtVencimento.Text = "";
                txtValor.Text = "";

            }
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            string ope = Request.QueryString["ope"];

             if (ope != "E")
            {
                SqlDataSource1.InsertParameters["EmpresaNome"].DefaultValue = ddlEmpresa.SelectedItem.Value;
                SqlDataSource1.InsertParameters["NumeroNf"].DefaultValue = ddlNf.SelectedItem.Value;
                SqlDataSource1.InsertParameters["CtaDescricao"].DefaultValue = txtDescricao.Text;
                SqlDataSource1.InsertParameters["CtaBoletoNumero"].DefaultValue = txtBoleto.Text;
                SqlDataSource1.InsertParameters["CtaDtBoleto"].DefaultValue = txtRecebimento.Text;
                SqlDataSource1.InsertParameters["CtaVencimentoBoleto"].DefaultValue = txtVencimento.Text;
                SqlDataSource1.InsertParameters["CtaValor"].DefaultValue = txtValor.Text;
                SqlDataSource1.InsertParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);

                SqlDataSource1.Insert();
            }
            else
            {
                SqlDataSource1.UpdateParameters["EmpresaNome"].DefaultValue = ddlEmpresa.SelectedItem.Value;
                SqlDataSource1.UpdateParameters["NumeroNf"].DefaultValue = ddlNf.SelectedItem.Value;
                SqlDataSource1.UpdateParameters["CtaDescricao"].DefaultValue = txtDescricao.Text;
                SqlDataSource1.UpdateParameters["CtaBoletoNumero"].DefaultValue = txtBoleto.Text;
                SqlDataSource1.UpdateParameters["CtaDtBoleto"].DefaultValue = txtRecebimento.Text;
                SqlDataSource1.UpdateParameters["CtaVencimentoBoleto"].DefaultValue = txtVencimento.Text;
                SqlDataSource1.UpdateParameters["CtaValor"].DefaultValue = txtValor.Text;
                SqlDataSource1.UpdateParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);

                SqlDataSource1.Update();

            }
        }
    }
}
