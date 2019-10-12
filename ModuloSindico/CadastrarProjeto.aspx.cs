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

namespace CondominioSite.ModuloSindico
{
    public partial class CadastrarProjeto : System.Web.UI.Page
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

                txtObra.Text = SqlDataSource1.SelectCommand[0].ToString();
                ddlEmpresa.SelectedItem.Value = SqlDataSource1.SelectCommand[1].ToString();
                txtResponsavel.Text = SqlDataSource1.SelectCommand[2].ToString();
                txtTipo.Text = SqlDataSource1.SelectCommand[3].ToString();
                txtOrcamento.Text = SqlDataSource1.SelectCommand[4].ToString();
                txtDtInicio.Text = SqlDataSource1.SelectCommand[5].ToString();
                txtPrevicao.Text = SqlDataSource1.SelectCommand[6].ToString();
                txtDetalhes.Text = SqlDataSource1.SelectCommand[7].ToString();
          }
            else
            {
                btnCadastrar.Text = "Cadastrar";

                txtObra.Text = "";
                txtResponsavel.Text = "";
                txtTipo.Text = "";
                txtOrcamento.Text = "";
                txtDtInicio.Text = "";
                txtPrevicao.Text = "";
                txtDetalhes.Text = "";
            }
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            string ope = Request.QueryString["ope"];

            if (ope != "E")

           {
               SqlDataSource1.InsertParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);
               SqlDataSource1.InsertParameters["IDEmpresa"].DefaultValue = ddlEmpresa.SelectedItem.Value;
               SqlDataSource1.InsertParameters["ProjNome"].DefaultValue = txtObra.Text;
               SqlDataSource1.InsertParameters["ProjDataIni"].DefaultValue = txtDtInicio.Text;
               SqlDataSource1.InsertParameters["ProjDataPrev"].DefaultValue = txtPrevicao.Text;
               SqlDataSource1.InsertParameters["ProjCusto"].DefaultValue = txtOrcamento.Text;
               SqlDataSource1.InsertParameters["ProjDetalhe"].DefaultValue = txtDetalhes.Text;
               SqlDataSource1.InsertParameters["ProjResponsavel"].DefaultValue = txtResponsavel.Text;
               SqlDataSource1.InsertParameters["ProjTipo"].DefaultValue = txtTipo.Text;
               SqlDataSource1.InsertParameters["Login"].DefaultValue = User.Login;

               SqlDataSource1.Insert();
           }
           else
           {
               SqlDataSource1.UpdateParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);
               SqlDataSource1.UpdateParameters["IDEmpresa"].DefaultValue = ddlEmpresa.SelectedItem.Value;
               SqlDataSource1.UpdateParameters["ProjNome"].DefaultValue = txtObra.Text;
               SqlDataSource1.UpdateParameters["ProjDataIni"].DefaultValue = txtDtInicio.Text;
               SqlDataSource1.UpdateParameters["ProjDataPrev"].DefaultValue = txtPrevicao.Text;
               SqlDataSource1.UpdateParameters["ProjCusto"].DefaultValue = txtOrcamento.Text;
               SqlDataSource1.UpdateParameters["ProjDetalhe"].DefaultValue = txtDetalhes.Text;
               SqlDataSource1.UpdateParameters["ProjResponsavel"].DefaultValue = txtResponsavel.Text;
               SqlDataSource1.UpdateParameters["ProjTipo"].DefaultValue = txtTipo.Text;
               SqlDataSource1.UpdateParameters["Login"].DefaultValue = User.Login;

               SqlDataSource1.Update();
           }
        }
    }
}
