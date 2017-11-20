<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="p_produtos.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.p_produtos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="texto">
    <div id="nome_da_pagina">
                            <asp:Label ID="Label13" runat="server" Text="Pesquisa Produtos"></asp:Label>
                        </div>
                        <center>
                            <br />
                            <asp:Label ID="Label1" runat="server" Text="Produtos"></asp:Label>
                            &nbsp;
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="biorda"></asp:TextBox>
                            <br />
                            <br />
                            <asp:GridView ID="GridView1" runat="server" BorderColor="#232B2B" 
                                BorderStyle="Solid" BorderWidth="1px" GridLines="Horizontal" Width="980px" 
                                AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" 
                                DataKeyNames="id_PRODUTOS" DataSourceID="SqlDataSource1gtg">
                                <Columns>
                                    <asp:BoundField DataField="id_PRODUTOS" HeaderText="Código" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="id_PRODUTOS" />
                                    <asp:BoundField DataField="NOME" HeaderText="Nome" 
                                        SortExpression="NOME" />
                                    <asp:BoundField DataField="OBSERVACAO" HeaderText="Observação" 
                                        SortExpression="OBSERVACAO" />
                                    <asp:BoundField DataField="QUANTIDADE" HeaderText="Quantidade" 
                                        SortExpression="QUANTIDADE" />
                                    <asp:BoundField DataField="REMEDIOS" HeaderText="Remédios" 
                                        SortExpression="REMEDIOS" />
                                    <asp:BoundField DataField="VITRINE" HeaderText="Vitrine" 
                                        SortExpression="VITRINE" />
                                    <asp:BoundField DataField="TIPO_PRODUTO" HeaderText="Tipo Produto" 
                                        SortExpression="TIPO_PRODUTO" />
                                </Columns>
                                <HeaderStyle BackColor="#232B2B" Font-Size="12px" ForeColor="#ff7f00" 
                                    Height="40px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <RowStyle Font-Size="12px" HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1gtg" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                SelectCommand="SELECT PRODUTOS.id_PRODUTOS, PRODUTOS.NOME, PRODUTOS.OBSERVACAO, PRODUTOS.QUANTIDADE, PRODUTOS.REMEDIOS, PRODUTOS.VITRINE, TIPO_PRODUTO.TIPO_PRODUTO FROM PRODUTOS INNER JOIN TIPO_PRODUTO ON PRODUTOS.TIPO_PRODUTO_idTIPO_PRODUTO = TIPO_PRODUTO.idTIPO_PRODUTO WHERE (PRODUTOS.NOME LIKE '%' + @procurar + '%')">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="procurar" 
                                        PropertyName="Text" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            </center>
</div>



</asp:Content>
