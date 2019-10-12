using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloSindico
{
    public partial class CadastrarAssembliaOff : System.Web.UI.Page
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

                ddlIdeia.SelectedItem.Value = SqlDataSource1.SelectCommand[0].ToString();
                txtAssunto.Text = SqlDataSource1.SelectCommand[1].ToString();
                txtDescricao.Text = SqlDataSource1.SelectCommand[2].ToString();
                txtSindico.Text = SqlDataSource1.SelectCommand[3].ToString();
                txtVotacao.Text = SqlDataSource1.SelectCommand[4].ToString();
                txtPeriodoVotacao.Text = SqlDataSource1.SelectCommand[5].ToString();
                txtResultado.Text = SqlDataSource1.SelectCommand[6].ToString();
            }
            else
            {
                btnCadastrar.Text = "Cadastrar";

                ddlIdeia.SelectedItem.Value = "";
                txtAssunto.Text = "";
                txtDescricao.Text = "";
                txtSindico.Text = "";
                txtVotacao.Text = "";
                txtPeriodoVotacao.Text = "";
                txtResultado.Text = "";
            }
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {           
            string ope = Request.QueryString["ope"];

            if (ope != "E")
            {
                SqlDataSource1.InsertParameters["IDIdeia"].DefaultValue = ddlIdeia.SelectedItem.Value;
                SqlDataSource1.InsertParameters["Assunto"].DefaultValue = txtAssunto.Text;
                SqlDataSource1.InsertParameters["Descricao"].DefaultValue = txtDescricao.Text;
                SqlDataSource1.InsertParameters["PalavraSindico"].DefaultValue = txtSindico.Text;
                SqlDataSource1.InsertParameters["Votacao"].DefaultValue = txtVotacao.Text;
                SqlDataSource1.InsertParameters["PeriodoVotacao"].DefaultValue = txtPeriodoVotacao.Text;
                SqlDataSource1.InsertParameters["ResultadoProjeto"].DefaultValue = txtResultado.Text;
                SqlDataSource1.InsertParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);

                SqlDataSource1.Insert();
            }
            else
            {
                SqlDataSource1.UpdateParameters["IDIdeia"].DefaultValue = ddlIdeia.SelectedItem.Value;
                SqlDataSource1.UpdateParameters["Assunto"].DefaultValue = txtAssunto.Text;
                SqlDataSource1.UpdateParameters["Descricao"].DefaultValue = txtDescricao.Text;
                SqlDataSource1.UpdateParameters["PalavraSindico"].DefaultValue = txtSindico.Text;
                SqlDataSource1.UpdateParameters["Votacao"].DefaultValue = txtVotacao.Text;
                SqlDataSource1.UpdateParameters["PeriodoVotacao"].DefaultValue = txtPeriodoVotacao.Text;
                SqlDataSource1.UpdateParameters["ResultadoProjeto"].DefaultValue = txtResultado.Text;
                SqlDataSource1.UpdateParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);

                SqlDataSource1.Update();
            }
        }
    }
}
