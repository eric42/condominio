using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloSindico
{
    public partial class CadastrarApartamentos : System.Web.UI.Page
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

                txtNum.Text = SqlDataSource1.SelectCommand[0].ToString();
                ddlBloco.SelectedItem.Value = SqlDataSource1.SelectCommand[1].ToString();
                txtQtdGaragem.Text = SqlDataSource1.SelectCommand[2].ToString();
                txtGaragem.Text = SqlDataSource1.SelectCommand[3].ToString();
                txtTamanho.Text = SqlDataSource1.SelectCommand[4].ToString();
                rblAlugada.SelectedItem.Value = SqlDataSource1.SelectCommand[5].ToString();
                txtDescricao.Text = SqlDataSource1.SelectCommand[6].ToString();
            }
            else
            {
                btnCadastrar.Text = "Cadastrar";

                txtNum.Text = "";
                ddlBloco.SelectedItem.Value = "";
                txtQtdGaragem.Text = "";
                txtGaragem.Text = "";
                txtTamanho.Text = "";
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
                SqlDataSource1.InsertParameters["UnitNumber"].DefaultValue = txtNum.Text;
                SqlDataSource1.InsertParameters["UnitGaragem"].DefaultValue = txtGaragem.Text;
                SqlDataSource1.InsertParameters["UnitNumGaragem"].DefaultValue = txtQtdGaragem.Text;
                SqlDataSource1.InsertParameters["IDBloco"].DefaultValue = ddlBloco.SelectedItem.Value;
                SqlDataSource1.InsertParameters["Tamanho"].DefaultValue = txtTamanho.Text;
                SqlDataSource1.InsertParameters["Descricao"].DefaultValue = txtDescricao.Text;
                SqlDataSource1.InsertParameters["UnitVaga"].DefaultValue = rblAlugada.SelectedItem.Value;
                SqlDataSource1.InsertParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);
                SqlDataSource1.InsertParameters["Login"].DefaultValue = User.Login;

                SqlDataSource1.Insert();
            }else{

                SqlDataSource1.UpdateParameters["UnitNumber"].DefaultValue = txtNum.Text;
                SqlDataSource1.UpdateParameters["UnitGaragem"].DefaultValue = txtGaragem.Text;
                SqlDataSource1.UpdateParameters["UnitNumGaragem"].DefaultValue = txtQtdGaragem.Text;
                SqlDataSource1.UpdateParameters["IDBloco"].DefaultValue = ddlBloco.SelectedItem.Value;
                SqlDataSource1.UpdateParameters["Tamanho"].DefaultValue = txtTamanho.Text;
                SqlDataSource1.UpdateParameters["Descricao"].DefaultValue = txtDescricao.Text;
                SqlDataSource1.UpdateParameters["UnitVaga"].DefaultValue = rblAlugada.SelectedItem.Value;

                SqlDataSource1.Update();
            }
        }

    }
}
