using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloSindico
{
    public partial class CadastrarAssembleia : System.Web.UI.Page
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

                txtData.Text = SqlDataSource1.SelectCommand[0].ToString();
                txtLocal.Text = SqlDataSource1.SelectCommand[1].ToString();
                txtAta.Text = SqlDataSource1.SelectCommand[2].ToString();
    
            }
            else
            {
                btnCadastrar.Text = "Cadastrar";

                txtData.Text = "";
                txtLocal.Text = "";
                txtAta.Text = "";
                
            }
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {

            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            string ope = Request.QueryString["ope"];

              if (ope != "E")
             {
                 SqlDataSource1.InsertParameters["AssembleiaData"].DefaultValue = txtData.Text;
                 SqlDataSource1.InsertParameters["AssembleiaLocal"].DefaultValue = txtLocal.Text;
                 SqlDataSource1.InsertParameters["AssembleiaAta"].DefaultValue = txtAta.Text;
                 SqlDataSource1.InsertParameters["Login"].DefaultValue = User.Login;
                 SqlDataSource1.Insert();
             }
             else
             {
                 SqlDataSource1.UpdateParameters["AssembleiaData"].DefaultValue = txtData.Text;
                 SqlDataSource1.UpdateParameters["AssembleiaLocal"].DefaultValue = txtLocal.Text;
                 SqlDataSource1.UpdateParameters["AssembleiaAta"].DefaultValue = txtAta.Text;

                 SqlDataSource1.Update();
             }
        }
    }
}
