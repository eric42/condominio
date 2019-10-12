using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloMorador
{
    public partial class CadastrarEmpregados : System.Web.UI.Page
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
                txtCartTrab.Text = SqlDataSource1.SelectCommand[3].ToString();
                txtResidencia.Text = SqlDataSource1.SelectCommand[4].ToString();
                txtTel.Text = SqlDataSource1.SelectCommand[5].ToString();
                txtCelular.Text = SqlDataSource1.SelectCommand[6].ToString();
                ddlPeriodo.SelectedItem.Value = SqlDataSource1.SelectCommand[7].ToString();
                txtSemana.Text = SqlDataSource1.SelectCommand[8].ToString();
                txtReferencia.Text = SqlDataSource1.SelectCommand[9].ToString();
            }
            else
            {
                btnCadastrar.Text = "Cadastrar";

                txtNome.Text = "";
                txtCpf.Text = "";
                txtRg.Text = "";
                txtCartTrab.Text = "";
                txtResidencia.Text = "";
                txtTel.Text = ""; 
                txtCelular.Text = "";
                txtSemana.Text = "";
                txtReferencia.Text = "";
            }

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {

            string ope = Request.QueryString["ope"];

            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            if (ope != "E")
            {
                SqlDataSource1.InsertParameters["EmpregadoNome"].DefaultValue = txtNome.Text;
                SqlDataSource1.InsertParameters["EmpregadoPeriodo"].DefaultValue = ddlPeriodo.SelectedItem.Value;
                SqlDataSource1.InsertParameters["EmpregadoDiasSemana"].DefaultValue = txtSemana.Text;
                SqlDataSource1.InsertParameters["EmpregadoCpf"].DefaultValue = txtCpf.Text;
                SqlDataSource1.InsertParameters["EmpregadoRg"].DefaultValue = txtRg.Text;
                SqlDataSource1.InsertParameters["EmpregadoCarteiraTrab"].DefaultValue = txtCartTrab.Text;
                SqlDataSource1.InsertParameters["EmpregadoComprResi"].DefaultValue = txtResidencia.Text;
                SqlDataSource1.InsertParameters["EmpregadoTelefone"].DefaultValue = txtTel.Text;
                SqlDataSource1.InsertParameters["EmpregadoCelular"].DefaultValue = txtCelular.Text;
                SqlDataSource1.InsertParameters["EmpregadoTelefoneReferencia"].DefaultValue = txtReferencia.Text;
                SqlDataSource1.InsertParameters["EmpregadoMorador"].DefaultValue = User.User_name;
                SqlDataSource1.InsertParameters["IDUnit"].DefaultValue = Convert.ToString(User.Apart);
                SqlDataSource1.InsertParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);
                SqlDataSource1.InsertParameters["IDBloco"].DefaultValue = Convert.ToString(User.Bloco);
                SqlDataSource1.InsertParameters["Login"].DefaultValue = User.Login;

                SqlDataSource1.Insert();
            }
            else
            {
                SqlDataSource1.UpdateParameters["EmpregadoNome"].DefaultValue = txtNome.Text;
                SqlDataSource1.UpdateParameters["EmpregadoPeriodo"].DefaultValue = ddlPeriodo.SelectedItem.Value;
                SqlDataSource1.UpdateParameters["EmpregadoDiasSemana"].DefaultValue = txtSemana.Text;
                SqlDataSource1.UpdateParameters["EmpregadoCpf"].DefaultValue = txtCpf.Text;
                SqlDataSource1.UpdateParameters["EmpregadoRg"].DefaultValue = txtRg.Text;
                SqlDataSource1.UpdateParameters["EmpregadoCarteiraTrab"].DefaultValue = txtCartTrab.Text;
                SqlDataSource1.UpdateParameters["EmpregadoComprResi"].DefaultValue = txtResidencia.Text;
                SqlDataSource1.UpdateParameters["EmpregadoTelefone"].DefaultValue = txtTel.Text;
                SqlDataSource1.UpdateParameters["EmpregadoCelular"].DefaultValue = txtCelular.Text;
                SqlDataSource1.UpdateParameters["EmpregadoTelefoneReferencia"].DefaultValue = txtReferencia.Text;

                SqlDataSource1.Update();
            }
        }

    }
}
