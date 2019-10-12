using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloSindico
{
    public partial class CadastrarBlocos : System.Web.UI.Page
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
                txtNumAndar.Text = SqlDataSource1.SelectCommand[1].ToString();
                txtNumApart.Text = SqlDataSource1.SelectCommand[2].ToString();
                
            }
            else
            {
                btnCadastrar.Text = "Cadastrar";

                txtNome.Text = "";
                txtNumAndar.Text = "";
                txtNumApart.Text = "";
                
            }
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            string ope = Request.QueryString["ope"];

            if (ope != "E")
            {
                SqlDataSource1.InsertParameters["Nome"].DefaultValue = txtNome.Text;
                SqlDataSource1.InsertParameters["NumeroAndares"].DefaultValue = txtNumAndar.Text;
                SqlDataSource1.InsertParameters["QtdApartamento"].DefaultValue = txtNumApart.Text;
                SqlDataSource1.InsertParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);

                SqlDataSource1.Insert();
            }
            else
            {
                SqlDataSource1.UpdateParameters["Nome"].DefaultValue = txtNome.Text;
                SqlDataSource1.UpdateParameters["NumeroAndares"].DefaultValue = txtNumAndar.Text;
                SqlDataSource1.UpdateParameters["QtdApartamento"].DefaultValue = txtNumApart.Text;

                SqlDataSource1.Update();
            }

        }
    }
}
