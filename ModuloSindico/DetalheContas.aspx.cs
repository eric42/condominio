using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloSindico
{
    public partial class DetalheContas : System.Web.UI.Page
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

            lblEmpresa.Text = SqlDataSource1.SelectCommand[0].ToString();
            lblNota.Text = SqlDataSource1.SelectCommand[1].ToString();
            lblDescricao.Text = SqlDataSource1.SelectCommand[2].ToString();
            lblNumero.Text = SqlDataSource1.SelectCommand[3].ToString();
            lblDataCriacao.Text = SqlDataSource1.SelectCommand[4].ToString();
            lblVencimento.Text = SqlDataSource1.SelectCommand[5].ToString();
            lblValor.Text = SqlDataSource1.SelectCommand[6].ToString();

        }
    }
}
