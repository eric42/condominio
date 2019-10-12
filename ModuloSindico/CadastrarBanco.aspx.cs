using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloSindico
{
    public partial class CadastrarBanco : System.Web.UI.Page
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

                txtBanco.Text = SqlDataSource1.SelectCommand[0].ToString();
                txtAgencia.Text = SqlDataSource1.SelectCommand[1].ToString();
                txtConta.Text = SqlDataSource1.SelectCommand[2].ToString();
                txtGerente.Text = SqlDataSource1.SelectCommand[3].ToString();
                txtTelefone.Text = SqlDataSource1.SelectCommand[4].ToString();
                txtEmail.Text = SqlDataSource1.SelectCommand[5].ToString();
                txtResponsavel.Text = SqlDataSource1.SelectCommand[6].ToString();
                txtCartDeb.Text = SqlDataSource1.SelectCommand[7].ToString();
                txtCartCred.Text = SqlDataSource1.SelectCommand[8].ToString();
            }
            else
            {
                btnCadastrar.Text = "Cadastrar";

                txtBanco.Text = "";
                txtAgencia.Text = "";
                txtConta.Text = "";
                txtGerente.Text = "";
                txtTelefone.Text = "";
                txtEmail.Text = "";
                txtResponsavel.Text = "";
                txtCartDeb.Text = "";
                txtCartCred.Text = "";
            }
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {

             string ope = Request.QueryString["ope"];

             if (ope != "E")
            {
                SqlDataSource1.InsertParameters["BancoNome"].DefaultValue = txtBanco.Text;
                SqlDataSource1.InsertParameters["BancoAgencia"].DefaultValue = txtAgencia.Text;
                SqlDataSource1.InsertParameters["BancoConta"].DefaultValue = txtConta.Text;
                SqlDataSource1.InsertParameters["BancoGerente"].DefaultValue = txtGerente.Text;
                SqlDataSource1.InsertParameters["BancoTel"].DefaultValue = txtTelefone.Text;
                SqlDataSource1.InsertParameters["BancoEmail"].DefaultValue = txtEmail.Text;
                SqlDataSource1.InsertParameters["BancoResponsavel"].DefaultValue = txtResponsavel.Text;
                SqlDataSource1.InsertParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);
                SqlDataSource1.InsertParameters["BancoCartDeb"].DefaultValue = txtCartDeb.Text;
                SqlDataSource1.InsertParameters["BancoCartCre"].DefaultValue = txtCartCred.Text;

                SqlDataSource1.Insert();
            }
             else
             {
                 SqlDataSource1.UpdateParameters["BancoNome"].DefaultValue = txtBanco.Text;
                 SqlDataSource1.UpdateParameters["BancoAgencia"].DefaultValue = txtAgencia.Text;
                 SqlDataSource1.UpdateParameters["BancoConta"].DefaultValue = txtConta.Text;
                 SqlDataSource1.UpdateParameters["BancoGerente"].DefaultValue = txtGerente.Text;
                 SqlDataSource1.UpdateParameters["BancoTel"].DefaultValue = txtTelefone.Text;
                 SqlDataSource1.UpdateParameters["BancoEmail"].DefaultValue = txtEmail.Text;
                 SqlDataSource1.UpdateParameters["BancoResponsavel"].DefaultValue = txtResponsavel.Text;
                 SqlDataSource1.UpdateParameters["BancoCartDeb"].DefaultValue = txtCartDeb.Text;
                 SqlDataSource1.UpdateParameters["BancoCartCre"].DefaultValue = txtCartCred.Text;

                 SqlDataSource1.Update();
             }
        }
    }
}
