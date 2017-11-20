<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="visu.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.visu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


                   <div id="topo_blog">
                   
         <div class="titulo">
             
          <div class="date">


                   <!--%<asp:DynamicHyperLink ID="lnkEdit" runat="server" Enabled="True" NavigateUrl=<%# "~/paginas/acesso_funcionario/inserir_noticia.aspx?id_noticia_promocao=" + DataBinder.Eval(Container.DataItem, "ID_NOTICIA_PROMOCAO").ToString()%> Width="120px" ForeColor="White" Font-Bold="True" Font-Size="20px" BackColor="#ff7f00">Editar</asp:DynamicHyperLink>-->
                  
         </div>
         <center>
         <br />
            <asp:Label ID="lblTit" runat="server" Text="" Font-Size="25px" ForeColor="#ff7f00" Height="67px" cssClass="text_blog"></asp:Label> 
        </center>
        </div>
        </div>
                <br />
                <center>
                <asp:Label ID="lblSub" runat="server"  Font-Size="15px" ForeColor="#232b2b"   Text="" cssClass="texto_bloh" Font-Bold="True"></asp:Label> 
                </center>
                <br />
                <center>
                     <asp:Image ID="img" runat="server"
                        Width="200px" Height="200px" ImageUrl="" ImageAlign="Middle" Visible="False" />
                </center>
                <br />
                <asp:Label ID="lblNot" runat="server" Text=""></asp:Label>
                <br /> 

    <asp:Label ID="lblID" runat="server" Text="" Visible="False"></asp:Label>
</asp:Content>

