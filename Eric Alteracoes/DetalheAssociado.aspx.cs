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
    public partial class DetakheAssociado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            if (User.Login == null)
            {
                Response.Redirect("~/login.aspx");
            }

            Int32 id = Int32.Parse(Request.QueryString["id"]);

            lblNome.Text = SqlDataSource1.SelectCommand[0].ToString();
            lblSexo.Text = SqlDataSource1.SelectCommand[1].ToString();
            lblCpf.Text = SqlDataSource1.SelectCommand[2].ToString();
            lblRg.Text = SqlDataSource1.SelectCommand[3].ToString();
            lblNascimento.Text = SqlDataSource1.SelectCommand[4].ToString();
            lblTelefone.Text = SqlDataSource1.SelectCommand[5].ToString();
            lblCelular.Text = SqlDataSource1.SelectCommand[6].ToString();
            lblEmail.Text = SqlDataSource1.SelectCommand[7].ToString();
            lblTelEmer.Text = SqlDataSource1.SelectCommand[8].ToString();
            lblContato.Text = SqlDataSource1.SelectCommand[9].ToString();
            lblEmpresa.Text = SqlDataSource1.SelectCommand[10].ToString();
            lblProfissao.Text = SqlDataSource1.SelectCommand[11].ToString();
            
        }
    }
}
