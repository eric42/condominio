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
    public partial class TesteRicardo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlDataSource2.InsertParameters["nome"].DefaultValue = txtNome.Text;
            SqlDataSource2.InsertParameters["numero"].DefaultValue = txtNumero.Text;

            SqlDataSource2.Insert();

            GridView1.DataBind();
        }
    }
}
