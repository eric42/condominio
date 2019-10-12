using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite.ModuloMorador
{
    public partial class DetalheArea : System.Web.UI.Page
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

            lblNome.Text = SqlDataSource1.SelectCommand[0].ToString();
            lblHorario.Text = SqlDataSource1.SelectCommand[1].ToString();
            rblReserva.SelectedItem.Value = SqlDataSource1.SelectCommand[2].ToString();
            lblCapacidade.Text = SqlDataSource1.SelectCommand[3].ToString();
            lsbUtencilios.Text = SqlDataSource1.SelectCommand[4].ToString();
            lblDescricao.Text = SqlDataSource1.SelectCommand[5].ToString();
            
        }
    }
}
