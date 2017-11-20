using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Quatro_Patas.paginas.paginas_sem_acesso
{
    public partial class blog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ListarDados("");
            ImageMa();
        }




        protected void ListarDados(string tipo)
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
            cmd.CommandText = "SELECT imagem_1, TITULO, SUBTITULO, NOTICIA, id_noticia_promocao FROM NOTICIA  ORDER BY  ID_NOTICIA_PROMOCAO DESC ";

            con.Open();

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataTable dt = new DataTable();
            /*SqlDataReader dr = null;
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lnk.NavigateUrl = "inserir_noticia.aspx?id_noticia_promocao=" + dr["id_noticia_promocao"];
            }*/


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
            ListarDados("anterior");
            DataList1.DataBind();
            ImageMa();


        }

        protected void btnProximo_Click(object sender, EventArgs e)
        {
            ListarDados("proximo");
            DataList1.DataBind();
            ImageMa();
        }



        private void ImageMa()
        {
            SqlConnection connn = new SqlConnection(@"Data Source=L04M03\SQLEXPRESS;Initial Catalog=Quatro_patas;Persist Security Info=True;User ID=sa;Password=aluno");
            SqlCommand cmdo = connn.CreateCommand();
            cmdo.CommandText = "SELECT imagem_1, id_noticia_promocao FROM NOTICIA order by id_noticia_promocao desc";
            connn.Open();

            SqlDataReader dr = cmdo.ExecuteReader();

            // string x = this.DataList1.Controls;
            for (int i = 0; i < this.DataList1.Controls.Count; i++)
            {
                foreach (var item in this.DataList1.Controls[i].Controls)
                {
                    if (item is Image)
                    {
                        Image image = (Image)item;

                        // string imagem = "@imagem";
                        // string caminho = "~/images/Blog/";

                        if (dr.Read())
                        {
                            image.ImageUrl = "~/images/Blog/" + dr["imagem_1"].ToString();
                            //lnkEdit.NavigateUrl = "inserir_noticia.aspx?id_noticia_promocao=" + dr["id_noticia_promocao"].ToString();
                            image.Visible = true;
                        }
                    }
                }

            }
            connn.Close();
        }
    }
}
