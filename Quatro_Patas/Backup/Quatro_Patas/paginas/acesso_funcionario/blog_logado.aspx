<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="blog_logado.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.blog_logado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../estilos/estilo_universal.css" rel="stylesheet" type="text/css" />
    <link href="../../estilos/cadastro.css" rel="stylesheet" type="text/css" />
    <link href="../../estilos/blog.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" ShowFooter="True" 
        ShowHeader="False">
            <FooterTemplate>
                <center>

                    <asp:LinkButton ID="btnAnterior" runat="server" onclick="btnAnterior_Click" cssClass="botoa-bl">Posts mais novos</asp:LinkButton>
                    <asp:Label ID="Label2" runat="server" Text="                  "></asp:Label>
                    <asp:LinkButton ID="btnProximo" runat="server"  onclick="btnProximo_Click" cssClass="botoa-bl">Posts mais antigos</asp:LinkButton>
                </center>
            </FooterTemplate>
            <ItemTemplate>
               <div id="topo_blog">
                   
         <div class="titulo">
             
          <div class="date">

              <asp:DynamicHyperLink ID="lnkEdit" runat="server" Enabled="True" NavigateUrl=<%# "~/paginas/acesso_funcionario/inserir_noticia.aspx?id_noticia_promocao=" + DataBinder.Eval(Container.DataItem, "ID_NOTICIA_PROMOCAO").ToString()%> Width="120px" ForeColor="White" Font-Bold="True" Font-Size="20px" BackColor="#ff7f00">Editar</asp:DynamicHyperLink>
           
                               
         </div>
         
         <center>
         <br />
            <asp:Label ID="lblTit" runat="server" Text=<%#DataBinder.Eval(Container.DataItem, "Titulo").ToString()%> Font-Size="25px" ForeColor="#ffffff" Height="67px" cssClass="text_blog"></asp:Label>
             <%--asp:DynamicHyperLink ID="link1" NavigateUrl="~/paginas/acesso_funcionario/inserir_noticia.aspx?id_noticia_promocao=<%#DataBinder.Eval(Container.DataItem, "ID_NOTICIA_PROMOCAO").ToString()%>" Enabled="True" runat=server>TESTE</asp:DynamicHyperLink--%>
        </center>
        </div>
        </div>
        <div id="texto_blog">
                <br />
                <center>
                <asp:Label ID="lblSub" runat="server"  Font-Size="15px" ForeColor="#232b2b"   Text=<%#DataBinder.Eval(Container.DataItem, "Subtitulo").ToString()%> cssClass="texto_bloh" Font-Bold="True"></asp:Label> 
                </center>
                <br />
                <center>
                     <asp:Image ID="img" runat="server"
                        Width="200px" Height="200px" ImageUrl="" ImageAlign="Middle" Visible="False" />
                </center>
                <br />
                <asp:Label ID="not" runat="server" Text=<%#DataBinder.Eval(Container.DataItem, "Noticia").ToString()%>></asp:Label>
                
                <br />
                <br /> 
                </div>
            </ItemTemplate>
        </asp:DataList>
        <br /><br /><br /><br />
</asp:Content>
