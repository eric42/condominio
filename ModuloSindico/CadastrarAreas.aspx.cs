using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloSindico
{
    public partial class CadastrarAreas : System.Web.UI.Page
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

                 txtNome.Text = SqlDataSource1.SelectCommand[0].ToString();
                 txtHorario.Text = SqlDataSource1.SelectCommand[1].ToString();
                 rblReserva.SelectedItem.Value = SqlDataSource1.SelectCommand[2].ToString();
                 txtCapacidade.Text = SqlDataSource1.SelectCommand[3].ToString();
                 txtUtensilios.Text = SqlDataSource1.SelectCommand[4].ToString();
                 txtDescricao.Text = SqlDataSource1.SelectCommand[5].ToString();
             }
             else
             {
                 btnCadastrar.Text = "Cadastrar";

                 txtNome.Text = "";
                 txtHorario.Text = "";
                 txtCapacidade.Text = "";
                 txtUtensilios.Text = "";
                 txtDescricao.Text = "";
             }
         }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            
            
            string ope = Request.QueryString["ope"];

            if (ope != "E")
            {

                SqlDataSource1.InsertParameters["Nome"].DefaultValue = txtNome.Text;
                SqlDataSource1.InsertParameters["Horario"].DefaultValue = txtHorario.Text;
                SqlDataSource1.InsertParameters["Reserva"].DefaultValue = rblReserva.SelectedItem.Value;
                SqlDataSource1.InsertParameters["Descricao"].DefaultValue = txtDescricao.Text;
                SqlDataSource1.InsertParameters["Utensilios"].DefaultValue = txtUtensilios.Text;
                SqlDataSource1.InsertParameters["Capacidade"].DefaultValue = txtCapacidade.Text;
                SqlDataSource1.InsertParameters["IDCond"].DefaultValue = Convert.ToString(User.Cond);

                SqlDataSource1.Insert();
            }
            else
            {
                SqlDataSource1.UpdateParameters["Nome"].DefaultValue = txtNome.Text;
                SqlDataSource1.UpdateParameters["Horario"].DefaultValue = txtHorario.Text;
                SqlDataSource1.UpdateParameters["Reserva"].DefaultValue = rblReserva.SelectedItem.Value;
                SqlDataSource1.UpdateParameters["Descricao"].DefaultValue = txtDescricao.Text;
                SqlDataSource1.UpdateParameters["Utensilios"].DefaultValue = txtUtensilios.Text;
                SqlDataSource1.UpdateParameters["Capacidade"].DefaultValue = txtCapacidade.Text;

                SqlDataSource1.Update();
            }
        }
    }
}
