using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite
{
    public partial class _sessao : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //'Session("logado") = "1"
            /*if (string.IsNullOrEmpty(Session["Conectado"].ToString()))
            {
                Response.Redirect("");
            }*/
        }
    }
}