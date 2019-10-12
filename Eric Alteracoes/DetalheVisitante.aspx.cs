using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloMorador
{
    public partial class DetalheVisitante : System.Web.UI.Page
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
            lblRg.Text = SqlDataSource1.SelectCommand[1].ToString();
            lblCpf.Text = SqlDataSource1.SelectCommand[2].ToString();
            lblTelefone.Text = SqlDataSource1.SelectCommand[3].ToString();
            lblCelular.Text = SqlDataSource1.SelectCommand[4].ToString();
            lblEmail.Text = SqlDataSource1.SelectCommand[5].ToString();
            lblMorador.Text = SqlDataSource1.SelectCommand[6].ToString();
            lblBloco.Text = SqlDataSource1.SelectCommand[7].ToString();
            lblApartamento.Text = SqlDataSource1.SelectCommand[8].ToString();
            lblVeiculo.Text = SqlDataSource1.SelectCommand[9].ToString();
            lblMarca.Text = SqlDataSource1.SelectCommand[10].ToString();
            lblModelo.Text = SqlDataSource1.SelectCommand[11].ToString();
            lblCor.Text = SqlDataSource1.SelectCommand[12].ToString();
            lblPlaca.Text = SqlDataSource1.SelectCommand[13].ToString();
            
        }
    }
}
