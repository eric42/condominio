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


namespace CondominioSite
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["usuario"] != null)
            {
                Usuarios User = new Usuarios();
                User = (Usuarios)Session["usuario"];
                lblMorador.Text = User.User_name;

            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
                Session.Abandon();
                Response.Redirect("~/login.aspx");
        }
    }
}
