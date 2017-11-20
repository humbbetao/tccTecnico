using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Quatro_Patas.paginas.acesso_funcionario
{
    public partial class inserir_noticia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblId.Text = this.Request["id_noticia_promocao"];
            if (!IsPostBack)
            {
                if (lblId.Text != "")
                {
                    carregaUmaNoticia(Convert.ToInt32(this.Request["id_noticia_promocao"])); // chama o seu método
                }

            }
        }


        protected void btnSalv_Click(object sender, EventArgs e)
        {
            if (lblId.Text == "")
            {
                if (txtTit.Text != "" && txtNot.Text != "" && txtSub.Text != "" && flpImg.FileName != "")
                {
                    inserirNoticia();
                }
                else
                {
                    lblFin.Text = "Por favor preencha os campos corretamente";
                }
            }
            else
            {
                atualizar(Convert.ToInt32(this.Request["id_noticia_promocao"]));
            }
        }

        private void carregaUmaNoticia(int id_noticia)
        {
            using (SqlConnection conn = new SqlConnection("Data Source=L04M03\\SQLEXPRESS;Initial Catalog=Quatro_patas;Persist Security Info=True;User ID=sa;Password=aluno")) //caminho do banco :))
            {
                conn.Open();
                SqlCommand com = new SqlCommand("Select id_noticia_promocao, titulo, subtitulo, noticia, imagem_1 from noticia where id_noticia_promocao = " + id_noticia, conn);
                SqlDataReader dr = null;
                dr = com.ExecuteReader();
                if (dr.Read())
                {
                    txtTit.Text = dr["titulo"].ToString();
                    txtSub.Text = dr["subtitulo"].ToString();
                    txtNot.Text = dr["noticia"].ToString();
                    txtNome.Text = dr["imagem_1"].ToString();


                    conn.Close();
                }

            }
        }


        string fotogeral = "";

        private void deletar(int id_noticia)
        {

            using (SqlConnection conn = new SqlConnection(@"Data Source=L04M03\\SQLEXPRESS;Initial Catalog=Quatro_patas;Persist Security Info=True;User ID=sa;Password=aluno")) //caminho do banco :)
            {
                conn.Open(); //abre a conexão com o banco (:

                // string sql = 
                SqlCommand comando = new SqlCommand("Delete  from noticia  where id_Noticia_promocao=" + id_noticia, conn); //instrução , conn :S
                comando.ExecuteNonQuery(); //deleta no banco de dados
                conn.Close(); //fecha a conexão .. aaahvá --'
            }
            lblFin.Text = "Noticia excluída com sucesso!";

        }

        protected void btnExc_Click(object sender, EventArgs e)
        {
            deletar(Convert.ToInt32(this.Request["id_noticia_promocao"]));
        }



        public void inserirNoticia()
        {

            if (flpImg.PostedFile.ContentLength > 0)
            {
                string strExtensao = flpImg.PostedFile.FileName.Substring(flpImg.PostedFile.FileName.Length - 3).ToLower();

                if ((strExtensao == "gif") || (strExtensao == "GIF") || (strExtensao == "jpg") || (strExtensao == "JPG") || (strExtensao == "png") || (strExtensao == "PNG"))
                {
                    if ((strExtensao == "gif") || (strExtensao == "GIF"))
                    {
                        string Foto = "";

                        if (txtNome.Text == "")
                        {

                            Foto = flpImg.FileName;
                        }
                        else
                        {
                            Foto = txtNome.Text + ".gif";
                        }


                        using (SqlConnection conn = new SqlConnection("Data Source=L04M03\\SQLEXPRESS;Initial Catalog=Quatro_patas;Persist Security Info=True;User ID=sa;Password=aluno")) //caminho do banco :)
                        {
                            conn.Open(); //abre a conexão com o banco (:

                            SqlCommand comando = new SqlCommand("Select id_noticia_promocao, imagem_1 from noticia where imagem_1 =" + Foto, conn);
                            SqlDataReader dr = null;
                            if (!dr.Read())
                            {
                                string strSQLBlog = "Insert into noticia(id_noticia_promocao, titulo, subtitulo, noticia, imagem_1, funcionarios_id_funcionarios) values (@idnoticia, @titulo, @subtitulo, @noticia, @imagem, @idfuncionarios) SET @id = SCOPE_IDENTITY()";

                                SqlCommand cmdBlog = new SqlCommand(strSQLBlog);
                                cmdBlog.Parameters.AddWithValue("@titulo", Convert.ToString(txtTit.Text));
                                cmdBlog.Parameters.AddWithValue("@subitulo", Convert.ToString(txtSub.Text));
                                cmdBlog.Parameters.AddWithValue("@noticia", Convert.ToString(txtNot.Text));
                                cmdBlog.Parameters.AddWithValue("@imagem", Convert.ToString(Foto));
                                cmdBlog.Parameters.AddWithValue("@id", 0).Direction = ParameterDirection.Output;
                                cmdBlog.Parameters.AddWithValue("@idfuncionarios", Convert.ToInt32("9"));

                                SqlCommand Acesso = new SqlCommand();
                                Acesso.ExecuteNonQuery();
                                lblId.Text = Convert.ToString(cmdBlog.Parameters["@id"].Value);
                                flpImg.PostedFile.SaveAs(@"E:/TCC/Quatro_Patas/Quatro_Patas/images/Blog/" + Foto);
                                lblFin.Text = "Notícia inserida com sucesso";
                                int id = Convert.ToInt32(lblId.Text);
                                //lnklink.NavigateUrl = ("visu.aspx?id_Noticia_promocao=" + id);

                                conn.Close();
                            }
                            else
                            {
                                lblFin.Text = "Existe uma foto com esse nome, por favor renomei-a";
                            }
                        }
                    }





                    else if ((strExtensao == "jpg") || (strExtensao == "JPG"))
                    {
                        string Foto = "";
                        if (txtNome.Text == "")
                        {

                            Foto = flpImg.FileName;
                        }
                        else
                        {
                            Foto = txtNome.Text + ".jpg";
                        }


                        using (SqlConnection conn = new SqlConnection("Data Source=L04M03\\SQLEXPRESS;Initial Catalog=Quatro_patas;Persist Security Info=True;User ID=sa;Password=aluno")) //caminho do banco :)
                        {
                            conn.Open(); //abre a conexão com o banco (:

                            SqlCommand comando = new SqlCommand("Select id_noticia_promocao, imagem_1 from noticia where imagem_1 =" + Foto, conn);
                            SqlDataReader dr = null;
                            if (!dr.Read())
                            {
                                string strSQLBlog = "Insert into noticia(id_noticia_promocao, titulo, subtitulo, noticia, imagem_1, funcionarios_id_funcionarios) values (@idnoticia, @titulo, @subtitulo, @noticia, @imagem, @idfuncionarios) SET @id = SCOPE_IDENTITY()";

                                SqlCommand cmdBlog = new SqlCommand(strSQLBlog);
                                cmdBlog.Parameters.AddWithValue("@titulo", Convert.ToString(txtTit.Text));
                                cmdBlog.Parameters.AddWithValue("@subitulo", Convert.ToString(txtSub.Text));
                                cmdBlog.Parameters.AddWithValue("@noticia", Convert.ToString(txtNot.Text));
                                cmdBlog.Parameters.AddWithValue("@imagem", Convert.ToString(Foto));
                                cmdBlog.Parameters.AddWithValue("@id", 0).Direction = ParameterDirection.Output;
                                cmdBlog.Parameters.AddWithValue("@idfuncionarios", Convert.ToInt32("9"));

                                SqlCommand Acesso = new SqlCommand();
                                Acesso.ExecuteNonQuery();
                                lblId.Text = Convert.ToString(cmdBlog.Parameters["@id"].Value);
                                flpImg.PostedFile.SaveAs(@"E:/TCC/Quatro_Patas/Quatro_Patas/images/Blog/" + Foto);
                                lblFin.Text = "Notícia inserida com sucesso";
                                int id = Convert.ToInt32(lblId.Text);
                               // lnklink.NavigateUrl = ("visu.aspx?id_Noticia_promocao=" + id);

                                conn.Close();
                            }
                            else
                            {
                                lblFin.Text = "Existe uma foto com esse nome, por favor renomei-a";
                            }
                        }
                    }



                    else if ((strExtensao == "png") || (strExtensao == "PNG"))
                    {
                        string Foto = "";
                        if (txtNome.Text == "")
                        {

                            Foto = flpImg.FileName;
                        }
                        else
                        {
                            Foto = txtNome.Text + ".png";
                        }


                        using (SqlConnection conn = new SqlConnection("Data Source=L04M03\\SQLEXPRESS;Initial Catalog=Quatro_patas;Persist Security Info=True;User ID=sa;Password=aluno")) //caminho do banco :)
                        {
                            conn.Open(); //abre a conexão com o banco (:

                            SqlCommand comando = new SqlCommand("Select id_noticia_promocao, imagem_1 from noticia where imagem_1 =" + Foto, conn);
                            SqlDataReader dr = null;
                            if (!dr.Read())
                            {
                                string strSQLBlog = "Insert into noticia(id_noticia_promocao, titulo, subtitulo, noticia, imagem_1, funcionarios_id_funcionarios) values (@idnoticia, @titulo, @subtitulo, @noticia, @imagem, @idfuncionarios) SET @id = SCOPE_IDENTITY()";

                                SqlCommand cmdBlog = new SqlCommand(strSQLBlog);
                                cmdBlog.Parameters.AddWithValue("@titulo", Convert.ToString(txtTit.Text));
                                cmdBlog.Parameters.AddWithValue("@subitulo", Convert.ToString(txtSub.Text));
                                cmdBlog.Parameters.AddWithValue("@noticia", Convert.ToString(txtNot.Text));
                                cmdBlog.Parameters.AddWithValue("@imagem", Convert.ToString(Foto));
                                cmdBlog.Parameters.AddWithValue("@id", 0).Direction = ParameterDirection.Output;
                                cmdBlog.Parameters.AddWithValue("@idfuncionarios", Convert.ToInt32("9"));

                                SqlCommand Acesso = new SqlCommand();
                                Acesso.ExecuteNonQuery();
                                lblId.Text = Convert.ToString(cmdBlog.Parameters["@id"].Value);
                                flpImg.PostedFile.SaveAs(@"E:/TCC/Quatro_Patas/Quatro_Patas/images/Blog/" + Foto);
                                lblFin.Text = "Notícia inserida com sucesso";
                                int id = Convert.ToInt32(lblId.Text);
                              //  lnklink.NavigateUrl = ("visu.aspx?id_Noticia_promocao=" + id);

                                conn.Close();
                            }
                            else
                            {
                                lblFin.Text = "Existe uma foto com esse nome, por favor renomei-a";
                            }
                        }
                    }

                }

                else
                {
                    /*using (SqlConnection conn = new SqlConnection("Data Source=L04M03\\SQLEXPRESS;Initial Catalog=Quatro_patas;Persist Security Info=True;User ID=sa;Password=aluno")) //caminho do banco :)
                    {
                        conn.Open(); //abre a conexão com o banco (:
                        SqlCommand comando = new SqlCommand("Insert into noticia (titulo, subtitulo, noticia, funcionarios_id_funcionarios) values('" + txtTit.Text + "', '" + txtSub.Text + "','" + txtNot.Text + "', 9)", conn); //instrução , conn :S
                        comando.ExecuteNonQuery(); //inserir no banco de dados
                        conn.Close(); //fecha a conexão .. aaahvá --'
                        lblFin.Text = "Notícia inserida com sucesso";
                        BtnVisu.Visible = true;


                    }*/
                    {
                        lblFin.Text = "Por favor preencha os campos corretamente";

                    }
                }
            }
        }


        public void atualizar(int idNoticia)
        {
            string receberID = lblId.Text;
            if (receberID == "")
            {
                lblFin.Text = "Preencha os campos corretamente";
            }
            else if (flpImg.PostedFile.ContentLength > 0)
            {
                string strExtensao = flpImg.PostedFile.FileName.Substring(flpImg.PostedFile.FileName.Length - 3).ToLower();

                if ((strExtensao == "gif") || (strExtensao == "GIF") || (strExtensao == "jpg") || (strExtensao == "JPG") || (strExtensao == "png") || (strExtensao == "PNG"))
                {
                    if ((strExtensao == "gif") || (strExtensao == "GIF"))
                    {
                        string Foto = "";
                        if (txtNome.Text == "")
                        {

                            Foto = flpImg.FileName;
                        }
                        else
                        {
                            Foto = txtNome.Text + ".gif";
                        }
                        using (SqlConnection conn = new SqlConnection("Data Source=L04M03\\SQLEXPRESS;Initial Catalog=Quatro_patas;Persist Security Info=True;User ID=sa;Password=aluno")) //caminho do banco :)
                        {
                            conn.Open(); //abre a conexão com o banco (:

                            SqlCommand comando = new SqlCommand("Select id_noticia_promocao, imagem_1 from noticia where imagem_1 =" + Foto, conn);
                            SqlDataReader dr = null;
                            dr = comando.ExecuteReader();
                            if (!dr.Read())
                            {
                                comandoexce();
                                conn.Close();
                            }

                            else
                            {
                                lblFin.Text = "Existe uma foto com esse nome, por favor renomei-a";
                            }
                        }
                    }

                    else if ((strExtensao == "jpg") || (strExtensao == "JPG"))
                    {
                        string Foto = "";
                        if (txtNome.Text == "")
                        {

                            Foto = flpImg.FileName;
                            fotogeral = Foto;
                        }
                        else
                        {
                            Foto = txtNome.Text + ".jpg";
                            fotogeral = Foto;
                        }


                        using (SqlConnection conn = new SqlConnection("Data Source=L04M03\\SQLEXPRESS;Initial Catalog=Quatro_patas;Persist Security Info=True;User ID=sa;Password=aluno")) //caminho do banco :)
                        {
                            conn.Open(); //abre a conexão com o banco (:

                            SqlCommand comando = new SqlCommand("Select id_noticia_promocao, imagem_1 from noticia where imagem_1 = '" + Foto + "'", conn);
                            SqlDataReader dr = null;
                            dr = comando.ExecuteReader();
                            if (!dr.Read())
                            {
                                comandoexce();
                                conn.Close();
                            }

                            else
                            {
                                lblFin.Text = "Existe uma foto com esse nome, por favor renomei-a";
                            }
                        }
                    }



                    else if ((strExtensao == "png") || (strExtensao == "PNG"))
                    {
                        string Foto = "";
                        if (txtNome.Text == "")
                        {

                            Foto = flpImg.FileName;
                        }
                        else
                        {
                            Foto = txtNome.Text + ".png";

                        }


                        using (SqlConnection conn = new SqlConnection("Data Source=L04M03\\SQLEXPRESS;Initial Catalog=Quatro_patas;Persist Security Info=True;User ID=sa;Password=aluno")) //caminho do banco :)
                        {
                            conn.Open(); //abre a conexão com o banco (:


                            SqlCommand comando = new SqlCommand("Select id_noticia_promocao, imagem_1 from noticia where imagem_1 =" + Foto, conn);
                            SqlDataReader dr = null;
                            dr = comando.ExecuteReader();
                            if (!dr.Read())
                            {
                                comandoexce();
                                conn.Close();
                            }

                            else
                            {
                                lblFin.Text = "Existe uma foto com esse nome, por favor renomei-a";
                            }
                        }
                    }
                }
                else
                {
                    using (SqlConnection conn = new SqlConnection("Data Source=L04M03\\SQLEXPRESS;Initial Catalog=Quatro_patas;Persist Security Info=True;User ID=sa;Password=aluno")) //caminho do banco :)
                    {
                        conn.Open(); //abre a conexão com o banco (:
                        SqlCommand comando = new SqlCommand("update into noticia (titulo, subtitulo, noticia, funcionarios_id_funcionarios) values('" + txtTit.Text + "', '" + txtSub.Text + "','" + txtNot.Text + "', 9)", conn); //instrução , conn :S
                        comando.ExecuteNonQuery(); //inserir no banco de dados
                        conn.Close(); //fecha a conexão .. aaahvá --'
                        lblFin.Text = "Notícia atualizada com sucesso";


                    }
                }

            }
        }



        protected void btnCanc_Click(object sender, EventArgs e)
        {

            cancelar();

        }
        private void cancelar()
        {
            txtTit.Text = "";
            txtSub.Text = "";
            txtNot.Text = "";
            lblFin.Visible = true;
            txtNome.Text = "";
            lblFin.Text = "A notícia foi apagada dos campos";
            lblId.Text = "";
        }

        private void visualizar()
        {



        }
        private void comandoexce()
        {
            using (SqlConnection conn = new SqlConnection("Data Source=L04M03\\SQLEXPRESS;Initial Catalog=Quatro_patas;Persist Security Info=True;User ID=sa;Password=aluno"))
            {
                conn.Open();

                string fotoesp = "";
                fotoesp = fotogeral;
                string strSQLBlog = "";
                strSQLBlog += " UPDATE NOTICIA";
                strSQLBlog += " SET FUNCIONARIOS_id_FUNCIONARIOS = @idfuncionarios";
                strSQLBlog += " ,TITULO = @titulo";
                strSQLBlog += "       ,SUBTITULO = @subitulo";
                strSQLBlog += "       ,NOTICIA = @noticia";
                strSQLBlog += "       ,imagem_1 = @imagem";
                strSQLBlog += "  WHERE id_NOTICIA_PROMOCAO = @id set @id = SCOPE_IDENTITY() ";

                SqlCommand cmdBlog = new SqlCommand(strSQLBlog, conn);
                cmdBlog.Parameters.AddWithValue("@titulo", Convert.ToString(txtTit.Text));
                cmdBlog.Parameters.AddWithValue("@subitulo", Convert.ToString(txtSub.Text));
                cmdBlog.Parameters.AddWithValue("@noticia", Convert.ToString(txtNot.Text));
                cmdBlog.Parameters.AddWithValue("@imagem", Convert.ToString(fotogeral));
                cmdBlog.Parameters.AddWithValue("@id", lblId.Text); //.Direction = ParameterDirection.Output;
                cmdBlog.Parameters.AddWithValue("@idfuncionarios", Convert.ToInt32("9"));

                cmdBlog.ExecuteNonQuery();

                //lblId.Text = Convert.ToString(cmdBlog.Parameters["@id"].Value);

                flpImg.PostedFile.SaveAs(@"E:/TCC/Quatro_Patas/Quatro_Patas/images/Blog/" + fotoesp );//aqui eu insiro na pasta a imagem atraves do caminho + a string foto
                lblFin.Visible = true;
                lblFin.Text = "Notícia atualizada com sucesso";

                //int id = Convert.ToInt32(lblId.Text);


            }
        }

    }
}

