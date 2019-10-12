using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloSindico
{
    public partial class CadastrarEmpresa : System.Web.UI.Page
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
                txtNomeFant.Text = SqlDataSource1.SelectCommand[1].ToString();
                txtResponsavel.Text = SqlDataSource1.SelectCommand[2].ToString();
                txtTelefone.Text = SqlDataSource1.SelectCommand[3].ToString();
                txtCelular.Text = SqlDataSource1.SelectCommand[4].ToString();
                txtEmail.Text = SqlDataSource1.SelectCommand[5].ToString();
                txtCnpj.Text = SqlDataSource1.SelectCommand[6].ToString();
                txtEndereco.Text = SqlDataSource1.SelectCommand[7].ToString();
                txtComplemento.Text = SqlDataSource1.SelectCommand[8].ToString();
                txtBairro.Text = SqlDataSource1.SelectCommand[9].ToString();
                txtCep.Text = SqlDataSource1.SelectCommand[10].ToString();
                txtEstado.Text = SqlDataSource1.SelectCommand[11].ToString();
                txtCidade.Text = SqlDataSource1.SelectCommand[12].ToString();
                txtInsEstadual.Text = SqlDataSource1.SelectCommand[13].ToString();
                txtInsMunic.Text = SqlDataSource1.SelectCommand[14].ToString();
            }
            else
            {
                btnCadastrar.Text = "Cadastar";

                txtNome.Text = "";
                txtNomeFant.Text = "";
                txtResponsavel.Text = "";
                txtTelefone.Text = "";
                txtCelular.Text = "";
                txtEmail.Text = "";
                txtCnpj.Text = "";
                txtEndereco.Text = "";
                txtComplemento.Text = "";
                txtBairro.Text = "";
                txtCep.Text = "";
                txtEstado.Text = "";
                txtCidade.Text = "";
                txtInsEstadual.Text = "";
                txtInsMunic.Text = "";
            }
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {

            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            string ope = Request.QueryString["ope"];

             if (ope != "E")

            {
                SqlDataSource1.InsertParameters["EmpNome"].DefaultValue = txtNome.Text;
                SqlDataSource1.InsertParameters["EmpNomeFant"].DefaultValue = txtNomeFant.Text;
                SqlDataSource1.InsertParameters["EmpResp"].DefaultValue = txtResponsavel.Text;
                SqlDataSource1.InsertParameters["EmpTel"].DefaultValue = txtTelefone.Text;
                SqlDataSource1.InsertParameters["EmpMobile"].DefaultValue = txtCelular.Text;
                SqlDataSource1.InsertParameters["EmpEmail"].DefaultValue = txtEmail.Text;
                SqlDataSource1.InsertParameters["EmpCnpjCpf"].DefaultValue = txtCnpj.Text;
                SqlDataSource1.InsertParameters["EmpEnd"].DefaultValue = txtEndereco.Text;
                SqlDataSource1.InsertParameters["EmpComp"].DefaultValue = txtComplemento.Text;
                SqlDataSource1.InsertParameters["EmpBairro"].DefaultValue = txtBairro.Text;
                SqlDataSource1.InsertParameters["EmpCep"].DefaultValue = txtCep.Text;
                SqlDataSource1.InsertParameters["EmpEstado"].DefaultValue = txtEstado.Text;
                SqlDataSource1.InsertParameters["EmpCidade"].DefaultValue = txtCidade.Text;
                SqlDataSource1.InsertParameters["EmpInscEst"].DefaultValue = txtInsEstadual.Text;
                SqlDataSource1.InsertParameters["EmpInscMunicipal"].DefaultValue = txtInsMunic.Text;
                SqlDataSource1.InsertParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);

                SqlDataSource1.Insert();
            }
            else
            {
                SqlDataSource1.UpdateParameters["EmpNome"].DefaultValue = txtNome.Text;
                SqlDataSource1.UpdateParameters["EmpNomeFant"].DefaultValue = txtNomeFant.Text;
                SqlDataSource1.UpdateParameters["EmpResp"].DefaultValue = txtResponsavel.Text;
                SqlDataSource1.UpdateParameters["EmpTel"].DefaultValue = txtTelefone.Text;
                SqlDataSource1.UpdateParameters["EmpMobile"].DefaultValue = txtCelular.Text;
                SqlDataSource1.UpdateParameters["EmpEmail"].DefaultValue = txtEmail.Text;
                SqlDataSource1.UpdateParameters["EmpCnpjCpf"].DefaultValue = txtCnpj.Text;
                SqlDataSource1.UpdateParameters["EmpEnd"].DefaultValue = txtEndereco.Text;
                SqlDataSource1.UpdateParameters["EmpComp"].DefaultValue = txtComplemento.Text;
                SqlDataSource1.UpdateParameters["EmpBairro"].DefaultValue = txtBairro.Text;
                SqlDataSource1.UpdateParameters["EmpCep"].DefaultValue = txtCep.Text;
                SqlDataSource1.UpdateParameters["EmpEstado"].DefaultValue = txtEstado.Text;
                SqlDataSource1.UpdateParameters["EmpCidade"].DefaultValue = txtCidade.Text;
                SqlDataSource1.UpdateParameters["EmpInscEst"].DefaultValue = txtInsEstadual.Text;
                SqlDataSource1.UpdateParameters["EmpInscMunicipal"].DefaultValue = txtInsMunic.Text;

                SqlDataSource1.Insert();
            }
        }
    }
}
