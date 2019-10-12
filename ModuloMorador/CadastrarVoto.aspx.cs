using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloMorador
{
    public partial class CadastrarVoto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Usuarios User = new Usuarios();
            User = (Usuarios)Session["usuario"];

            if (User.Login == null)

            {
                Response.Redirect("~/login.aspx");
            }

            if (SqlDataSource4.SelectCommand[0].ToString() == "")
            {
                lblMorador.Text = SqlDataSource4.SelectCommand[1].ToString();
                lblBloco.Text = SqlDataSource4.SelectCommand[3].ToString();
                lblApartamento.Text = SqlDataSource4.SelectCommand[5].ToString();
                lblVotacao.Text = SqlDataSource4.SelectCommand[7].ToString();
                lblProjeto.Text = SqlDataSource4.SelectCommand[9].ToString();
                lblDescricao.Text = SqlDataSource4.SelectCommand[10].ToString();
                lblEncerramento.Text = SqlDataSource4.SelectCommand[11].ToString();

                rblVoto.Enabled = true;
                rblVoto.Visible = true;
                lblPerc1.Visible = false;
                lblPerc0.Visible = false;
                Label11.Visible = false;
                Label9.Visible = false;
                btnCadastrar.Visible = true;
            }
            else
            {
                lblMorador.Text = SqlDataSource3.SelectCommand[0].ToString();
                lblBloco.Text = SqlDataSource3.SelectCommand[1].ToString();
                lblApartamento.Text = SqlDataSource3.SelectCommand[2].ToString();
                lblVotacao.Text = SqlDataSource3.SelectCommand[3].ToString();
                lblProjeto.Text = SqlDataSource3.SelectCommand[4].ToString();
                lblDescricao.Text = SqlDataSource3.SelectCommand[5].ToString();
                lblEncerramento.Text = SqlDataSource3.SelectCommand[6].ToString();
                lblPerc0.Text = SqlDataSource3.SelectCommand[7].ToString();
                lblPerc1.Text = SqlDataSource2.SelectCommand[7].ToString();

                btnCadastrar.Visible = false;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["IDVotacao"].DefaultValue = SqlDataSource4.SelectParameters["IDVotacao"].DefaultValue;
            SqlDataSource1.InsertParameters["Login"].DefaultValue = SqlDataSource4.SelectParameters["Login"].DefaultValue;
            SqlDataSource1.InsertParameters["IDCond"].DefaultValue = SqlDataSource4.SelectParameters["IDCond"].DefaultValue;
            SqlDataSource1.InsertParameters["IDBloco"].DefaultValue = SqlDataSource4.SelectParameters["IDBloco"].DefaultValue;
            SqlDataSource1.InsertParameters["IDUnit"].DefaultValue = SqlDataSource4.SelectParameters["IDUnit"].DefaultValue;
            SqlDataSource1.InsertParameters["Voto"].DefaultValue = rblVoto.SelectedItem.Value;

            SqlDataSource1.Insert();

            rblVoto.Enabled = false;
            rblVoto.Visible = false;
            lblPerc1.Visible = true;
            lblPerc0.Visible = true;
            Label11.Visible = true;
            Label9.Visible = true;
            lblPerc0.Text = SqlDataSource3.SelectCommand[7].ToString();
            lblPerc1.Text = SqlDataSource2.SelectCommand[7].ToString();
            btnCadastrar.Visible = false;
        }
    }
}
