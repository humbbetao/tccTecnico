<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="p_funcionarios.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.p_funcionarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="texto">
    <div id="nome_da_pagina">
                            <asp:Label ID="Label13" runat="server" Text="Pesquisa Funionários"></asp:Label>
                        </div>
                        <center>
                            <br />
                            <asp:Label ID="Label1" runat="server" Text="Funcionários"></asp:Label>
                            &nbsp;
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="biorda"></asp:TextBox>

                            <br />
                            <br />

                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                BorderColor="#232B2B" BorderStyle="Solid" BorderWidth="1px" 
                                DataKeyNames="Código" DataSourceID="SqlDataSource1grtg" GridLines="Horizontal" 
                                Width="980px" AllowPaging="True" AllowSorting="True">
                                <Columns>
                                    <asp:BoundField DataField="Código" HeaderText="Código" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="Código" />
                                    <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                                    <asp:BoundField DataField="CPF" HeaderText="CPF" SortExpression="CPF" />
                                    <asp:BoundField DataField="RG" HeaderText="RG" SortExpression="RG" />
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
                                    <asp:BoundField DataField="Cidade" HeaderText="Cidade" 
                                        SortExpression="Cidade" />
                                    <asp:BoundField DataField="Função" HeaderText="Função" 
                                        SortExpression="Função" />
                                </Columns>
                                <HeaderStyle BackColor="#232B2B" Font-Size="12px" ForeColor="#ff7f00" 
                                    Height="40px" />
                                <RowStyle Font-Size="12px" HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1grtg" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                SelectCommand="SELECT FUNCIONARIOS.id_FUNCIONARIOS AS Código, FUNCIONARIOS.NOME AS Nome, FUNCIONARIOS.CPF, FUNCIONARIOS.RG, FUNCIONARIOS.ENDERECO AS Endereço, FUNCIONARIOS.COMPLEMENTO AS Complemento, FUNCIONARIOS.NUMERO AS Nº, FUNCIONARIOS.BAIRRO AS Bairro, FUNCIONARIOS.CEP, FUNCIONARIOS.TELEFONE AS Telefone, FUNCIONARIOS.CELULAR AS Celular, CIDADE.NOME AS Cidade, ESPECIALIDADES_FUNCIONARIO.NOME AS Função FROM ESPECIALIDADES_FUNCIONARIO INNER JOIN FUNCIONARIOS ON ESPECIALIDADES_FUNCIONARIO.id_ESPECIALIDADES = FUNCIONARIOS.ESPECIALIDADES_FUNCIONARIO_id_ESPECIALIDADES AND ESPECIALIDADES_FUNCIONARIO.id_ESPECIALIDADES = FUNCIONARIOS.ESPECIALIDADES_FUNCIONARIO_id_ESPECIALIDADES INNER JOIN CIDADE ON FUNCIONARIOS.CIDADE_id_CIDADE = CIDADE.id_CIDADE AND FUNCIONARIOS.CIDADE_id_CIDADE = CIDADE.id_CIDADE WHERE (FUNCIONARIOS.NOME LIKE '%' + @procurar + '%')">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="procurar" 
                                        PropertyName="Text" />
                                </SelectParameters>
                            </asp:SqlDataSource>
</center>

</div>

</asp:Content>
