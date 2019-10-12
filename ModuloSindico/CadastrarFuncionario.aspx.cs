using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloSindico
{
    public partial class CadastrarFuncionario : System.Web.UI.Page
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
               txtCpf.Text = SqlDataSource1.SelectCommand[1].ToString();
               txtRg.Text = SqlDataSource1.SelectCommand[2].ToString();
               txtDtNasc.Text = SqlDataSource1.SelectCommand[3].ToString();
               txtCidOri.Text = SqlDataSource1.SelectCommand[4].ToString();
               txtEstOri.Text = SqlDataSource1.SelectCommand[5].ToString();
               txtCartTrab.Text = SqlDataSource1.SelectCommand[6].ToString();
               txtCartTrabExp.Text = SqlDataSource1.SelectCommand[7].ToString();
               txtCartTrabSec.Text = SqlDataSource1.SelectCommand[8].ToString();
               txtContrato.Text = SqlDataSource1.SelectCommand[9].ToString();
               txtTelefone.Text = SqlDataSource1.SelectCommand[10].ToString();
               txtCelular.Text = SqlDataSource1.SelectCommand[11].ToString();
               txtEndereco.Text = SqlDataSource1.SelectCommand[12].ToString();
               txtComplemento.Text = SqlDataSource1.SelectCommand[13].ToString();
               txtBairro.Text = SqlDataSource1.SelectCommand[14].ToString();
               txtCep.Text = SqlDataSource1.SelectCommand[15].ToString();
               txtCidade.Text = SqlDataSource1.SelectCommand[16].ToString();
               txtEstado.Text = SqlDataSource1.SelectCommand[17].ToString();
               ddlSituacao.SelectedItem.Value = SqlDataSource1.SelectCommand[18].ToString();
               txtFuncao.Text = SqlDataSource1.SelectCommand[19].ToString();
               txtServico.Text = SqlDataSource1.SelectCommand[20].ToString();
           }
           else
           {
               btnCadastrar.Text = "Cadastar";

               txtNome.Text = "";
               txtCpf.Text = "";
               txtRg.Text = "";
               txtDtNasc.Text = "";
               txtCidOri.Text = "";
               txtEstOri.Text = "";
               txtCartTrab.Text = "";
               txtCartTrabExp.Text = "";
               txtCartTrabSec.Text = "";
               txtContrato.Text = "";
               txtTelefone.Text = "";
               txtCelular.Text = "";
               txtEndereco.Text = "";
               txtComplemento.Text = "";
               txtBairro.Text = "";
               txtCep.Text = "";
               txtCidade.Text = "";
               txtEstado.Text = "";
               ddlSituacao.SelectedItem.Value = "";
               txtFuncao.Text = "";
               txtServico.Text = "";
           }
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            string ope = Request.QueryString["ope"];

             if (ope != "E")
            {
                SqlDataSource1.InsertParameters["CondFuncNome"].DefaultValue = txtNome.Text;
                SqlDataSource1.InsertParameters["CondFuncCpf"].DefaultValue = txtCpf.Text;
                SqlDataSource1.InsertParameters["CondFuncRg"].DefaultValue = txtRg.Text;
                SqlDataSource1.InsertParameters["CondFuncBirth"].DefaultValue = txtDtNasc.Text;
                SqlDataSource1.InsertParameters["CondFuncCidadeOrigem"].DefaultValue = txtCidOri.Text;
                SqlDataSource1.InsertParameters["CondFuncEstadoOrigem"].DefaultValue = txtEstOri.Text;
                SqlDataSource1.InsertParameters["CondFuncExped"].DefaultValue = txtCartTrabExp.Text;
                SqlDataSource1.InsertParameters["CondFuncCartTrab"].DefaultValue = txtCartTrab.Text;
                SqlDataSource1.InsertParameters["CondFuncCartTrabSecao"].DefaultValue = txtCartTrabSec.Text;
                SqlDataSource1.InsertParameters["CondFuncModelo"].DefaultValue = txtContrato.Text;
                SqlDataSource1.InsertParameters["CondFuncTel"].DefaultValue = txtTelefone.Text;
                SqlDataSource1.InsertParameters["CondFuncMobile"].DefaultValue = txtCelular.Text;
                SqlDataSource1.InsertParameters["CondFuncEnd"].DefaultValue = txtEndereco.Text;
                SqlDataSource1.InsertParameters["CondFuncComplem"].DefaultValue = txtComplemento.Text;
                SqlDataSource1.InsertParameters["CondFuncBairro"].DefaultValue = txtBairro.Text;
                SqlDataSource1.InsertParameters["CondFuncCep"].DefaultValue = txtCep.Text;
                SqlDataSource1.InsertParameters["CondFuncCidade"].DefaultValue = txtCidade.Text;
                SqlDataSource1.InsertParameters["CondFuncEstado"].DefaultValue = txtEstado.Text;
                SqlDataSource1.InsertParameters["CondFuncSituacao"].DefaultValue = ddlSituacao.SelectedItem.Value;
                SqlDataSource1.InsertParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);
                SqlDataSource1.InsertParameters["Funcao"].DefaultValue = txtFuncao.Text;
                SqlDataSource1.InsertParameters["Servico"].DefaultValue = txtServico.Text;

                SqlDataSource1.Insert();
            }
            else
            {
                SqlDataSource1.UpdateParameters["CondFuncNome"].DefaultValue = txtNome.Text;
                SqlDataSource1.UpdateParameters["CondFuncCpf"].DefaultValue = txtCpf.Text;
                SqlDataSource1.UpdateParameters["CondFuncRg"].DefaultValue = txtRg.Text;
                SqlDataSource1.UpdateParameters["CondFuncBirth"].DefaultValue = txtDtNasc.Text;
                SqlDataSource1.UpdateParameters["CondFuncCidadeOrigem"].DefaultValue = txtCidOri.Text;
                SqlDataSource1.UpdateParameters["CondFuncEstadoOrigem"].DefaultValue = txtEstOri.Text;
                SqlDataSource1.UpdateParameters["CondFuncExped"].DefaultValue = txtCartTrabExp.Text;
                SqlDataSource1.UpdateParameters["CondFuncCartTrab"].DefaultValue = txtCartTrab.Text;
                SqlDataSource1.UpdateParameters["CondFuncCartTrabSecao"].DefaultValue = txtCartTrabSec.Text;
                SqlDataSource1.UpdateParameters["CondFuncModelo"].DefaultValue = txtContrato.Text;
                SqlDataSource1.UpdateParameters["CondFuncTel"].DefaultValue = txtTelefone.Text;
                SqlDataSource1.UpdateParameters["CondFuncMobile"].DefaultValue = txtCelular.Text;
                SqlDataSource1.UpdateParameters["CondFuncEnd"].DefaultValue = txtEndereco.Text;
                SqlDataSource1.UpdateParameters["CondFuncComplem"].DefaultValue = txtComplemento.Text;
                SqlDataSource1.UpdateParameters["CondFuncBairro"].DefaultValue = txtBairro.Text;
                SqlDataSource1.UpdateParameters["CondFuncCep"].DefaultValue = txtCep.Text;
                SqlDataSource1.UpdateParameters["CondFuncCidade"].DefaultValue = txtCidade.Text;
                SqlDataSource1.UpdateParameters["CondFuncEstado"].DefaultValue = txtEstado.Text;
                SqlDataSource1.UpdateParameters["CondFuncSituacao"].DefaultValue = ddlSituacao.SelectedItem.Value;
                SqlDataSource1.UpdateParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);
                SqlDataSource1.UpdateParameters["Funcao"].DefaultValue = txtFuncao.Text;
                SqlDataSource1.UpdateParameters["Servico"].DefaultValue = txtServico.Text;

                SqlDataSource1.Update();
            }
        }
    }
}
