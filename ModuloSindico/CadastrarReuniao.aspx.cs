using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloSindico
{
    public partial class CadastarReuniao : System.Web.UI.Page
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

                txtLocal.Text = SqlDataSource1.SelectCommand[0].ToString();
                txtData.Text = SqlDataSource1.SelectCommand[1].ToString();
                txtHora.Text = SqlDataSource1.SelectCommand[2].ToString();
                txtAssunto.Text = SqlDataSource1.SelectCommand[3].ToString();
            }
            else
            {
                btnCadastrar.Text = "Cadastrar";

                txtLocal.Text = "";
                txtData.Text = "";
                txtHora.Text = "";
                txtAssunto.Text = "";
            }
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            string ope = Request.QueryString["ope"];

             if (ope != "E")

            {
                SqlDataSource1.InsertParameters["Data"].DefaultValue = txtData.Text;
                SqlDataSource1.InsertParameters["Local"].DefaultValue = txtLocal.Text;
                SqlDataSource1.InsertParameters["Hora"].DefaultValue = txtHora.Text;
                SqlDataSource1.InsertParameters["Assunto"].DefaultValue = txtAssunto.Text;
                SqlDataSource1.InsertParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);

                SqlDataSource1.Insert();
            }
            else
            {
                SqlDataSource1.UpdateParameters["Data"].DefaultValue = txtData.Text;
                SqlDataSource1.UpdateParameters["Local"].DefaultValue = txtLocal.Text;
                SqlDataSource1.UpdateParameters["Hora"].DefaultValue = txtHora.Text;
                SqlDataSource1.UpdateParameters["Assunto"].DefaultValue = txtAssunto.Text;

                SqlDataSource1.Update();
            }
        }
    }
}
