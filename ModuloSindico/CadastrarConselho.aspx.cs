using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloSindico
{
    public partial class CadastrarConselho : System.Web.UI.Page
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

                ddlApart.SelectedItem.Value = SqlDataSource1.SelectCommand[0].ToString();
                txtNome.Text = SqlDataSource1.SelectCommand[1].ToString();
                txtTelefone.Text = SqlDataSource1.SelectCommand[2].ToString();
                txtGestao.Text = SqlDataSource1.SelectCommand[3].ToString();
                txtEmail.Text = SqlDataSource1.SelectCommand[4].ToString();
                ddlBloco.SelectedItem.Value = SqlDataSource1.SelectCommand[5].ToString();
                
            }
            else
            {
                btnCadastrar.Text = "Cadastrar";

                ddlApart.SelectedItem.Value = "";
                txtNome.Text = "";
                txtTelefone.Text = "";
                txtGestao.Text = "";
                txtEmail.Text = "";
                ddlBloco.SelectedItem.Value = "";

            }
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            string ope = Request.QueryString["ope"];

              if (ope != "E")
             {

                 SqlDataSource1.InsertParameters["IDUnit"].DefaultValue = ddlApart.SelectedItem.Value;
                 SqlDataSource1.InsertParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);
                 SqlDataSource1.InsertParameters["ConsNome"].DefaultValue = txtNome.Text;
                 SqlDataSource1.InsertParameters["ConsTelefone"].DefaultValue = txtTelefone.Text;
                 SqlDataSource1.InsertParameters["ConsGestao"].DefaultValue = txtGestao.Text;
                 SqlDataSource1.InsertParameters["ConsEmail"].DefaultValue = txtEmail.Text;
                 SqlDataSource1.InsertParameters["IDBloco"].DefaultValue = ddlBloco.SelectedItem.Value;

                 SqlDataSource1.Insert();
             }
             else
             {

                 SqlDataSource1.UpdateParameters["IDUnit"].DefaultValue = ddlApart.SelectedItem.Value;
                 SqlDataSource1.UpdateParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);
                 SqlDataSource1.UpdateParameters["ConsNome"].DefaultValue = txtNome.Text;
                 SqlDataSource1.UpdateParameters["ConsTelefone"].DefaultValue = txtTelefone.Text;
                 SqlDataSource1.UpdateParameters["ConsGestao"].DefaultValue = txtGestao.Text;
                 SqlDataSource1.UpdateParameters["ConsEmail"].DefaultValue = txtEmail.Text;
                 SqlDataSource1.UpdateParameters["IDBloco"].DefaultValue = ddlBloco.SelectedItem.Value;

                 SqlDataSource1.Update();
             }
        }
    }
}
