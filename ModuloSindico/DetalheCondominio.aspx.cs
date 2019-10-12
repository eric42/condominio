using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloSindico
{
    public partial class DetalheCondominio : System.Web.UI.Page
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

            lblNome.Text = SqlDataSource1.SelectCommand[0].ToString();
            lblEndereco.Text = SqlDataSource1.SelectCommand[1].ToString();
            lblNumero.Text = SqlDataSource1.SelectCommand[2].ToString();
            lblBairro.Text = SqlDataSource1.SelectCommand[3].ToString();
            lblCidade.Text = SqlDataSource1.SelectCommand[4].ToString();
            lblEstado.Text = SqlDataSource1.SelectCommand[5].ToString();
            lblCep.Text = SqlDataSource1.SelectCommand[6].ToString();
            lblMapa.Text = SqlDataSource1.SelectCommand[7].ToString();
            lblMatricula.Text = SqlDataSource1.SelectCommand[8].ToString();
            lblAdmin.Text = SqlDataSource1.SelectCommand[9].ToString();
            lblBanco.Text = SqlDataSource1.SelectCommand[10].ToString();
            lblEmail.Text = SqlDataSource1.SelectCommand[11].ToString();
            lblDescricao.Text = SqlDataSource1.SelectCommand[12].ToString();
            lblTelefone.Text = SqlDataSource1.SelectCommand[13].ToString();
            lblBlocos.Text = SqlDataSource1.SelectCommand[14].ToString();
            lblApart.Text = SqlDataSource1.SelectCommand[15].ToString();
        }
    }
}
