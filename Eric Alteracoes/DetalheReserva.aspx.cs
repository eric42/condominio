using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloMorador
{
    public partial class DetalheReserva : System.Web.UI.Page
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

            lblDono.Text = SqlDataSource1.SelectCommand[0].ToString();
            lblBloco.Text = SqlDataSource1.SelectCommand[1].ToString();
            lblApartamento.Text = SqlDataSource1.SelectCommand[2].ToString();
            lblNome.Text = SqlDataSource1.SelectCommand[3].ToString();
            lblData.Text = SqlDataSource1.SelectCommand[4].ToString();
            lblInicio.Text = SqlDataSource1.SelectCommand[5].ToString();
            lblFim.Text = SqlDataSource1.SelectCommand[6].ToString();
            lblEstrutura.Text = SqlDataSource1.SelectCommand[7].ToString();
            
        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectParameters["Convidado"].DefaultValue = txtPesquisar.Text;

            gdvLista.DataBind();
        }
    }
}
