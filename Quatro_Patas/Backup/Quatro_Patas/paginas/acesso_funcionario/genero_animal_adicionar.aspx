<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="genero_animal_adicionar.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.genero_animal_adicionar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                       <div id="nome_da_pagina">
                            <asp:Label ID="Label13" runat="server" Text="Gênero"></asp:Label>
                        </div>
                        <br /> 
                            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                                DataKeyNames="id_GENERO" DataSourceID="genero" 
                                Height="150px" Width="980px" ForeColor="#232B2B" 
                                GridLines="None" oniteminserted="DetailsView1_ItemInserted" 
                                Font-Size="20px" onitemdeleted="DetailsView1_ItemDeleted" 
                                onitemupdated="DetailsView1_ItemUpdated">
                                <FieldHeaderStyle Width="400px" HorizontalAlign="Center" />
                                <Fields>
                                    <asp:BoundField DataField="id_GENERO" HeaderText="Código" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="id_GENERO" />
                                    <asp:TemplateField HeaderText="Gênero" SortExpression="NOME">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NOME") %>' 
                                                Font-Size="20px" Width="300px" MaxLength="1" CssClass="biorda"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="TextBox1" ErrorMessage="*"  Font-Bold="True"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NOME") %>' 
                                                Font-Size="20px" Width="300px" MaxLength="1" CssClass="biorda"></asp:TextBox>
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
                                <RowStyle HorizontalAlign="Center" />
                            </asp:DetailsView>
                            <asp:SqlDataSource ID="genero" runat="server" 
                                ConflictDetection="CompareAllValues" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                DeleteCommand="DELETE FROM [GENERO] WHERE [id_GENERO] = @original_id_GENERO AND (([NOME] = @original_NOME) OR ([NOME] IS NULL AND @original_NOME IS NULL))" 
                                InsertCommand="INSERT INTO [GENERO] ([NOME]) VALUES (@NOME)" 
                                OldValuesParameterFormatString="original_{0}" 
                                SelectCommand="SELECT [id_GENERO], [NOME] FROM [GENERO] WHERE ([id_GENERO] = @id_GENERO) ORDER BY [id_GENERO]" 
                                
                                UpdateCommand="UPDATE [GENERO] SET [NOME] = @NOME WHERE [id_GENERO] = @original_id_GENERO AND (([NOME] = @original_NOME) OR ([NOME] IS NULL AND @original_NOME IS NULL))">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_id_GENERO" Type="Int32" />
                                    <asp:Parameter Name="original_NOME" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="NOME" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="GridView1" Name="id_GENERO" 
                                        PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="NOME" Type="String" />
                                    <asp:Parameter Name="original_id_GENERO" Type="Int32" />
                                    <asp:Parameter Name="original_NOME" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <br />
                            <br />
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="id_GENERO" DataSourceID="generoview" AllowSorting="True" 
                                ForeColor="#232B2B" GridLines="Horizontal" Width="980px" CellPadding="5" 
                                BorderColor="#232B2B" BorderStyle="Solid" BorderWidth="1px">
                                <Columns>
                                    <asp:CommandField ButtonType="Image" 
                                         
                                        SelectImageUrl="~/images/icones/icones/edit-file-icon.png" 
                                       ShowSelectButton="True" />
                                    <asp:BoundField DataField="id_GENERO" HeaderText="Código" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="id_GENERO" />
                                    <asp:BoundField DataField="NOME" HeaderText="Gênero" SortExpression="NOME" />
                                </Columns>
                                <HeaderStyle BackColor="#232B2B" Font-Size="12px" Height="40px" 
                                    ForeColor="#ff7f00" />
                                <RowStyle Font-Size="12px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <SelectedRowStyle BackColor="#ff7f00" />
                            </asp:GridView>

                            <asp:SqlDataSource ID="generoview" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                SelectCommand="SELECT [id_GENERO], [NOME] FROM [GENERO]">
                            </asp:SqlDataSource>

</asp:Content>
