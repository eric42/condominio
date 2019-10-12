using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloMorador
{
    public partial class CadastrarReceita : System.Web.UI.Page
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

                txtTitulo.Text = SqlDataSource1.SelectCommand[0].ToString();
                txtFoto.Text = SqlDataSource1.SelectCommand[1].ToString();
                txtDescricao.Text = SqlDataSource1.SelectCommand[2].ToString();
                txtIngredientes.Text = SqlDataSource1.SelectCommand[3].ToString();
                txtDificuldade.Text = SqlDataSource1.SelectCommand[4].ToString();
                txtTempoPrep.Text = SqlDataSource1.SelectCommand[5].ToString();
                txtModoPrep.Text = SqlDataSource1.SelectCommand[6].ToString();
                txtRendimento.Text = SqlDataSource1.SelectCommand[7].ToString();
                txtFonte.Text = SqlDataSource1.SelectCommand[8].ToString();
                txtData.Text = SqlDataSource1.SelectCommand[9].ToString();
                txtFlag.Text = SqlDataSource1.SelectCommand[10].ToString();

            }
            else
            {
                btnCadastrar.Text = "Cadastrar";

                txtTitulo.Text = "";
                txtFoto.Text = "";
                txtDescricao.Text = "";
                txtIngredientes.Text = "";
                txtDificuldade.Text = "";
                txtTempoPrep.Text = "";
                txtModoPrep.Text = "";
                txtRendimento.Text = "";
                txtFonte.Text = "";
                txtData.Text = "";
                txtFlag.Text = "";
            }
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {

            string ope = Request.QueryString["ope"];
            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            if (ope != "E")
            {

                SqlDataSource1.InsertParameters["Login"].DefaultValue = User.User_name;
                SqlDataSource1.InsertParameters["ReceitaFlag"].DefaultValue = txtFlag.Text;
                SqlDataSource1.InsertParameters["ReceitaTItulo"].DefaultValue = txtTitulo.Text;
                SqlDataSource1.InsertParameters["ReceitaDesc"].DefaultValue = txtDescricao.Text;
                SqlDataSource1.InsertParameters["ReceitaIngrediente"].DefaultValue = txtIngredientes.Text;
                SqlDataSource1.InsertParameters["ReceitaModoPrep"].DefaultValue = txtModoPrep.Text;
                SqlDataSource1.InsertParameters["ReceitoRendimento"].DefaultValue = txtRendimento.Text;
                SqlDataSource1.InsertParameters["ReceitaFoto"].DefaultValue = txtFoto.Text;
                SqlDataSource1.InsertParameters["ReceitaDificudade"].DefaultValue = txtDificuldade.Text;
                SqlDataSource1.InsertParameters["ReceitaTempo"].DefaultValue = txtTempoPrep.Text;
                SqlDataSource1.InsertParameters["ReceitaFonte"].DefaultValue = txtFonte.Text;
                SqlDataSource1.InsertParameters["ReceitaData"].DefaultValue = txtData.Text;

                SqlDataSource1.Insert();
            }
            else
            {
                SqlDataSource1.UpdateParameters["ClassiFlag"].DefaultValue = txtFlag.Text;
                SqlDataSource1.UpdateParameters["ReceitaTItulo"].DefaultValue = txtTitulo.Text;
                SqlDataSource1.UpdateParameters["ReceitaDesc"].DefaultValue = txtDescricao.Text;
                SqlDataSource1.UpdateParameters["ReceitaIngrediente"].DefaultValue = txtIngredientes.Text;
                SqlDataSource1.UpdateParameters["ReceitaModoPrep"].DefaultValue = txtModoPrep.Text;
                SqlDataSource1.UpdateParameters["ReceitoRendimento"].DefaultValue = txtRendimento.Text;
                SqlDataSource1.UpdateParameters["ReceitaFoto"].DefaultValue = txtFoto.Text;
                SqlDataSource1.UpdateParameters["ReceitaDificudade"].DefaultValue = txtDificuldade.Text;
                SqlDataSource1.UpdateParameters["ReceitaTempo"].DefaultValue = txtTempoPrep.Text;
                SqlDataSource1.UpdateParameters["ReceitaFonte"].DefaultValue = txtFonte.Text;
                SqlDataSource1.UpdateParameters["ReceitaData"].DefaultValue = txtData.Text;

                SqlDataSource1.Update();
            }
        }
    }
}
