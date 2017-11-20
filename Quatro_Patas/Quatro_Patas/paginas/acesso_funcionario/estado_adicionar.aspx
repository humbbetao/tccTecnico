<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="estado_adicionar.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.estado_adicionar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="nome_da_pagina">
    <asp:Label ID="Label13" runat="server" Text="Estado"></asp:Label>
</div>

    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="id_ESTADO" DataSourceID="adicionarestado" 
        Height="150px" Width="980px" Font-Size="20px" 
        ForeColor="#232B2B" GridLines="None" 
        oniteminserted="DetailsView1_ItemInserted" 
        onitemdeleted="DetailsView1_ItemDeleted" 
        onitemupdated="DetailsView1_ItemUpdated" 
        CellSpacing="5">
        <CommandRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <EditRowStyle HorizontalAlign="Left" />
        <FieldHeaderStyle Width="400px" HorizontalAlign="Center" />
        <Fields>
            <asp:BoundField DataField="id_ESTADO" HeaderText="Código" 
                InsertVisible="False" ReadOnly="True" SortExpression="id_ESTADO" />
            <asp:TemplateField HeaderText="Estado" SortExpression="NOME">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="20px" 
                        MaxLength="50" Text='<%# Bind("NOME") %>' Width="300px" CssClass="biorda"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="*"  Font-Bold="True"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="20px" 
                        MaxLength="50" Text='<%# Bind("NOME") %>' Width="300px" CssClass="biorda"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="*"  Font-Bold="True"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("NOME") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Sigla" SortExpression="SIGLA">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="20px" MaxLength="2" 
                        Text='<%# Bind("SIGLA") %>' Width="300px" CssClass="biorda"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="*"  Font-Bold="True"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="20px" MaxLength="2" 
                        Text='<%# Bind("SIGLA") %>' Width="300px" CssClass="biorda"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="*"  Font-Bold="True"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("SIGLA") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
<asp:CommandField ShowEditButton="True" ShowInsertButton="True" 
                                        ButtonType="Button" 
                                        ShowDeleteButton="True" CancelText="Cancelar" DeleteText="Deletar" 
                                        EditText="Editar" InsertText="Inserir" NewText="Adicionar" 
                                        SelectText="Selecionar" UpdateText="Atualizar"  
                ControlStyle-CssClass="botaos" ControlStyle-BorderWidth="0px" >
<ControlStyle BorderWidth="0px" CssClass="botaos"></ControlStyle>
            </asp:CommandField>
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="adicionarestado" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
        DeleteCommand="DELETE FROM [ESTADO] WHERE [id_ESTADO] = @original_id_ESTADO AND (([NOME] = @original_NOME) OR ([NOME] IS NULL AND @original_NOME IS NULL)) AND (([SIGLA] = @original_SIGLA) OR ([SIGLA] IS NULL AND @original_SIGLA IS NULL))" 
        InsertCommand="INSERT INTO [ESTADO] ([NOME], [SIGLA]) VALUES (@NOME, @SIGLA)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [id_ESTADO], [NOME], [SIGLA] FROM [ESTADO] WHERE ([id_ESTADO] = @id_ESTADO) ORDER BY [id_ESTADO]" 
        
        UpdateCommand="UPDATE [ESTADO] SET [NOME] = @NOME, [SIGLA] = @SIGLA WHERE [id_ESTADO] = @original_id_ESTADO AND (([NOME] = @original_NOME) OR ([NOME] IS NULL AND @original_NOME IS NULL)) AND (([SIGLA] = @original_SIGLA) OR ([SIGLA] IS NULL AND @original_SIGLA IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_id_ESTADO" Type="Int32" />
            <asp:Parameter Name="original_NOME" Type="String" />
            <asp:Parameter Name="original_SIGLA" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NOME" Type="String" />
            <asp:Parameter Name="SIGLA" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="id_ESTADO" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="NOME" Type="String" />
            <asp:Parameter Name="SIGLA" Type="String" />
            <asp:Parameter Name="original_id_ESTADO" Type="Int32" />
            <asp:Parameter Name="original_NOME" Type="String" />
            <asp:Parameter Name="original_SIGLA" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        DataSourceID="addestad" GridLines="Horizontal" Width="980px" 
        AutoGenerateColumns="False" DataKeyNames="id_ESTADO" CellPadding="5" 
        ForeColor="#232B2B" AllowPaging="True" BorderColor="#232B2B" 
        BorderStyle="Solid" BorderWidth="1px">
        <Columns>
           <asp:CommandField ButtonType="Image" 
                                         
                                        SelectImageUrl="~/images/icones/icones/edit-file-icon.png" 
                                       ShowSelectButton="True" />
            <asp:BoundField DataField="id_ESTADO" HeaderText="Código" InsertVisible="False" 
                ReadOnly="True" SortExpression="id_ESTADO" />
            <asp:BoundField DataField="NOME" HeaderText="Estado" SortExpression="NOME" />
            <asp:BoundField DataField="SIGLA" HeaderText="Sigla" SortExpression="SIGLA" />
        </Columns>
        <HeaderStyle BackColor="#232B2B" Font-Size="12px" Height="40px" 
            ForeColor="#ff7f00" />
        <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="12px" />
        <SelectedRowStyle BackColor="#ff7f00" />
    </asp:GridView>

    
    <asp:SqlDataSource ID="addestad" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
        SelectCommand="SELECT [id_ESTADO], [NOME], [SIGLA] FROM [ESTADO]">
    </asp:SqlDataSource>

    

</asp:Content>
