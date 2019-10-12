using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace CondominioSite.ModuloMorador
{
    public partial class CadastroAnimais : System.Web.UI.Page
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
                txtTipo.Text = SqlDataSource1.SelectCommand[1].ToString();
                txtTamanho.Text = SqlDataSource1.SelectCommand[2].ToString();
                txtPeso.Text = SqlDataSource1.SelectCommand[3].ToString();
                txtRaca.Text = SqlDataSource1.SelectCommand[4].ToString();
                txtMorador.Text = SqlDataSource1.SelectCommand[5].ToString();
            }
            else
            {
                btnCadastrar.Text = "Cadastrar";

                txtNome.Text = "";
                txtTipo.Text = "";
                txtTamanho.Text = "";
                txtPeso.Text = "";
                txtRaca.Text = "";
                txtMorador.Text = "";
            }
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            string ope = Request.QueryString["ope"];

             if (ope != "E")
            {
                SqlDataSource1.InsertParameters["NomeDono"].DefaultValue = txtMorador.Text;
                SqlDataSource1.InsertParameters["AnimalNome"].DefaultValue = txtNome.Text;
                SqlDataSource1.InsertParameters["AnimalTipo"].DefaultValue = txtTipo.Text;
                SqlDataSource1.InsertParameters["AnimalRaca"].DefaultValue = txtRaca.Text;
                SqlDataSource1.InsertParameters["AnimalPeso"].DefaultValue = txtPeso.Text;
                SqlDataSource1.InsertParameters["AnimalTamanho"].DefaultValue = txtTamanho.Text;
                SqlDataSource1.InsertParameters["login"].DefaultValue = User.Login;
                SqlDataSource1.InsertParameters["IDUnit"].DefaultValue = Convert.ToString(User.Apart);
                SqlDataSource1.InsertParameters["IDBloco"].DefaultValue = Convert.ToString(User.Bloco);
                SqlDataSource1.InsertParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);

                SqlDataSource1.Insert();
            }
            else
            {
                SqlDataSource1.UpdateParameters["NomeDono"].DefaultValue = txtMorador.Text;
                SqlDataSource1.UpdateParameters["AnimalNome"].DefaultValue = txtNome.Text;
                SqlDataSource1.UpdateParameters["AnimalTipo"].DefaultValue = txtTipo.Text;
                SqlDataSource1.UpdateParameters["AnimalRaca"].DefaultValue = txtRaca.Text;
                SqlDataSource1.UpdateParameters["AnimalPeso"].DefaultValue = txtPeso.Text;
                SqlDataSource1.UpdateParameters["AnimalTamanho"].DefaultValue = txtTamanho.Text;

                SqlDataSource1.Update();
            }
        }
    }
}
