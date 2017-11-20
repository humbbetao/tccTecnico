<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="p_raca.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.p_raca" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="texto">
    <div id="nome_da_pagina">
                            <asp:Label ID="Label13" runat="server" Text="Pesquisa Raça Animal"></asp:Label>
                        </div>
                        <center>
                            <br />
                            <asp:Label ID="Label1" runat="server" Text="Raça Animal"></asp:Label>
                            &nbsp;
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="biorda"></asp:TextBox>
                            <br />
                            <br />
                            <asp:GridView ID="GridView1" runat="server" BorderColor="#232B2B" 
                                BorderStyle="Solid" BorderWidth="1px" GridLines="Horizontal" Width="980px" 
                                AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" 
                                DataKeyNames="Código" DataSourceID="SqlDataSource1asas">
                                <Columns>
                                    <asp:BoundField DataField="Código" HeaderText="Código" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="Código" />
                                    <asp:BoundField DataField="Raça Animal" HeaderText="Raça Animal" 
                                        SortExpression="Raça Animal" />
                                    <asp:BoundField DataField="Tipo Animal" HeaderText="Tipo Animal" 
                                        SortExpression="Tipo Animal" />
                                </Columns>
                                <HeaderStyle BackColor="#232B2B" Font-Size="12px" ForeColor="#ff7f00" 
                                    Height="40px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <RowStyle Font-Size="12px" HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource1asas" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                SelectCommand="SELECT RACA_ANIMAL.id_RACA_ANIMAL AS Código, RACA_ANIMAL.NOME AS [Raça Animal], TIPO_ANIMAL.NOME AS [Tipo Animal] FROM RACA_ANIMAL INNER JOIN TIPO_ANIMAL ON RACA_ANIMAL.TIPO_ANIMAL_id_TIPO_ANIMAL = TIPO_ANIMAL.id_TIPO_ANIMAL WHERE (RACA_ANIMAL.NOME LIKE '%' + @procurar + '%')">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="procurar" 
                                        PropertyName="Text" />
                                </SelectParameters>
                            </asp:SqlDataSource>

</center>
</div>
</asp:Content>
