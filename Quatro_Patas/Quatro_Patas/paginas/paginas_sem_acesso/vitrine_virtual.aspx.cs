using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Quatro_Patas.paginas.paginas_aspx
{
    public partial class vitrine_virtual : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // carregarimagem("");


        }

        /*private void carregarimagem(string tipo)
        {

            int tamanhoPagina = 5;
            int registroInicio = 0;

            if (ViewState["registroInicio"] != null)
                registroInicio = (int)ViewState["registroInicio"];

            if (tipo == "proximo")
                registroInicio += tamanhoPagina;
            else if (tipo == "anterior")
                registroInicio -= tamanhoPagina;

            if (registroInicio < 0)
                registroInicio = 0;

        
            SqlConnection con = new SqlConnection(@"Data Source=L04M03\SQLEXPRESS;Initial Catalog=Quatro_patas;Persist Security Info=True;User ID=sa;Password=aluno");
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "SELECT id_produtos, nome, imagem, vitrine  FROM NOTICIA WHERE vitrine = 'S'   ORDER BY nome ";
           
            con.Open();

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataTable dt = new DataTable();

            //Preenchendo o DataTable com a quantidade de registro que se pretende mostrar.
            da.Fill(registroInicio, tamanhoPagina, dt);

            //Tratando o fim da navegação
            if (tipo == "proximo" && dt.Rows.Count == 0 && registroInicio > 0)
            {
                registroInicio -= tamanhoPagina;
                da.Fill(registroInicio, tamanhoPagina, dt);
            }

            DataList1.DataSource = dt;
            DataList1.DataBind();
            
            con.Close();

            ViewState.Add("registroInicio", registroInicio);

        }

        protected void btnAnterior_Click(object sender, EventArgs e)
        {
        carregarimagem("anterior");
        
        }

        protected void btnProximo_Click(object sender, EventArgs e)
        {
            carregarimagem("proximo");
        
        }*/


    }
}