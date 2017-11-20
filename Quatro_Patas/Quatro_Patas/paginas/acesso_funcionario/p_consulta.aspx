<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="p_consulta.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.p_consulta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">




</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div id="nome_da_pagina">
        <asp:Label ID="Label13" runat="server" Text="Pesquisa Consulta"></asp:Label>
    </div>
    

    <br />
    

    <br />

        <asp:Label ID="Label1" runat="server" Text="Animal" ToolTip="   "></asp:Label>&nbsp; <asp:TextBox ID="TextBox1" runat="server" CssClass="biorda"></asp:TextBox> 


        <br />
    <br />
        <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BorderColor="#232B2B" 
        BorderStyle="Solid" BorderWidth="1px" CellPadding="5" 
        DataKeyNames="id_CONSULTA" DataSourceID="SqlDataSource1aa" 
        GridLines="Horizontal" Width="980px">
        <Columns>
            <asp:BoundField DataField="id_CONSULTA" HeaderText="Código" 
                InsertVisible="False" ReadOnly="True" SortExpression="id_CONSULTA" />
            <asp:BoundField DataField="nome" HeaderText="Animal" SortExpression="nome" />
            <asp:BoundField DataField="Expr1" HeaderText="Cliente" SortExpression="Expr1" />
            <asp:BoundField DataField="DATA_CONSULTA" HeaderText="Data/Hora" 
                SortExpression="DATA_CONSULTA" />
            <asp:BoundField DataField="VALOR" HeaderText="Valor" SortExpression="VALOR" />
            <asp:BoundField DataField="EFETUADA" HeaderText="Efetuada" 
                SortExpression="EFETUADA" />
            <asp:BoundField DataField="DIAGNOSTICO" HeaderText="Diagnóstico" 
                SortExpression="DIAGNOSTICO" />
        </Columns>
        <HeaderStyle BackColor="#232B2B" Font-Size="12px" ForeColor="#ff7f00" 
            Height="40px" />
        <RowStyle Font-Size="12px" HorizontalAlign="Center" VerticalAlign="Middle" />
    </asp:GridView>

    

    <asp:SqlDataSource ID="SqlDataSource1aa" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
        SelectCommand="SELECT CONSULTA.id_CONSULTA, ANIMAL.nome, CLIENTE.NOME AS Expr1, CONSULTA.DATA_CONSULTA, CONSULTA.HORA_CONSULTA, CONSULTA.VALOR, CONSULTA.EFETUADA, CONSULTA.DIAGNOSTICO FROM ANIMAL INNER JOIN CONSULTA ON ANIMAL.id_ANIMAL = CONSULTA.ANIMAL_id_ANIMAL INNER JOIN CLIENTE ON ANIMAL.CLIENTE_id_CLIENTE = CLIENTE.id_CLIENTE">
    </asp:SqlDataSource>

    

</asp:Content>
