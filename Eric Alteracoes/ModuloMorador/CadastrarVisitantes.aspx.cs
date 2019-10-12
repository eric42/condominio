using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloMorador
{
    public partial class CadastrarVisitantes : System.Web.UI.Page
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
                txtRg.Text = SqlDataSource1.SelectCommand[1].ToString();
                txtCpf.Text = SqlDataSource1.SelectCommand[2].ToString();
                txtTelefone.Text = SqlDataSource1.SelectCommand[3].ToString();
                txtCelular.Text = SqlDataSource1.SelectCommand[4].ToString();
                txtEmail.Text = SqlDataSource1.SelectCommand[5].ToString();
            }
            else
            {
                btnCadastrar.Text = "Cadastrar";

                txtNome.Text = "";
                txtRg.Text = "";
                txtCpf.Text = "";
                txtTelefone.Text = "";
                txtCelular.Text = "";
                txtEmail.Text = "";

            }
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            string ope = Request.QueryString["ope"];

             if (ope != "E")
            {
                SqlDataSource1.InsertParameters["VisitNome"].DefaultValue = txtNome.Text;
                SqlDataSource1.InsertParameters["VisitRg"].DefaultValue = txtRg.Text;
                SqlDataSource1.InsertParameters["VisitCpf"].DefaultValue = txtCpf.Text;
                SqlDataSource1.InsertParameters["VisitTelefone"].DefaultValue = txtTelefone.Text;
                SqlDataSource1.InsertParameters["VisitMobile"].DefaultValue = txtCelular.Text;
                SqlDataSource1.InsertParameters["VisitEmail"].DefaultValue = txtEmail.Text;
                SqlDataSource1.InsertParameters["IDBloco"].DefaultValue = Convert.ToString(User.Bloco);
                SqlDataSource1.InsertParameters["IDUnit"].DefaultValue = Convert.ToString(User.Apart);
                SqlDataSource1.InsertParameters["Login"].DefaultValue = User.Login;

                SqlDataSource1.Insert();
            }
            else
            {

                SqlDataSource1.UpdateParameters["VisitNome"].DefaultValue = txtNome.Text;
                SqlDataSource1.UpdateParameters["VisitRg"].DefaultValue = txtRg.Text;
                SqlDataSource1.UpdateParameters["VisitCpf"].DefaultValue = txtCpf.Text;
                SqlDataSource1.UpdateParameters["VisitTelefone"].DefaultValue = txtTelefone.Text;
                SqlDataSource1.UpdateParameters["VisitMobile"].DefaultValue = txtCelular.Text;
                SqlDataSource1.UpdateParameters["VisitEmail"].DefaultValue = txtEmail.Text;
            
                SqlDataSource1.Update();
            }
        }
    }
}
