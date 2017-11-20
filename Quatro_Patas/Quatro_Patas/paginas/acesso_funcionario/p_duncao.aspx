<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="p_duncao.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.p_duncao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="texto">
                        <div id="nome_da_pagina">
                            <asp:Label ID="Label13" runat="server" Text="Pesquisa Especialidade Funcionário"></asp:Label>
                        </div>
                        <br />
    <asp:Label ID="Label1" runat="server" Text="Especialidade"></asp:Label>
    &nbsp;
    <asp:TextBox ID="TextBox1" runat="server" CssClass="biorda"></asp:TextBox>

                            <br /><br />
    <asp:GridView ID="GridView1" runat="server" BorderColor="#232B2B" BorderStyle="Solid" 
                            BorderWidth="1px" GridLines="Horizontal" Width="980px" AllowPaging="True" 
                            AllowSorting="True" AutoGenerateColumns="False" 
                            DataKeyNames="id_ESPECIALIDADES" DataSourceID="SqlDataSource1bgb">
        <Columns>
            <asp:BoundField DataField="id_ESPECIALIDADES" HeaderText="Código" 
                InsertVisible="False" ReadOnly="True" SortExpression="id_ESPECIALIDADES" />
            <asp:BoundField DataField="NOME" HeaderText="Nome" SortExpression="NOME" />
        </Columns>
        <HeaderStyle BackColor="#232B2B" Font-Size="12px" ForeColor="#ff7f00" 
            Height="40px" />
        <RowStyle Font-Size="12px" HorizontalAlign="Center" />
    </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1bgb" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                            SelectCommand="SELECT id_ESPECIALIDADES, NOME FROM ESPECIALIDADES_FUNCIONARIO WHERE (NOME LIKE '%' + @procurar + '%')">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox1" Name="procurar" 
                                    PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        </div>

</asp:Content>
