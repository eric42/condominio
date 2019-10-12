using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;


namespace CondominioSite
{
    public class Usuarios
    {
        int _ID_User;

        public int ID_User
        {
            get { return _ID_User; }
            set { _ID_User = value; }
        }

        string _Login;

        public string Login
        {
            get { return _Login; }
            set { _Login = value; }
        }

        string _Password;

        public string Password
        {
            get { return _Password; }
            set { _Password = value; }
        }

        string _User_name;

        public string User_name
        {
            get { return _User_name; }
            set { _User_name = value; }
        }

        int _Cond;

        public int Cond
        {
            get { return _Cond; }
            set { _Cond = value; }
        }

        string _TipoUser;

        public string TipoUser
        {
            get { return _TipoUser; }
            set { _TipoUser = value; }
        }

        int _Bloco;

        public int Bloco
        {
            get { return _Bloco; }
            set { _Bloco = value; }
        }

        int _Apart;

        public int Apart
        {
            get { return _Apart; }
            set { _Apart = value; }
        }

        int _Ativo;

        public int Ativo
        {
            get { return _Ativo; }
            set { _Ativo= value; }
        }

        public static Usuarios GetUser(string IDUsuario)
        {
            Usuarios User = new Usuarios();
            string sqlstr = "select * from usuario where ID = " + IDUsuario;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CadastroMorador"].ConnectionString);
            SqlCommand comm = new SqlCommand(sqlstr, con);
            con.Open();
            SqlDataReader reader = comm.ExecuteReader();

            while (reader.Read())
            {
                User.ID_User = reader.GetInt32(0);
                User.Login = reader.GetString(1);
                User.Password = reader.GetString(2);
                User.User_name = reader.GetString(3);
                User.TipoUser = reader.GetString(4);
                User.Cond = reader.GetInt32(5);
                User.Bloco = reader.GetInt32(6);
                User.Apart = reader.GetInt32(7);
                User.Ativo = reader.GetInt32(8);
            }

            con.Close();
            con.Dispose();

            return User;
        }
    }
}