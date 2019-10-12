using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloMorador
{
    public partial class DetalheApartamento : System.Web.UI.Page
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
            String tipo = User.TipoUser;


            if (tipo == "Sindico" || tipo == "SubSindico")
            {
                btnEditar.Visible = true;
            }
            else
            {
                btnEditar.Visible = false;
            }

            lblApart.Text = SqlDataSource1.SelectCommand[0].ToString();
            lblBloco.Text = SqlDataSource1.SelectCommand[1].ToString();
            lblQtd.Text = SqlDataSource1.SelectCommand[2].ToString();
            lblGaragem.Text = SqlDataSource1.SelectCommand[3].ToString();
            lblTamanho.Text = SqlDataSource1.SelectCommand[4].ToString();
            lblPlanta.Text = SqlDataSource1.SelectCommand[5].ToString();
            rblOcupada.SelectedItem.Value = SqlDataSource1.SelectCommand[6].ToString();
            lblDescricao.Text = SqlDataSource1.SelectCommand[7].ToString();
            lblProprietario.Text = SqlDataSource1.SelectCommand[8].ToString();
            lblInquilino.Text = SqlDataSource1.SelectCommand[9].ToString();
            lblTelefone.Text = SqlDataSource1.SelectCommand[10].ToString();
            lblCelular.Text = SqlDataSource1.SelectCommand[11].ToString();
            lblObservacao.Text = SqlDataSource1.SelectCommand[12].ToString();
            
        }
    }
}
