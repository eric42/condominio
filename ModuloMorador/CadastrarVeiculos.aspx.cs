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
    public partial class CadastrarVeiculos : System.Web.UI.Page
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

                txtTipoVeic.Text = SqlDataSource1.SelectCommand[0].ToString();
                txtPlaca.Text = SqlDataSource1.SelectCommand[1].ToString();
                txtMarca.Text = SqlDataSource1.SelectCommand[2].ToString();
                txtModelo.Text = SqlDataSource1.SelectCommand[3].ToString();
                txtCor.Text = SqlDataSource1.SelectCommand[4].ToString();
                txtAno.Text = SqlDataSource1.SelectCommand[5].ToString();
                txtGaragem.Text = SqlDataSource1.SelectCommand[6].ToString();
                txtProprietario.Text = SqlDataSource1.SelectCommand[7].ToString();
                txtObs.Text = SqlDataSource1.SelectCommand[10].ToString();
            }
            else
            {
                btnCadastrar.Text = "Cadastrar";

                txtTipoVeic.Text = "";
                txtPlaca.Text = "";
                txtMarca.Text = "";
                txtModelo.Text = "";
                txtCor.Text = "";
                txtAno.Text = "";
                txtGaragem.Text = "";
                txtProprietario.Text = "";
                txtObs.Text = "";
            }
        }
        protected void btnCadastrar_Click(object sender, EventArgs e)
        {

            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            string ope = Request.QueryString["ope"];

             if (ope != "E")
            {
                SqlDataSource1.InsertParameters["VeicTipo"].DefaultValue = txtTipoVeic.Text;
                SqlDataSource1.InsertParameters["VeicAno"].DefaultValue = txtAno.Text;
                SqlDataSource1.InsertParameters["VeicMarca"].DefaultValue = txtMarca.Text;
                SqlDataSource1.InsertParameters["VeicModelo"].DefaultValue = txtModelo.Text;
                SqlDataSource1.InsertParameters["VeicProp"].DefaultValue = txtProprietario.Text;
                SqlDataSource1.InsertParameters["VeicPlaca"].DefaultValue = txtPlaca.Text;
                SqlDataSource1.InsertParameters["VeicCor"].DefaultValue = txtCor.Text;
                SqlDataSource1.InsertParameters["VeicObs"].DefaultValue = txtObs.Text;
                SqlDataSource1.InsertParameters["VeicGaragem"].DefaultValue = txtGaragem.Text;
                SqlDataSource1.InsertParameters["Login"].DefaultValue = User.Login;
                SqlDataSource1.InsertParameters["IDUnit"].DefaultValue = Convert.ToString(User.Apart);
                SqlDataSource1.InsertParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);
                SqlDataSource1.InsertParameters["IDBloco"].DefaultValue = Convert.ToString(User.Bloco);

                SqlDataSource1.Insert();

            }
            else
            {
                SqlDataSource1.UpdateParameters["VeicTipo"].DefaultValue = txtTipoVeic.Text;
                SqlDataSource1.UpdateParameters["VeicAno"].DefaultValue = txtAno.Text;
                SqlDataSource1.UpdateParameters["VeicMarca"].DefaultValue = txtMarca.Text;
                SqlDataSource1.UpdateParameters["VeicModelo"].DefaultValue = txtModelo.Text;
                SqlDataSource1.UpdateParameters["VeicProp"].DefaultValue = txtProprietario.Text;
                SqlDataSource1.UpdateParameters["VeicPlaca"].DefaultValue = txtPlaca.Text;
                SqlDataSource1.UpdateParameters["VeicCor"].DefaultValue = txtCor.Text;
                SqlDataSource1.UpdateParameters["VeicObs"].DefaultValue = txtObs.Text;
                SqlDataSource1.UpdateParameters["VeicGaragem"].DefaultValue = txtGaragem.Text;

                SqlDataSource1.Update();
            }
        }
    }
}
