using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloSindico
{
    public partial class CadastrarManutencoesCorretivas : System.Web.UI.Page
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

                ddlArea.SelectedItem.Value = SqlDataSource1.SelectCommand[0].ToString();
                txtDescSimples.Text = SqlDataSource1.SelectCommand[1].ToString();
                txtDtIni.Text = SqlDataSource1.SelectCommand[2].ToString();
                txtDtFim.Text = SqlDataSource1.SelectCommand[3].ToString();
                txtDescricao.Text = SqlDataSource1.SelectCommand[4].ToString();
                txtMatUti.Text = SqlDataSource1.SelectCommand[7].ToString();
                txtSolucao.Text = SqlDataSource1.SelectCommand[8].ToString();
                txtGarantia.Text = SqlDataSource1.SelectCommand[9].ToString();
            }
            else
            {
                btnCadastrar.Text = "Cadastrar";

                ddlArea.SelectedItem.Value = "";
                txtDescSimples.Text = "";
                txtDtIni.Text = "";
                txtDtFim.Text = "";
                txtDescricao.Text = "";
                txtMatUti.Text = "";
                txtSolucao.Text = "";
                txtGarantia.Text = "";
            
            }

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            string ope = Request.QueryString["ope"];

             if (ope != "E")
            {
                SqlDataSource1.InsertParameters["ManutDescSimples"].DefaultValue = txtDescSimples.Text;
                SqlDataSource1.InsertParameters["ManutDataInicio"].DefaultValue = txtDtIni.Text;
                SqlDataSource1.InsertParameters["ManutDataFim"].DefaultValue = txtDtFim.Text;
                SqlDataSource1.InsertParameters["ManutDescricao"].DefaultValue = txtDescricao.Text;
                SqlDataSource1.InsertParameters["ManutSolucao"].DefaultValue = txtSolucao.Text;
                SqlDataSource1.InsertParameters["ManutMaterialUtiliz"].DefaultValue = txtMatUti.Text;
                SqlDataSource1.InsertParameters["ManuGarantia"].DefaultValue = txtGarantia.Text;
                SqlDataSource1.InsertParameters["ManuArea"].DefaultValue = ddlArea.SelectedItem.Value;
                SqlDataSource1.InsertParameters["Login"].DefaultValue = User.Login;
                SqlDataSource1.InsertParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);

                SqlDataSource1.Insert();
            }
            else
            {
                SqlDataSource1.UpdateParameters["ManutDescSimples"].DefaultValue = txtDescSimples.Text;
                SqlDataSource1.UpdateParameters["ManutDataInicio"].DefaultValue = txtDtIni.Text;
                SqlDataSource1.UpdateParameters["ManutDataFim"].DefaultValue = txtDtFim.Text;
                SqlDataSource1.UpdateParameters["ManutDescricao"].DefaultValue = txtDescricao.Text;
                SqlDataSource1.UpdateParameters["ManutSolucao"].DefaultValue = txtSolucao.Text;
                SqlDataSource1.UpdateParameters["ManutMaterialUtiliz"].DefaultValue = txtMatUti.Text;
                SqlDataSource1.UpdateParameters["ManuGarantia"].DefaultValue = txtGarantia.Text;
                SqlDataSource1.UpdateParameters["ManuArea"].DefaultValue = ddlArea.SelectedItem.Value;
                SqlDataSource1.UpdateParameters["Login"].DefaultValue = User.Login;
                SqlDataSource1.UpdateParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);

                SqlDataSource1.Update();
            }
        }
    }
}
