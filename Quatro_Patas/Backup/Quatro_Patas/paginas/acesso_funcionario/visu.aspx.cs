using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Quatro_Patas.paginas.acesso_funcionario
{
    public partial class visu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //pegaId(this.Request./*passar*/);
            //ImageMa();
            lblID.Text = this.Request["id_noticia_promocao"];
            if (!IsPostBack)
            {
                if (lblID.Text != "")
                {
                    pegaId(Convert.ToInt32(this.Request["id_noticia_promocao"])); // chama o seu método
                }

            }
        }

        private void pegaId(int id_noticia)
        
            {
                using (SqlConnection conn = new SqlConnection("Data Source=L04M03\\SQLEXPRESS;Initial Catalog=Quatro_patas;Persist Security Info=True;User ID=sa;Password=aluno")) //caminho do banco :))
                {
                    conn.Open();
                    SqlCommand com = new SqlCommand("Select id_noticia_promocao, titulo, subtitulo, noticia, imagem_1 from noticia where id_noticia_promocao = " + id_noticia, conn);
                    SqlDataReader dr = null;
                    dr = com.ExecuteReader();
                    if (dr.Read())
                    {
                        lblTit.Text = dr["titulo"].ToString();
                        lblSub.Text = dr["subtitulo"].ToString();
                        lblNot.Text = dr["noticia"].ToString();
                        img.ImageUrl = "~/images/Blog/" + dr["imagem_1"].ToString();
                        img.Visible = true;


                        conn.Close();
                    }

                }
    
            }

        private void ImageMa()
        {
            /* SqlConnection con = new SqlConnection(@"Data Source=L04M03\SQLEXPRESS;Initial Catalog=Quatro_patas;Persist Security Info=True;User ID=sa;Password=aluno");
             SqlCommand cmd = con.CreateCommand();
             cmd.CommandText = "SELECT imagem_1 FROM NOTICIA";
             con.Open();

             SqlDataReader dr = cmd.ExecuteReader();

              string x = this.DataList1.Controls;
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
                             image.Visible = true;
                         }
                     }
                 }

             }
             con.Close();*/
        }

    }
}