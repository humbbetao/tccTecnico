<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="estado.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.estado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="texto">
    <div id="nome_da_pagina">
                            <asp:Label ID="Label13" runat="server" Text="Pesquisa Estado"></asp:Label>
                        </div>
    <asp:Label ID="Label1" runat="server" Text="Estado"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="biorda"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Ok" BackColor="#ff7f00" 
        Font-Size="15px" ForeColor="#232B2B" Height="30px" />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id_ESTADO" 
        DataSourceID="SqlDataSource1fdc" GridLines="Horizontal" Width="980px">
        <Columns>
            <asp:BoundField DataField="id_ESTADO" HeaderText="Código" InsertVisible="False" 
                ReadOnly="True" SortExpression="id_ESTADO" />
            <asp:BoundField DataField="NOME" HeaderText="Nome" SortExpression="NOME" />
            <asp:BoundField DataField="SIGLA" HeaderText="UF" SortExpression="SIGLA" />
        </Columns>
        <HeaderStyle BackColor="#232B2B" Font-Size="12px" ForeColor="#ff7f00" 
            Height="40px" />
        <RowStyle Font-Size="12px" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1fdc" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
        SelectCommand="SELECT id_ESTADO, NOME, SIGLA FROM ESTADO WHERE (NOME LIKE '%' + @procurar + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="procurar" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>
