<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="p_doenca.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.p_doenca" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="texto">
                        <div id="nome_da_pagina">
                            <asp:Label ID="Label13" runat="server" Text="Pesquisa Doença e Alergia"></asp:Label>
                        </div>
                        
                        <br />
                        
    <asp:Label ID="Label1" runat="server" Text="Doença e Alergia" ToolTip="  "></asp:Label>
    &nbsp;
    <asp:TextBox ID="TextBox1" runat="server" CssClass="biorda"></asp:TextBox>
                        
    &nbsp;<br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderColor="#232B2B" 
                            BorderStyle="Solid" BorderWidth="1px" DataKeyNames="id_DOENCA_ALERGIAS" 
                            DataSourceID="SqlDataSource1aa" GridLines="Horizontal" Width="980px" 
                            AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="id_DOENCA_ALERGIAS" HeaderText="Código" 
                InsertVisible="False" ReadOnly="True" SortExpression="id_DOENCA_ALERGIAS" />
            <asp:BoundField DataField="NOME_CIENTIFICO" HeaderText="Nome Científico" 
                SortExpression="NOME_CIENTIFICO" />
            <asp:BoundField DataField="NOME_USUAL" HeaderText="Nome Usual" 
                SortExpression="NOME_USUAL" />
            <asp:BoundField DataField="OBSERVACAO" HeaderText="Observação" 
                SortExpression="OBSERVACAO" />
            <asp:BoundField DataField="TRATAMENTO_CONVECIONAL" HeaderText="Tratamento " 
                SortExpression="TRATAMENTO_CONVECIONAL" />
            <asp:BoundField DataField="CAUSADOR" HeaderText="Causador" 
                SortExpression="CAUSADOR" />
            <asp:BoundField DataField="TRANSMISSAO" HeaderText="Transmissão" 
                SortExpression="TRANSMISSAO" />
        </Columns>
        <HeaderStyle BackColor="#232B2B" Font-Size="12px" ForeColor="#ff7f00" 
            Height="40px" />
        <RowStyle Font-Size="12px" HorizontalAlign="Center" VerticalAlign="Middle" />
    </asp:GridView>

                        <asp:SqlDataSource ID="SqlDataSource1aa" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                            
                            SelectCommand="SELECT id_DOENCA_ALERGIAS, NOME_CIENTIFICO, NOME_USUAL, OBSERVACAO, TRATAMENTO_CONVECIONAL, CAUSADOR, TRANSMISSAO FROM DOENCAS_ALERGIAS WHERE (NOME_USUAL LIKE '%' + @procurar + '%')">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox1" Name="procurar" 
                                    PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                        </div>
</asp:Content>
