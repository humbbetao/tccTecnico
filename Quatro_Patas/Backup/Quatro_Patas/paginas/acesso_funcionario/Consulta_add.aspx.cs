using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Quatro_Patas.paginas.acesso_funcionario
{
    public partial class Consulta_add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       /* protected void Button1_Click(object sender, EventArgs e)
        {

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Pesquisar Animal", "janelaModal('pesq_animal.aspx','Pesquisar','700','900')", true);

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Pesquisar Animal", "janelaModal('pesq_Animal.aspx','Pesquisar','700','900')", true);

            string codigoAnimal = Request["codigoAnimal"];

            string sql = "SELECT ID_ANIMAL, NOME FROM ANIMAL WHERE ID_ANIMAL = " + codigoAnimal;
            using (SqlConnection conn = new SqlConnection())
            {
                conn.Open();

                SqlCommand comando = new SqlCommand(sql, conn);
                SqlDataReader dr = comando.ExecuteReader();

                if (dr.Read())
                {
                    string x = this.DetailsView1.Fields[0]. Controls["TextBox6"].ToString();
                }

                conn.Close();
            }
        }*/
        
        //lblid.text = SessionParameter("r");
  
        
    
    

    }
}