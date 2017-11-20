<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="inserir_noticia.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.inserir_noticia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="texto">
                        <div id="nome_da_pagina">
                            <asp:Label ID="Label13" runat="server" Text="Inserir Notícia"></asp:Label>
                        </div>
                        <br />
                        <div id="blog_inserir">
                            <div class="lateral">
                                <div class="left_lateral">
                                    <ul>
                                        <li class="texto_blog_inserir1" ><asp:Label ID="Label6" runat="server" Text="Título" Font-Bold="True"></asp:Label></li>
                                        <li class="texto_blog_inserir2"> <asp:TextBox ID="txtTit" runat="server" BackColor="#FFFFFF" 
                                            BorderColor="#ff7f00" BorderWidth="1px" Font-Size="20px" Width="800px"></asp:TextBox></li>
      
                                    </ul>
                                  
                                </div>

                            </div>
                                
                            <div class="lateral">
                                <div class="left_lateral">
                                    <ul>
                                        <li class="texto_blog_inserir1"><asp:Label ID="Label2" runat="server" Text="Resumo" Font-Bold="True"></asp:Label></li>
                                        <li class="texto_blog_inserir2"><asp:TextBox ID="txtSub" runat="server" BackColor="#FFFFFF" 
                                        BorderColor="#ff7f00" BorderWidth="1px" Font-Size="20px" Width="800px"></asp:TextBox></li>
                                
                                
                                    </ul>
                                </div>

                            </div>

                            <div class="lateral">
                                <div class="left_lateral">
                                    <ul>
                                        <li class="texto_blog_inserir1"><asp:Label ID="Label5" runat="server" Text="Notícia" Font-Bold="True"></asp:Label></li>
                                        <li class="texto_blog_inserir2"><asp:TextBox ID="txtNot" runat="server" BackColor="#FFFFFF" 
                                            BorderColor="#ff7f00" BorderWidth="1px" Font-Size="14px" Height="300px" 
                                            TextMode="MultiLine" Width="800px"></asp:TextBox></li>
                                
                                    </ul>
                                
                    
                                </div>

                            </div> 
                                 
                            <div class="lateral">
                                <div class="left_lateral">
                                    <ul>
                                <li class="texto_blog_inserir1"><asp:Label ID="uahs" runat="server" Text="Nome da Imagem" Font-Bold="True"></asp:Label></li>
                                        <li class="texto_blog_inserir2"><asp:TextBox ID="txtNome" runat="server" BackColor="#FFFFFF" 
                                        BorderColor="#ff7f00" BorderWidth="1px" Font-Size="20px" Width="334px"></asp:TextBox>
                                        <asp:FileUpload ID="flpImg" runat="server"  Font-Size="20px" BorderColor="#ff7f00" BorderStyle="Solid" BorderWidth="1px" /></li>
                                        
                                    </ul>

                                    
                                </div>
                                
                            </div> 
                            
                            
                            <div class="lateral">
                                <div class="left_lateral">
                                    <ul>
                                        
                                
                                
                                    </ul>
                                </div>

                            </div>


                        <br />
                        <br />
                        <br />
                        <br />

<div id="botaosushauhs">

    <center>



                        <asp:Button ID="btnSalv" runat="server" onclick="btnSalv_Click" Text="Salvar" 
                            BackColor="#ff7f00" BorderWidth="0px" Font-Bold="False" Font-Size="20px" 
                            ForeColor="#232B2B" Height="30px" Width="100px" />
                        &nbsp;&nbsp;<asp:Button ID="btnCanc" runat="server" Text="Cancelar"  
                            BackColor="#ff7f00" BorderWidth="0px" Font-Bold="False" Font-Size="20px" 
                            ForeColor="#232B2B" Height="30px" Width="120px" onclick="btnCanc_Click" />
      
                        &nbsp;<asp:Button ID="btnExc" runat="server" Text="Deletar" BackColor="#ff7f00" BorderWidth="0px" Font-Bold="False" Font-Size="20px" 
                            ForeColor="#232B2B" Height="30px" Width="100px" />
                        <br />
                        <br />
                        <asp:Label ID="lblId" runat="server" Visible="False"></asp:Label>

                        <asp:DynamicHyperLink ID="lnklink" runat="server" Visible="False">[lnklink]</asp:DynamicHyperLink>

                        <br />

                        <asp:Label ID="lblFin" runat="server" Text="Label" BorderWidth="0px" 
                            Font-Bold="False" Font-Size="20px" 
                            ForeColor="#FF7F00" Width="980px" Visible="False"></asp:Label>
                        </center>
</div>
                    
                        </div>

                        </div>
                        <br /><br /><br />
</asp:Content>
