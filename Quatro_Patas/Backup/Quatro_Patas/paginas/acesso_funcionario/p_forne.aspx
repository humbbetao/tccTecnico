<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="p_forne.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.p_forne" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div id="texto">
    <div id="nome_da_pagina">
                            <asp:Label ID="Label13" runat="server" Text="Pesquisa Fornecedores"></asp:Label>
                        </div>
                        <center>
                            <br />
                            <asp:Label ID="Label1" runat="server" Text="Fornecedores"></asp:Label>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="biorda"></asp:TextBox>
                            <br />
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Código" 
                                DataSourceID="SqlDataSource1df" GridLines="Horizontal" Width="980px" 
                                BorderColor="#232B2B" BorderStyle="Solid" BorderWidth="1px">
                                <Columns>
                                    <asp:BoundField DataField="Código" HeaderText="Código" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="Código" />
                                    <asp:BoundField DataField="Razão Social" HeaderText="Razão Social" 
                                        SortExpression="Razão Social" />
                                    <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                                    <asp:BoundField DataField="Cidade" HeaderText="Cidade" 
                                        SortExpression="Cidade" />
                                    <asp:BoundField DataField="Endereço" HeaderText="Endereço" 
                                        SortExpression="Endereço" />
                                    <asp:BoundField DataField="Complemento" HeaderText="Complemento" 
                                        SortExpression="Complemento" />
                                    <asp:BoundField DataField="Nº" HeaderText="Nº" SortExpression="Nº" />
                                    <asp:BoundField DataField="Bairro" HeaderText="Bairro" 
                                        SortExpression="Bairro" />
                                    <asp:BoundField DataField="CEP" HeaderText="CEP" SortExpression="CEP" />
                                    <asp:BoundField DataField="Telefone" HeaderText="Telefone" 
                                        SortExpression="Telefone" />
                                    <asp:BoundField DataField="Celular" HeaderText="Celular" 
                                        SortExpression="Celular" />
                                    <asp:BoundField DataField="CNPJ" HeaderText="CNPJ" SortExpression="CNPJ" />
                                    <asp:BoundField DataField="IE" HeaderText="IE" SortExpression="IE" />
                                </Columns>
                                <HeaderStyle BackColor="#232B2B" Font-Size="12px" ForeColor="#ff7f00" 
                                    HorizontalAlign="Center" VerticalAlign="Middle" Height="40px" />
                                <RowStyle Font-Size="12px" HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1df" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                SelectCommand="SELECT FORNECEDORES.id_FORNECEDORES AS Código, FORNECEDORES.RAZAO_SOCIAL AS [Razão Social], FORNECEDORES.nome AS Nome, CIDADE.NOME AS Cidade, FORNECEDORES.ENDERECO AS Endereço, FORNECEDORES.COMPLEMENTO AS Complemento, FORNECEDORES.NUMERO AS Nº, FORNECEDORES.BAIRRO AS Bairro, FORNECEDORES.CEP, FORNECEDORES.TELEFONE AS Telefone, FORNECEDORES.CELULAR AS Celular, FORNECEDORES.CNPJ, FORNECEDORES.IE FROM FORNECEDORES INNER JOIN CIDADE ON FORNECEDORES.CIDADE_id_CIDADE = CIDADE.id_CIDADE WHERE (FORNECEDORES.nome LIKE '%' + @procurar + '%')">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="procurar" 
                                        PropertyName="Text" />
                                </SelectParameters>
                            </asp:SqlDataSource>
</center>
</div>
</asp:Content>
