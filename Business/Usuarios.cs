using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;

namespace CondominioSite
{
    public class Usuarios
    {
        private string ConnectionString = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
        public bool Erro { get; set; }
        public string MensagemErro { get; set; }

        public Usuarios()
        {
            this.Erro = false;
            this.MensagemErro = string.Empty;
        }

        public Entities.Usuarios AutenticaUsuarios(string login, string senha)
        {
            Entities.Usuarios[] usuarios = ListaUsuarios(new Entities.Usuarios(login, senha));
            Entities.Usuarios usuario = usuarios.FirstOrDefault();

            if (usuario == null)
            {
                this.Erro = true;
                this.MensagemErro = "Usuário ou senha inválido";
            }

            return usuario;
        }

       public bool LoginCadastrado(string Login)
        {

            Entities.Usuarios[] usuarios = ListaUsuarios(new Entities.Usuarios(Login));
            Entities.Usuarios usuario = usuarios.FirstOrDefault();
             
            bool existe = usuario != null;
 
            return existe;
        }
 
        public Entities.Usuarios[] ListaUsuarios()
        {

            return ListaUsuarios(null);

        }
 
        public Entities.Usuarios[] ListaUsuarios(Entities.Usuarios usuario)
        {

            List<Entities.Usuarios> lstUsuarios = new List<Entities.Usuarios>();

            Connection connection = new Data.Connection(this.ConnectionString);
            connection.AbrirConexao();
 
            StringBuilder sqlString = new StringBuilder();
            sqlString.AppendLine("select * from usuarios");
 
            if (usuario != null)
            {
                sqlString.AppendLine("where 1 = 1");
 
                if (!string.IsNullOrEmpty(usuario.login) && usuario.login.Length > 0)
                {
                    sqlString.AppendLine("and login like '" + usuario.login.Replace("'", "''") + "'");
                }
 
                if (!string.IsNullOrEmpty(usuario.senha) && usuario.senha.Length > 0)
                {
                    sqlString.AppendLine("and senha = '" + usuario.senha + "'");
                }
            }
 
            IDataReader reader = connection.RetornaDados(sqlString.ToString());
 
            int idxNome = reader.GetOrdinal("NOME");
            int idxLogin = reader.GetOrdinal("LOGIN");
            int idxSenha = reader.GetOrdinal("SENHA");
            int idxAtivo = reader.GetOrdinal("ATIVO");
            int idxCond = reader.GetOrdinal("COND");
            int idxBloco = reader.GetOrdinal("BLOCO");
            int idxApart = reader.GetOrdinal("APART");
 
            while (reader.Read())
            {
                Entities.Usuarios _Usuario = new Entities.Usuarios();
                _Usuario.nome = reader.GetString(idxNome);
                _Usuario.cond = reader.GetInt32(idxCond);
                _Usuario.login = reader.GetString(idxLogin);
                _Usuario.senha = reader.GetString(idxSenha);
                _Usuario.ativo = reader.GetInt32(idxAtivo) == 1;
                _Usuario.bloco = reader.GetInt32(idxBloco);
                _Usuario.apart = reader.GetInt32(idxApart);



                lstUsuarios.Add(_Usuario);
            }
 
            connection.FechaConexao();
 
            return lstUsuarios.ToArray();
        }
 
        public bool SalvaUsuario(Entities.Usuarios usuario)
        {
            bool salvou = false;
 
            if (usuario != null)
            {
                Data.Connection connection = new Data.Connection(this.ConnectionString);
                connection.AbrirConexao();
 
                StringBuilder sqlString = new StringBuilder();
 
                if (usuario.login != "")
                {
                    sqlString.AppendLine("update usuario set");
                    sqlString.AppendLine("nome = '" + usuario.nome.Replace("'", "''") + "',");
\                    sqlString.AppendLine("login = '" + usuario.login.Replace("'", "''") + "',");
                    sqlString.AppendLine("ativo = " + (usuario.ativo? 1 : 0) + " ");
                    sqlString.AppendLine("where login = " + usuario.login + "");
                }
                else
                {
                    if (!LoginCadastrado(usuario.login))
                    {
                        sqlString.AppendLine("insert into usuarios(nome, login, senha, ativo)");
                        sqlString.AppendLine("values('" + usuario.nome.Replace("'", "''") + "',  '" + usuario.login.Replace("'", "''") + "', '" + usuario.senha.Replace("'", "''") + "', " + (usuario.ativo? 1 : 0) + ")");
                    }
                    else
                    {
                        this.Erro = true;
                        this.MensagemErro = "Login já está sendo utilizado.";
                    }
                }
 
                int i = connection.ExecutaComando(sqlString.ToString());
                salvou = i > 0;
 
                connection.FechaConexao();
            }
 
            return salvou;
        }
 
        public bool SalvaUsuario(string nome, string login, string senha, int cond, int bloco, int apart, bool ativo)
        {
            return SalvaUsuario(new Entities.Usuarios(nome, login, senha, senha, cond, bloco, apart,  ativo));
        }
         
        public bool ExcluiUsuario(Entities.Usuarios usuario)
        {
            bool salvou = false;
 
            if (usuario != null && usuario.login != "")
            {
                Data.Connection connection = new Data.Connection(this.ConnectionString);
                connection.AbrirConexao();
 
                StringBuilder sqlString = new StringBuilder();
                sqlString.AppendLine("delete from usuarios");
                sqlString.AppendLine("where id_usuario = " + usuario.login + "");
 
                int i = connection.ExecutaComando(sqlString.ToString());
 
                connection.FechaConexao();
            }
 
            return salvou;
        }
 
        public bool ExcluiUsuario(string login)
        {
            return ExcluiUsuario(new Entities.Usuarios(login));
        }
    }
}