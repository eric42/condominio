using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloMorador
{
    public partial class DetalheManutCor : System.Web.UI.Page
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
            String tipo = Session["TipoUser"].ToString();

            if (tipo == "Sindico" || tipo == "SubSindico")
            {
                btnEditar.Visible = true;
            }
            else
            {
                btnEditar.Visible = false;
            }

            lblArea.Text = SqlDataSource1.SelectCommand[0].ToString();
            lblSimples.Text = SqlDataSource1.SelectCommand[1].ToString();
            lblInicio.Text = SqlDataSource1.SelectCommand[2].ToString();
            lblFim.Text = SqlDataSource1.SelectCommand[3].ToString();
            lblDescricao.Text = SqlDataSource1.SelectCommand[4].ToString();
            lblEmpresa.Text = SqlDataSource1.SelectCommand[5].ToString();
            lblTelefone.Text = SqlDataSource1.SelectCommand[6].ToString();
            lblMateriais.Text = SqlDataSource1.SelectCommand[7].ToString();
            lblSolucao.Text = SqlDataSource1.SelectCommand[8].ToString();
            rblParcelado.SelectedItem.Value = SqlDataSource1.SelectCommand[9].ToString();
            lblQuantidade.Text = SqlDataSource1.SelectCommand[10].ToString();
            lblValorParc.Text = SqlDataSource1.SelectCommand[11].ToString();
            lblValor.Text = SqlDataSource1.SelectCommand[12].ToString();
            
        }
    }
}
