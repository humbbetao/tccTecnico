<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="p_estadocivil.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.p_estadocivil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="texto">
    <div id="nome_da_pagina">
                            <asp:Label ID="Label13" runat="server" Text="Pesquisa Estado Civil"></asp:Label>
                        </div>
                        <center>

                            <br />

                            <asp:Label ID="Label1" runat="server" Text="Estado Civil"></asp:Label>
                            &nbsp;
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="biorda"></asp:TextBox>


                            &nbsp;<br />
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id_ESTADO_CIVIL" 
                                DataSourceID="SqlDataSource1vcb" GridLines="Horizontal" Width="980px" 
                                Font-Size="12px">
                                <Columns>
                                    <asp:BoundField DataField="id_ESTADO_CIVIL" HeaderText="Código" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="id_ESTADO_CIVIL" />
                                    <asp:BoundField DataField="NOME" HeaderText="Estado Civil" 
                                        SortExpression="NOME" />
                                </Columns>
                                <HeaderStyle BackColor="#232B2B" Font-Size="12px" ForeColor="#ff7f00" 
                                    Height="40px" />
                                <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:GridView>



                            <asp:SqlDataSource ID="SqlDataSource1vcb" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                SelectCommand="SELECT id_ESTADO_CIVIL, NOME FROM ESTADO_CIVIL WHERE (NOME LIKE '%' + @procurar + '%')">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="procurar" 
                                        PropertyName="Text" />
                                </SelectParameters>
                            </asp:SqlDataSource>



</center>
    
</div>


</asp:Content>
