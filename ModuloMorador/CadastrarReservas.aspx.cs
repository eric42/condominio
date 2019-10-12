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
    public partial class CadastrarReservas : System.Web.UI.Page
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
                txtDiaReserva.Text = SqlDataSource1.SelectCommand[1].ToString();
                txtInicio.Text = SqlDataSource1.SelectCommand[2].ToString();
                txtFim.Text = SqlDataSource1.SelectCommand[3].ToString();
                ddlArea.SelectedItem.Value = SqlDataSource1.SelectCommand[4].ToString();
            }
            else
            {
                btnCadastrar.Text = "Cadastrar";

                txtNome.Text = "";
                txtDiaReserva.Text = "";
                txtInicio.Text = "";
                txtFim.Text = "";
                ddlArea.SelectedItem.Value = "";
            }
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {

            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];
            string ope = Request.QueryString["ope"];

             if (ope != "E")
            {
                SqlDataSource1.InsertParameters["IDEstrutura"].DefaultValue = ddlArea.SelectedItem.Value;
                SqlDataSource1.InsertParameters["DataReserva"].DefaultValue = txtDiaReserva.Text;
                SqlDataSource1.InsertParameters["HoraIni"].DefaultValue = txtInicio.Text;
                SqlDataSource1.InsertParameters["HoraFim"].DefaultValue = txtFim.Text;
                SqlDataSource1.InsertParameters["NomeFesta"].DefaultValue = txtNome.Text;
                SqlDataSource1.InsertParameters["IDUnit"].DefaultValue = Convert.ToString(User.Apart);
                SqlDataSource1.InsertParameters["Login"].DefaultValue = User.Login;
                SqlDataSource1.InsertParameters["DonoFesta"].DefaultValue = User.User_name;
                SqlDataSource1.InsertParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);
                SqlDataSource1.InsertParameters["IDBloco"].DefaultValue = Convert.ToString(User.Bloco);

                SqlDataSource1.Insert();
            }
            else
            {
                SqlDataSource1.UpdateParameters["IDEstrutura"].DefaultValue = ddlArea.SelectedItem.Value;
                SqlDataSource1.UpdateParameters["DataReserva"].DefaultValue = txtDiaReserva.Text;
                SqlDataSource1.UpdateParameters["HoraIni"].DefaultValue = txtInicio.Text;
                SqlDataSource1.UpdateParameters["HoraFim"].DefaultValue = txtFim.Text;
                SqlDataSource1.UpdateParameters["NomeFesta"].DefaultValue = txtNome.Text;

                SqlDataSource1.Update();
            }
        }
    }
}
