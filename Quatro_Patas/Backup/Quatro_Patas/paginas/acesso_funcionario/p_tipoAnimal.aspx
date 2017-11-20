<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="p_tipoAnimal.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.p_tipoAnimal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="texto">
    <div id="nome_da_pagina">
                            <asp:Label ID="Label13" runat="server" Text="Pesquisa Tipo Animal"></asp:Label>
                        </div>
                        <center>
                            <br />
                            <asp:Label ID="Label1" runat="server" Text="Tipo Animal"></asp:Label>
                            &nbsp;
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="biorda"></asp:TextBox>
                            <br />
                            <br />
                            <asp:GridView ID="GridView1" runat="server" BorderColor="#232B2B" 
                                BorderStyle="Solid" BorderWidth="1px" GridLines="Horizontal" Width="980px" 
                                AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" 
                                DataKeyNames="Código" DataSourceID="SqlDataSource1frrf">
                                <Columns>
                                    <asp:BoundField DataField="Código" HeaderText="Código" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="Código" />
                                    <asp:BoundField DataField="Tipo Produto" HeaderText="Tipo Produto" 
                                        SortExpression="Tipo Produto" />
                                </Columns>
                                <HeaderStyle BackColor="#232B2B" Font-Size="12px" ForeColor="#ff7f00" 
                                    Height="40px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <RowStyle Font-Size="12px" HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1frrf" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                SelectCommand="SELECT idTIPO_PRODUTO AS Código, TIPO_PRODUTO AS [Tipo Produto] FROM TIPO_PRODUTO WHERE (TIPO_PRODUTO LIKE '%' + @procurar + '%')">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="procurar" 
                                        PropertyName="Text" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            </center>
</div>
</asp:Content>
