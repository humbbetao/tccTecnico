<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="p_animal.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.p_animal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div id="nome_da_pagina">
        <asp:Label ID="Label13" runat="server" Text="Pesquisa Animal"></asp:Label>
    </div>
    <br />
    <asp:Label ID="Label14" runat="server" Text="Animal"></asp:Label> &nbsp;&nbsp; 
    <asp:TextBox ID="TextBox1" runat="server" CssClass="biorda"></asp:TextBox>
    &nbsp;<br />
    <br />

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BorderColor="#232B2B" 
        BorderStyle="Solid" BorderWidth="1px" DataKeyNames="Código" 
        DataSourceID="naimal_1" GridLines="Horizontal" Width="980px" 
        CellPadding="5">
        <Columns>
            <asp:BoundField DataField="Código" HeaderText="Código" InsertVisible="False" 
                ReadOnly="True" SortExpression="Código" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
            <asp:BoundField DataField="Peso" HeaderText="Peso" SortExpression="Peso" />
            <asp:BoundField DataField="Raça" HeaderText="Raça" 
                SortExpression="Raça" />
            <asp:BoundField DataField="Cliente" HeaderText="Cliente" 
                SortExpression="Cliente" />
            <asp:BoundField DataField="CPF" HeaderText="CPF" SortExpression="CPF" />
            <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" />
        </Columns>
        <HeaderStyle BackColor="#232B2B" Font-Size="12px" ForeColor="#ff7f00" 
            Height="40px" />
        <RowStyle Font-Size="12px" HorizontalAlign="Center" VerticalAlign="Middle" />
        <SelectedRowStyle BackColor="#ff7f00" HorizontalAlign="Center" 
            VerticalAlign="Middle" />
    </asp:GridView>
    <asp:SqlDataSource ID="naimal_1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
        
        
        SelectCommand="SELECT ANIMAL.id_ANIMAL AS Código, ANIMAL.nome AS Nome, ANIMAL.PESO AS Peso, ANIMAL.STATUS_ANIMAL AS Status, RACA_ANIMAL.NOME AS Raça, CLIENTE.NOME AS Cliente, CLIENTE.CPF, GENERO.NOME AS Sexo FROM ANIMAL INNER JOIN CLIENTE ON ANIMAL.CLIENTE_id_CLIENTE = CLIENTE.id_CLIENTE INNER JOIN GENERO ON ANIMAL.GENERO_id_GENERO = GENERO.id_GENERO AND CLIENTE.GENERO_id_GENERO = GENERO.id_GENERO INNER JOIN RACA_ANIMAL ON ANIMAL.RACA_ANIMAL_id_RACA_ANIMAL = RACA_ANIMAL.id_RACA_ANIMAL WHERE (ANIMAL.nome LIKE '%' + @procurar + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="procurar" 
                PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />



    <br />



</asp:Content>
