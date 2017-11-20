<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="estado_civil_adicionar.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.estado_civil_adicionar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                       <div id="nome_da_pagina">
                            <asp:Label ID="Label13" runat="server" Text="Estado Civil"></asp:Label>
                        </div>
                        <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="id_ESTADO_CIVIL" DataSourceID="adicionar_estado_civil" Width="980px" 
                                Font-Size="20px" ForeColor="#232B2B" GridLines="None" 
                                oniteminserted="DetailsView1_ItemInserted" 
                                onitemdeleted="DetailsView1_ItemDeleted" 
                                onitemupdated="DetailsView1_ItemUpdated" CellSpacing="5">
        <FieldHeaderStyle Width="400px" HorizontalAlign="Center" />
        <Fields>
            <asp:BoundField DataField="id_ESTADO_CIVIL" HeaderText="Código" 
                InsertVisible="False" ReadOnly="True" SortExpression="id_ESTADO_CIVIL" />
            <asp:TemplateField HeaderText="Estado Civil" SortExpression="NOME">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NOME") %>' 
                        Font-Size="20px" Width="300px" MaxLength="20" CssClass="biorda"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="*"  Font-Bold="True"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NOME") %>' 
                        Font-Size="20px" Width="300px" MaxLength="20" CssClass="biorda"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="*"  Font-Bold="True"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("NOME") %>'></asp:Label>
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
        <HeaderStyle Font-Size="20px" ForeColor="#ff7f00" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="adicionar_estado_civil" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
        DeleteCommand="DELETE FROM [ESTADO_CIVIL] WHERE [id_ESTADO_CIVIL] = @original_id_ESTADO_CIVIL AND (([NOME] = @original_NOME) OR ([NOME] IS NULL AND @original_NOME IS NULL))" 
        InsertCommand="INSERT INTO [ESTADO_CIVIL] ([NOME]) VALUES (@NOME)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [id_ESTADO_CIVIL], [NOME] FROM [ESTADO_CIVIL] WHERE ([id_ESTADO_CIVIL] = @id_ESTADO_CIVIL) ORDER BY [id_ESTADO_CIVIL]" 
        
                                UpdateCommand="UPDATE [ESTADO_CIVIL] SET [NOME] = @NOME WHERE [id_ESTADO_CIVIL] = @original_id_ESTADO_CIVIL AND (([NOME] = @original_NOME) OR ([NOME] IS NULL AND @original_NOME IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_id_ESTADO_CIVIL" Type="Int32" />
            <asp:Parameter Name="original_NOME" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NOME" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="id_ESTADO_CIVIL" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="NOME" Type="String" />
            <asp:Parameter Name="original_id_ESTADO_CIVIL" Type="Int32" />
            <asp:Parameter Name="original_NOME" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
                            <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" DataSourceID="add_civil" AutoGenerateColumns="False" 
                                CellPadding="5" DataKeyNames="id_ESTADO_CIVIL" ForeColor="#232B2B" 
                                GridLines="Horizontal" Width="980px" AllowSorting="True" 
                                BorderColor="#232B2B" BorderStyle="Solid" BorderWidth="1px">
        <Columns>
            <asp:CommandField ButtonType="Image" 
                                         
                                        SelectImageUrl="~/images/icones/icones/edit-file-icon.png" 
                                       ShowSelectButton="True" />
            <asp:BoundField DataField="id_ESTADO_CIVIL" HeaderText="Código" 
                InsertVisible="False" ReadOnly="True" SortExpression="id_ESTADO_CIVIL" />
            <asp:BoundField DataField="NOME" HeaderText="Estado Civil" 
                SortExpression="NOME" />
        </Columns>
        <HeaderStyle BackColor="#232B2B" Height="40px" HorizontalAlign="Center" 
            VerticalAlign="Middle" Font-Size="12px" ForeColor="#ff7f00" />
        <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="12px" />
        <SelectedRowStyle BackColor="#ff7f00" />
    </asp:GridView>
                            <asp:SqlDataSource ID="add_civil" runat="server" 
                                ConflictDetection="CompareAllValues" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                DeleteCommand="DELETE FROM [ESTADO_CIVIL] WHERE [id_ESTADO_CIVIL] = @original_id_ESTADO_CIVIL AND (([NOME] = @original_NOME) OR ([NOME] IS NULL AND @original_NOME IS NULL))" 
                                InsertCommand="INSERT INTO [ESTADO_CIVIL] ([NOME]) VALUES (@NOME)" 
                                OldValuesParameterFormatString="original_{0}" 
                                SelectCommand="SELECT [id_ESTADO_CIVIL], [NOME] FROM [ESTADO_CIVIL]" 
                                UpdateCommand="UPDATE [ESTADO_CIVIL] SET [NOME] = @NOME WHERE [id_ESTADO_CIVIL] = @original_id_ESTADO_CIVIL AND (([NOME] = @original_NOME) OR ([NOME] IS NULL AND @original_NOME IS NULL))">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_id_ESTADO_CIVIL" Type="Int32" />
                                    <asp:Parameter Name="original_NOME" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="NOME" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="NOME" Type="String" />
                                    <asp:Parameter Name="original_id_ESTADO_CIVIL" Type="Int32" />
                                    <asp:Parameter Name="original_NOME" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
</asp:Content>
