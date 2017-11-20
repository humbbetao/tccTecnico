<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="p_cliente.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.p_cliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div id="texto">
    <div id="nome_da_pagina">
                            <asp:Label ID="Label13" runat="server" Text="Pesquisa Cliente"></asp:Label>
                        </div>
                        <center>
                            <br />
                            <asp:Label ID="Label1" runat="server" Text=" Cliente"></asp:Label>
                            &nbsp;
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="biorda" AutoPostBack="True"></asp:TextBox>
                            <br />
                            <br />
                            <asp:GridView ID="GridView1" runat="server" BorderColor="#232B2B" 
                                BorderStyle="Solid" BorderWidth="1px" GridLines="Horizontal" Width="980px" 
                                AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" 
                                DataKeyNames="Código" DataSourceID="SqlDataSource1ujuj">
                                <Columns>
                                    <asp:BoundField DataField="Código" HeaderText="Código" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="Código" />
                                    <asp:BoundField DataField="Nome" HeaderText="Nome" 
                                        SortExpression="Nome" />
                                    <asp:BoundField DataField="CPF" HeaderText="CPF" SortExpression="CPF" />
                                    <asp:BoundField DataField="RG" HeaderText="RG" SortExpression="RG" />
                                    <asp:BoundField DataField="Endereço" HeaderText="Endereço" 
                                        SortExpression="Endereço" />
                                    <asp:BoundField DataField="Complemento" HeaderText="Complemento" 
                                        SortExpression="Complemento" />
                                    <asp:BoundField DataField="Nº" HeaderText="Nº" SortExpression="Nº" />
                                    <asp:BoundField DataField="Bairro" HeaderText="Bairro" 
                                        SortExpression="Bairro" />
                                    <asp:BoundField DataField="Cidade" HeaderText="Cidade" 
                                        SortExpression="Cidade" />
                                    <asp:BoundField DataField="Telefone" HeaderText="Telefone" 
                                        SortExpression="Telefone" />
                                    <asp:BoundField DataField="Celular" HeaderText="Celular" 
                                        SortExpression="Celular" />
                                    <asp:BoundField DataField="E-mail" HeaderText="E-mail" 
                                        SortExpression="E-mail" />
                                </Columns>
                                <HeaderStyle BackColor="#232B2B" Font-Size="12px" ForeColor="#ff7f00" 
                                    Height="40px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <RowStyle Font-Size="12px" HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1ujuj" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                
                                SelectCommand="SELECT CLIENTE.id_CLIENTE AS Código, CLIENTE.NOME AS Nome, CLIENTE.CPF, CLIENTE.RG, CLIENTE.EMDERECO AS Endereço, CLIENTE.COMPELEMENTO AS Complemento, CLIENTE.NUMERO AS Nº, CLIENTE.BAIRRO AS Bairro, CLIENTE.CEP, CLIENTE.TELEFONE AS Telefone, CLIENTE.CELULAR AS Celular, CLIENTE.EMAIL AS [E-mail], CIDADE.NOME AS Cidade FROM CIDADE INNER JOIN CLIENTE ON CIDADE.id_CIDADE = CLIENTE.CIDADE_id_CIDADE WHERE (CLIENTE.NOME LIKE '%' + @procurar + '%')">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="procurar" 
                                        PropertyName="Text" />
                                </SelectParameters>
                            </asp:SqlDataSource>
</div>
</div>



</asp:Content>
