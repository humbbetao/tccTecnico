<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="p_cidade.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.p_cidade" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="nome_da_pagina">
        <asp:Label ID="Label13" runat="server" Text="Pesquisa Cidade"></asp:Label>
    </div>
    <center>
        <br />
        <asp:Label ID="Label14" runat="server" Text="Cidade" ToolTip="  "></asp:Label>
&nbsp;

        <asp:TextBox ID="TextBox1" runat="server" CssClass="biorda"></asp:TextBox>

        <br />

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="id_CIDADE" 
            DataSourceID="SqlDataSource1asas" BorderColor="#232B2B" 
            BorderStyle="Solid" BorderWidth="1px" CellPadding="5" GridLines="Horizontal" 
            Width="980px">
            <Columns>
                <asp:BoundField DataField="id_CIDADE" HeaderText="Código" 
                    InsertVisible="False" ReadOnly="True" SortExpression="id_CIDADE" />
                <asp:BoundField DataField="NOME" HeaderText="Nome" SortExpression="NOME" />
                <asp:BoundField DataField="SIGLA" HeaderText="UF" SortExpression="SIGLA" />
            </Columns>
            <HeaderStyle BackColor="#232B2B" Font-Size="12px" ForeColor="#ff7f00" 
                Height="40px" HorizontalAlign="Center" VerticalAlign="Middle" />
            <RowStyle Font-Size="12px" HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:GridView>


        <asp:SqlDataSource ID="SqlDataSource1asas" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
            DeleteCommand="DELETE FROM [CIDADE] WHERE [id_CIDADE] = @original_id_CIDADE AND [ESTADO_id_ESTADO] = @original_ESTADO_id_ESTADO AND (([NOME] = @original_NOME) OR ([NOME] IS NULL AND @original_NOME IS NULL))" 
            InsertCommand="INSERT INTO [CIDADE] ([ESTADO_id_ESTADO], [NOME]) VALUES (@ESTADO_id_ESTADO, @NOME)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT CIDADE.id_CIDADE, CIDADE.NOME, ESTADO.SIGLA FROM CIDADE INNER JOIN ESTADO ON CIDADE.ESTADO_id_ESTADO = ESTADO.id_ESTADO WHERE (CIDADE.NOME LIKE '%' + @procurar + '%')" 
            
            UpdateCommand="UPDATE [CIDADE] SET [ESTADO_id_ESTADO] = @ESTADO_id_ESTADO, [NOME] = @NOME WHERE [id_CIDADE] = @original_id_CIDADE AND [ESTADO_id_ESTADO] = @original_ESTADO_id_ESTADO AND (([NOME] = @original_NOME) OR ([NOME] IS NULL AND @original_NOME IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_id_CIDADE" Type="Int32" />
                <asp:Parameter Name="original_ESTADO_id_ESTADO" Type="Int32" />
                <asp:Parameter Name="original_NOME" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ESTADO_id_ESTADO" Type="Int32" />
                <asp:Parameter Name="NOME" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="procurar" 
                    PropertyName="Text" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ESTADO_id_ESTADO" Type="Int32" />
                <asp:Parameter Name="NOME" Type="String" />
                <asp:Parameter Name="original_id_CIDADE" Type="Int32" />
                <asp:Parameter Name="original_ESTADO_id_ESTADO" Type="Int32" />
                <asp:Parameter Name="original_NOME" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>


    </center>

</asp:Content>
