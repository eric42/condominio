using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloSindico
{
    public partial class CadastrarAssembliaOff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["IDIdeia"].DefaultValue = ddlIdeia.SelectedItem.Value;
            SqlDataSource1.InsertParameters["Projeto"].DefaultValue = txtProjeto.Text;
            SqlDataSource1.InsertParameters["Assunto"].DefaultValue = txtAssunto.Text;
            SqlDataSource1.InsertParameters["Descricao"].DefaultValue = txtDescricao.Text;
            SqlDataSource1.InsertParameters["PalavraSindico"].DefaultValue = txtSindico.Text;
            SqlDataSource1.InsertParameters["Votacao"].DefaultValue = txtVotacao.Text;
            SqlDataSource1.InsertParameters["PeriodoVotacao"].DefaultValue = txtPeriodoVotacao.Text;
            SqlDataSource1.InsertParameters["ResultadoProjeto"].DefaultValue = txtResultado.Text;

            SqlDataSource1.Insert();
        }
    }
}
