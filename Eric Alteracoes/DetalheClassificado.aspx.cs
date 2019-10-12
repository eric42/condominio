using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloMorador
{
    public partial class DetalheClassificado : System.Web.UI.Page
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

            lblTitulo.Text = SqlDataSource1.SelectCommand[0].ToString();
            lblFoto.Text = SqlDataSource1.SelectCommand[1].ToString();
            lblDescricao.Text = SqlDataSource1.SelectCommand[2].ToString();
            lblData.Text = SqlDataSource1.SelectCommand[3].ToString();
            lblValidade.Text = SqlDataSource1.SelectCommand[4].ToString();
            rblNegociavel.SelectedItem.Value = SqlDataSource1.SelectCommand[5].ToString();
            lblValor.Text = SqlDataSource1.SelectCommand[6].ToString();
            lblNome.Text = SqlDataSource1.SelectCommand[7].ToString();
            lblTelefone.Text = SqlDataSource1.SelectCommand[8].ToString();
            lblEmail.Text = SqlDataSource1.SelectCommand[9].ToString();
            lblCondominio.Text = SqlDataSource1.SelectCommand[10].ToString();
            lblBloco.Text = SqlDataSource1.SelectCommand[11].ToString();
            lblApartamento.Text = SqlDataSource1.SelectCommand[12].ToString();
            lblFlags.Text = SqlDataSource1.SelectCommand[13].ToString();
            
        }
    }
}
