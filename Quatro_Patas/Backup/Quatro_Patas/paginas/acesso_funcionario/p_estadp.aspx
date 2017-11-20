<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="p_estadp.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.p_estadp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="texto">
    <div id="nome_da_pagina">
                            <asp:Label ID="Label13" runat="server" Text="Pesquisa Estado"></asp:Label>
                        </div>
                        <center>
                            <br />
                            <asp:Label ID="Label1" runat="server" Text="Estado"></asp:Label>
                            &nbsp;
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="biorda"></asp:TextBox>
                            <br />
                            <br />
                            <asp:GridView ID="GridView1" runat="server" BorderColor="#232B2B" 
                                BorderStyle="Solid" BorderWidth="1px" GridLines="Horizontal" Width="980px" 
                                AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" 
                                DataKeyNames="id_ESTADO" DataSourceID="SqlDataSource1ijsioi">
                                <Columns>
                                    <asp:BoundField DataField="id_ESTADO" HeaderText="Código" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="id_ESTADO" />
                                    <asp:BoundField DataField="NOME" HeaderText="Nome" 
                                        SortExpression="NOME" />
                                    <asp:BoundField DataField="SIGLA" HeaderText="UF" SortExpression="SIGLA" />
                                </Columns>
                                <HeaderStyle BackColor="#232B2B" Font-Size="12px" ForeColor="#ff7f00" 
                                    Height="40px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <RowStyle Font-Size="12px" HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1ijsioi" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                SelectCommand="SELECT id_ESTADO, NOME, SIGLA FROM ESTADO WHERE (NOME LIKE '%' + @procurar + '%')">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="procurar" 
                                        PropertyName="Text" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            </center>
</div>


</asp:Content>
