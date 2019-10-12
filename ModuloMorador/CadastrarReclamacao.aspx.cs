using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloMorador
{
    public partial class CadastrarReclamacao : System.Web.UI.Page
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
                
                txtTipo.Text = SqlDataSource1.SelectCommand[0].ToString();
                txtData.Text = SqlDataSource1.SelectCommand[1].ToString();
                txtHora.Text = SqlDataSource1.SelectCommand[2].ToString();
                txtNome.Text = SqlDataSource1.SelectCommand[3].ToString();
                txtTelefone.Text = SqlDataSource1.SelectCommand[4].ToString();
                txtEmail.Text = SqlDataSource1.SelectCommand[5].ToString();
                txtDescricao.Text = SqlDataSource1.SelectCommand[6].ToString();
            }
            else
            {
                btnCadastrar.Text = "Cadastrar";

                txtTipo.Text = "";
                txtData.Text = "";
                txtHora.Text = "";
                txtNome.Text = "";
                txtTelefone.Text = "";
                txtEmail.Text = "";
                txtDescricao.Text = "";
            }
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {

            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            string ope = Request.QueryString["ope"];

            if (ope != "E")
            {
                SqlDataSource1.InsertParameters["Tipo"].DefaultValue = txtTipo.Text;
                SqlDataSource1.InsertParameters["HoraAcontecimento"].DefaultValue = txtHora.Text;
                SqlDataSource1.InsertParameters["Morador"].DefaultValue = txtNome.Text;
                SqlDataSource1.InsertParameters["Telefone"].DefaultValue = txtTelefone.Text;
                SqlDataSource1.InsertParameters["Email"].DefaultValue = txtEmail.Text;
                SqlDataSource1.InsertParameters["DataAcontecimento"].DefaultValue = txtData.Text;
                SqlDataSource1.InsertParameters["Descrico"].DefaultValue = txtDescricao.Text;
                SqlDataSource1.InsertParameters["Login"].DefaultValue = User.Login;
                SqlDataSource1.InsertParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);
                SqlDataSource1.InsertParameters["Apartamento"].DefaultValue = Convert.ToString(User.Apart);
                SqlDataSource1.InsertParameters["Bloco"].DefaultValue = Convert.ToString(User.Bloco);

                SqlDataSource1.Insert();
            }else{

                SqlDataSource1.UpdateParameters["Tipo"].DefaultValue = txtTipo.Text;
                SqlDataSource1.UpdateParameters["HoraAcontecimento"].DefaultValue = txtHora.Text;
                SqlDataSource1.UpdateParameters["Morador"].DefaultValue = txtNome.Text;
                SqlDataSource1.UpdateParameters["Telefone"].DefaultValue = txtTelefone.Text;
                SqlDataSource1.UpdateParameters["Email"].DefaultValue = txtEmail.Text;
                SqlDataSource1.UpdateParameters["DataAcontecimento"].DefaultValue = txtData.Text;
                SqlDataSource1.UpdateParameters["Descrico"].DefaultValue = txtDescricao.Text;

                SqlDataSource1.Update();
            }
        }
    }
}
