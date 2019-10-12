using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CondominioSite
{
    public partial class login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string opt = Request.QueryString["opt"];

                if (opt == "0")
                {
                    Session.Remove("usuario");
                }

            }
        }

        protected void btnAutenticar_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MoradorCadastro"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from usuario where login =@username and senha=@password", con);
            cmd.Parameters.AddWithValue("@username", txtLogin.Text);
            cmd.Parameters.AddWithValue("@password", txtSenha.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Usuarios User = new Usuarios();
                User.ID_User = Convert.ToInt32(dt.Rows[0][0].ToString());
                User.Login = dt.Rows[0][1].ToString();
                User.User_name = dt.Rows[0][3].ToString();
                User.TipoUser = dt.Rows[0][4].ToString();
                User.Cond = Convert.ToInt32(dt.Rows[0][5].ToString());
                User.Bloco = Convert.ToInt32(dt.Rows[0][6].ToString());
                User.Apart = Convert.ToInt32(dt.Rows[0][7].ToString());
                User.Ativo = Convert.ToInt32(dt.Rows[0][8].ToString());

                Session.Add("usuario", User);
                Response.Redirect("index.aspx");


            }
            else
            {
                lblMsg.Text = "usuario ou senha invalida !!";
            }

        }
    }
}