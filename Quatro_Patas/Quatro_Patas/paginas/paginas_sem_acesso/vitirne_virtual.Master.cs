using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;

namespace Quatro_Patas.paginas.paginas_aspx
{
    public partial class vitirne_virtual : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string strconexao = "Data Source=L04M03\\SQLEXPRESS;Initial Catalog=Quatro_patas;Persist Security Info=True;User ID=sa;Password=aluno";

        private bool sqlComando()
        {
            bool logValido = false;
            using (SqlConnection conn = new SqlConnection(strconexao))
            {
                conn.Open();
                string Sql = "Select id_funcionarios, usuario, senha from funcionarios where usuario= '" + login.UserName + "' and senha= '" + login.Password + "'";
                SqlCommand comando = new SqlCommand(Sql, conn);
                SqlDataReader r = comando.ExecuteReader();
                if (r.Read())
                {
                    logValido = true;
                    Session["idFuncionario"] = r["id_funcionarios"];
                }
                conn.Close();
            }
            return logValido;
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

            
        }

        protected void login_Authenticate(object sender, AuthenticateEventArgs e)
        {
            if (sqlComando())
            {
                e.Authenticated = true;
                FormsAuthentication.RedirectFromLoginPage(login.UserName, false);
            }
            else
            {
                e.Authenticated = false;
            }
        }
    }
}