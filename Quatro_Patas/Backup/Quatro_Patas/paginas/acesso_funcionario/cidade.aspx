<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="cidade.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.cidade" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                        <div id="nome_da_pagina">
                            <asp:Label ID="Label13" runat="server" Text="Cidade"></asp:Label>
                        </div>

                        <br />
    <asp:DetailsView ID="DetailsView1" runat="server" Width="980px" 
                            AutoGenerateRows="False" DataKeyNames="id_CIDADE" 
                                DataSourceID="SqlDataSource1" CellPadding="1" GridLines="None" 
                                oniteminserted="DetailsView1_ItemInserted" Font-Size="20px" 
                                onitemdeleted="DetailsView1_ItemDeleted" 
                                onitemupdated="DetailsView1_ItemUpdated" CellSpacing="5">
        <CommandRowStyle HorizontalAlign="Center" />
        <EditRowStyle ForeColor="#232B2B" />
        <FieldHeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" 
            ForeColor="#232B2B" Width="400px" />
        <Fields>
            <asp:BoundField DataField="id_CIDADE" HeaderText="Código" 
                InsertVisible="False" ReadOnly="True" SortExpression="id_CIDADE" />
            <asp:TemplateField HeaderText="Cidade" SortExpression="NOME">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="20px" MaxLength="50" 
                        Text='<%# Bind("NOME") %>' Width="300px" CssClass="biorda"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="*"  Font-Bold="True"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="20px" MaxLength="50" 
                        Text='<%# Bind("NOME") %>' Width="300px" CssClass="biorda"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="*"  Font-Bold="True"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("NOME") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="UF" SortExpression="ESTADO_id_ESTADO">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="bfgbfgb" 
                        DataTextField="SIGLA" DataValueField="id_ESTADO" Font-Size="20px" 
                        SelectedValue='<%# Bind("ESTADO_id_ESTADO") %>' Width="300px" 
                        CssClass="biorda">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="bfgbfgb" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                        SelectCommand="SELECT [id_ESTADO], [SIGLA] FROM [ESTADO]">
                    </asp:SqlDataSource>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="fgbgfb" 
                        DataTextField="SIGLA" DataValueField="id_ESTADO" Font-Size="20px" 
                        SelectedValue='<%# Bind("ESTADO_id_ESTADO") %>' Width="300px" 
                        CssClass="biorda">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="fgbgfb" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                        SelectCommand="SELECT [id_ESTADO], [SIGLA] FROM [ESTADO]">
                    </asp:SqlDataSource>
                    <br />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("ESTADO_id_ESTADO") %>'></asp:Label>
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
        <FooterStyle Wrap="False" />
        <HeaderStyle BackColor="#232B2B" BorderWidth="0px" ForeColor="#ff7f00" 
            HorizontalAlign="Center" VerticalAlign="Middle" Width="300px" />
        <RowStyle HorizontalAlign="Left" VerticalAlign="Middle" />
    </asp:DetailsView>

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                            OldValuesParameterFormatString="original_{0}" 
                            
                                SelectCommand="SELECT [id_CIDADE], [ESTADO_id_ESTADO], [NOME] FROM [CIDADE] WHERE ([id_CIDADE] = @id_CIDADE) ORDER BY [id_CIDADE]" 
                                ConflictDetection="CompareAllValues" 
                                DeleteCommand="DELETE FROM [CIDADE] WHERE [id_CIDADE] = @original_id_CIDADE AND [ESTADO_id_ESTADO] = @original_ESTADO_id_ESTADO AND (([NOME] = @original_NOME) OR ([NOME] IS NULL AND @original_NOME IS NULL))" 
                                InsertCommand="INSERT INTO [CIDADE] ([ESTADO_id_ESTADO], [NOME]) VALUES (@ESTADO_id_ESTADO, @NOME)" 
                                
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
                                <asp:ControlParameter ControlID="GridView1" Name="id_CIDADE" 
                                    PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="ESTADO_id_ESTADO" Type="Int32" />
                                <asp:Parameter Name="NOME" Type="String" />
                                <asp:Parameter Name="original_id_CIDADE" Type="Int32" />
                                <asp:Parameter Name="original_ESTADO_id_ESTADO" Type="Int32" />
                                <asp:Parameter Name="original_NOME" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <br />
                        <br /><br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="Código" DataSourceID="esxibircidade" GridLines="None" 
                                Width="980px" AllowPaging="True" AllowSorting="True" CellPadding="5" 
                                BorderColor="#232B2B" BorderStyle="Solid" BorderWidth="1px">
                                <Columns>
                                <asp:CommandField ButtonType="Image" 
                                         
                                        SelectImageUrl="~/images/icones/icones/edit-file-icon.png" 
                                       ShowSelectButton="True" />
                                    <asp:BoundField DataField="Código" HeaderText="Código" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="Código" />
                                    <asp:BoundField DataField="Cidade" HeaderText="Cidade" 
                                        SortExpression="Cidade" />
                                    <asp:BoundField DataField="UF" HeaderText="UF" SortExpression="UF" />
                                </Columns>
                                <HeaderStyle BackColor="#232B2B" BorderWidth="0px" ForeColor="#ff7f00" 
                                    Font-Size="12px" Height="40px" />
                                <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="12px" />
                                <SelectedRowStyle BackColor="#ff7f00" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="esxibircidade" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                
                                SelectCommand="SELECT CIDADE.id_CIDADE AS Código, CIDADE.NOME AS Cidade, ESTADO.SIGLA AS UF FROM CIDADE INNER JOIN ESTADO ON CIDADE.ESTADO_id_ESTADO = ESTADO.id_ESTADO">
                            </asp:SqlDataSource>
                            <br />

</asp:Content>
