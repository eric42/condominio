using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloSindico
{
    public partial class DetalheFuncionario : System.Web.UI.Page
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
            lblCpf.Text = SqlDataSource1.SelectCommand[1].ToString();
            lblRg.Text = SqlDataSource1.SelectCommand[2].ToString();
            lblCidOri.Text = SqlDataSource1.SelectCommand[3].ToString();
            lblEstOri.Text = SqlDataSource1.SelectCommand[4].ToString();
            lblCartTrab.Text = SqlDataSource1.SelectCommand[5].ToString();
            lblSecao.Text = SqlDataSource1.SelectCommand[6].ToString();
            lblModelo.Text = SqlDataSource1.SelectCommand[7].ToString();
            lblExpedido.Text = SqlDataSource1.SelectCommand[8].ToString();
            lblNasc.Text = SqlDataSource1.SelectCommand[9].ToString();
            lblTelefone.Text = SqlDataSource1.SelectCommand[10].ToString();
            lblCelular.Text = SqlDataSource1.SelectCommand[11].ToString();
            lblEndereco.Text = SqlDataSource1.SelectCommand[12].ToString();
            lblComplemento.Text = SqlDataSource1.SelectCommand[13].ToString();
            lblBairro.Text = SqlDataSource1.SelectCommand[14].ToString();
            lblCep.Text = SqlDataSource1.SelectCommand[15].ToString();
            lblCidade.Text = SqlDataSource1.SelectCommand[16].ToString();
            lblEstado.Text = SqlDataSource1.SelectCommand[17].ToString();
            lblSituacao.Text = SqlDataSource1.SelectCommand[18].ToString();
            lblFuncao.Text = SqlDataSource1.SelectCommand[19].ToString();
            lblServico.Text = SqlDataSource1.SelectCommand[20].ToString();

        }
    }
}
