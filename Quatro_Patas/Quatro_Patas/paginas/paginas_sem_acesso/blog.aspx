<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/paginas_sem_acesso/vitirne_virtual.Master" AutoEventWireup="true" CodeBehind="blog.aspx.cs" Inherits="Quatro_Patas.paginas.paginas_sem_acesso.blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link type="text/css" rel="stylesheet" href="../../../css/estilo_universal.css"/>
      	<link rel="stylesheet" href="../../../css/slide.css" type="text/css" media="screen" />
        <link rel="shortcut icon" href="../../../images/icone.ico"> 
	    <script src="../../../js/jquery-1.3.2.min.js" type="text/javascript"></script>
	    <script src="../../../js/slide.js" type="text/javascript"></script>
        <link rel="Stylesheet" href="../../../css/blog.css" type="text/css" media="screen" />
            <link href="../../estilos/estilo_universal.css" rel="stylesheet" type="text/css" />
    <link href="../../estilos/cadastro.css" rel="stylesheet" type="text/css" />
    <link href="../../estilos/blog.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="texto">
    <div id="nome_da_pagina">
        <asp:Label ID="Label13" runat="server" Text="Blog"></asp:Label>
    </div><br />
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
              <span id="mes">
                  
              </span>
                  
         </div>
         <center>
         <br />
            <asp:Label ID="lblTit" runat="server" Text=<%#DataBinder.Eval(Container.DataItem, "Titulo").ToString()%> Font-Size="25px" ForeColor="#ffffff" Height="67px" cssClass="text_blog"></asp:Label> 
        </center>
        </div>
        </div>
        <div id="texto_blog">
                <br />
                <center>
                <asp:Label ID="lblSub" runat="server"  Font-Size="15px" ForeColor="#232b2b"   Text=<%#DataBinder.Eval(Container.DataItem, "Subtitulo").ToString()%> cssClass="texto_bloh" Font-Bold="True"></asp:Label> 
                </center
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
        </div>
</asp:Content>
