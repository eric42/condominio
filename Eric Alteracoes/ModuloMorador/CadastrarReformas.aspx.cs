using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloSindico
{
    public partial class CadastrarReformas : System.Web.UI.Page
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

                txtNome.Text = SqlDataSource1.SelectCommand[3].ToString();
                txtCpf.Text = SqlDataSource1.SelectCommand[4].ToString();
                txtEmp.Text = SqlDataSource1.SelectCommand[5].ToString();
                txtCNPJ.Text = SqlDataSource1.SelectCommand[6].ToString();
                txtCrea.Text = SqlDataSource1.SelectCommand[7].ToString();
                txtDataIni.Text = SqlDataSource1.SelectCommand[8].ToString();
                txtDescricao.Text = SqlDataSource1.SelectCommand[9].ToString();
                txtDataFim.Text = SqlDataSource1.SelectCommand[10].ToString();
            }
            else
            {
                btnCadastrar.Text = "Cadastrar";

                txtNome.Text = "";
                txtCpf.Text = "";
                txtEmp.Text = "";
                txtCNPJ.Text = "";
                txtCrea.Text = "";
                txtDataIni.Text = "";
                txtDescricao.Text = "";
                txtDataFim.Text = "";
            }
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            string ope = Request.QueryString["ope"];

             if (ope != "E")
            {
                SqlDataSource1.InsertParameters["EngenheiroNome"].DefaultValue = txtNome.Text;
                SqlDataSource1.InsertParameters["EngCpf"].DefaultValue = txtCpf.Text;
                SqlDataSource1.InsertParameters["Empresa"].DefaultValue = txtEmp.Text;
                SqlDataSource1.InsertParameters["EmpCnpj"].DefaultValue = txtCNPJ.Text;
                SqlDataSource1.InsertParameters["EngCrea"].DefaultValue = txtCrea.Text;
                SqlDataSource1.InsertParameters["DataIni"].DefaultValue = txtDataIni.Text;
                SqlDataSource1.InsertParameters["Descricao"].DefaultValue = txtDescricao.Text;
                SqlDataSource1.InsertParameters["DataFim"].DefaultValue = txtDataFim.Text;
                SqlDataSource1.InsertParameters["Login"].DefaultValue = User.Login;
                SqlDataSource1.InsertParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);
                SqlDataSource1.InsertParameters["IDBloco"].DefaultValue = Convert.ToString(User.Bloco);
                SqlDataSource1.InsertParameters["IDUnit"].DefaultValue = Convert.ToString(User.Cond);
                SqlDataSource1.InsertParameters["Aprovado"].DefaultValue = "0";
                SqlDataSource1.InsertParameters["Motivo"].DefaultValue = "Nao Verificado";

                SqlDataSource1.Insert();
            }
            else
            {
                SqlDataSource1.UpdateParameters["EngenheiroNome"].DefaultValue = txtNome.Text;
                SqlDataSource1.UpdateParameters["EngCpf"].DefaultValue = txtCpf.Text;
                SqlDataSource1.UpdateParameters["Empresa"].DefaultValue = txtEmp.Text;
                SqlDataSource1.UpdateParameters["EmpCnpj"].DefaultValue = txtCNPJ.Text;
                SqlDataSource1.UpdateParameters["EngCrea"].DefaultValue = txtCrea.Text;
                SqlDataSource1.UpdateParameters["DataIni"].DefaultValue = txtDataIni.Text;
                SqlDataSource1.UpdateParameters["Descricao"].DefaultValue = txtDescricao.Text;
                SqlDataSource1.UpdateParameters["DataFim"].DefaultValue = txtDataFim.Text;

                SqlDataSource1.Update();
            }
        }
    }
}
