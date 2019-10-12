using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloSindico
{
    public partial class CadastrarManutencoes : System.Web.UI.Page
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

                txtDataFinal.Text = SqlDataSource1.SelectCommand[0].ToString();
                txtDescricao.Text = SqlDataSource1.SelectCommand[1].ToString();
                txtPeriodo.Text = SqlDataSource1.SelectCommand[2].ToString();
                txtItem.Text = SqlDataSource1.SelectCommand[3].ToString();
                txtForma.Text = SqlDataSource1.SelectCommand[4].ToString();
                txtEstadoItem.Text = SqlDataSource1.SelectCommand[5].ToString();
                txtDiaTroca.Text = SqlDataSource1.SelectCommand[6].ToString();
                txtTroca.Text = SqlDataSource1.SelectCommand[7].ToString();
                txtMaterial.Text = SqlDataSource1.SelectCommand[8].ToString();
                txtProxima.Text = SqlDataSource1.SelectCommand[9].ToString();
                txtRelatorio.Text = SqlDataSource1.SelectCommand[10].ToString();
                ddlArea.SelectedItem.Value = SqlDataSource1.SelectCommand[11].ToString();

            }
            else
            {
                btnCadastrar.Text = "Cadastrar";

                txtDataFinal.Text = "";
                txtDescricao.Text = "";
                txtPeriodo.Text = "";
                txtItem.Text = "";
                txtForma.Text = "";
                txtEstadoItem.Text = "";
                txtDiaTroca.Text = "";
                txtTroca.Text = "";
                txtMaterial.Text = "";
                txtProxima.Text = "";
                txtRelatorio.Text = "";
                ddlArea.SelectedItem.Value = "";
            }
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            string ope = Request.QueryString["ope"];

             if (ope != "E")
            {

                SqlDataSource1.InsertParameters["ManutPrevDesc"].DefaultValue = txtDescricao.Text;
                SqlDataSource1.InsertParameters["ManutPrevData"].DefaultValue = txtDataFinal.Text;
                SqlDataSource1.InsertParameters["ManutPrevPeriodo"].DefaultValue = txtPeriodo.Text;
                SqlDataSource1.InsertParameters["ManutPrevItemVerif"].DefaultValue = txtItem.Text;
                SqlDataSource1.InsertParameters["ManutPrevFormaVerif"].DefaultValue = txtForma.Text;
                SqlDataSource1.InsertParameters["ManutPrevEstado"].DefaultValue = txtEstadoItem.Text;
                SqlDataSource1.InsertParameters["ManutPrevTroca"].DefaultValue = txtTroca.Text;
                SqlDataSource1.InsertParameters["ManutPrevDtAgendaTroca"].DefaultValue = txtDiaTroca.Text;
                SqlDataSource1.InsertParameters["ManutPrevRelatorio"].DefaultValue = txtRelatorio.Text;
                SqlDataSource1.InsertParameters["MantPrevMaterialUtiliz"].DefaultValue = txtMaterial.Text;
                SqlDataSource1.InsertParameters["ManutPrevEstrutura"].DefaultValue = ddlArea.SelectedItem.Value;
                SqlDataSource1.InsertParameters["ManutPreveProx"].DefaultValue = txtProxima.Text;
                SqlDataSource1.InsertParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);

                SqlDataSource1.Insert();
            }
            else
            {

                SqlDataSource1.UpdateParameters["ManutPrevDesc"].DefaultValue = txtDescricao.Text;
                SqlDataSource1.UpdateParameters["ManutPrevData"].DefaultValue = txtDataFinal.Text;
                SqlDataSource1.UpdateParameters["ManutPrevPeriodo"].DefaultValue = txtPeriodo.Text;
                SqlDataSource1.UpdateParameters["ManutPrevItemVerif"].DefaultValue = txtItem.Text;
                SqlDataSource1.UpdateParameters["ManutPrevFormaVerif"].DefaultValue = txtForma.Text;
                SqlDataSource1.UpdateParameters["ManutPrevEstado"].DefaultValue = txtEstadoItem.Text;
                SqlDataSource1.UpdateParameters["ManutPrevTroca"].DefaultValue = txtTroca.Text;
                SqlDataSource1.UpdateParameters["ManutPrevDtAgendaTroca"].DefaultValue = txtDiaTroca.Text;
                SqlDataSource1.UpdateParameters["ManutPrevRelatorio"].DefaultValue = txtRelatorio.Text;
                SqlDataSource1.UpdateParameters["MantPrevMaterialUtiliz"].DefaultValue = txtMaterial.Text;
                SqlDataSource1.UpdateParameters["ManutPrevEstrutura"].DefaultValue = ddlArea.SelectedItem.Value;
                SqlDataSource1.UpdateParameters["ManutPreveProx"].DefaultValue = txtProxima.Text;
                SqlDataSource1.UpdateParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);

                SqlDataSource1.Update();
            }
        }
    }
}
