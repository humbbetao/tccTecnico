<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="tipo_produto_add.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.tipo_produto_add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                       <div id="nome_da_pagina">
                            <asp:Label ID="Label13" runat="server" Text="Tipo de Produto"></asp:Label>
                        </div>
                      
<br />                       


                            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                                DataKeyNames="idTIPO_PRODUTO" DataSourceID="SqlDataSource1" Height="150px" 
                                Width="980px" 
                                GridLines="None" oniteminserted="DetailsView1_ItemInserted" 
                                onitemdeleted="DetailsView1_ItemDeleted" 
                                onitemupdated="DetailsView1_ItemUpdated" ForeColor="#232B2B">
                                <CommandRowStyle HorizontalAlign="Center" />
                                <Fields>
                                    <asp:BoundField DataField="idTIPO_PRODUTO" HeaderText="Código" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="idTIPO_PRODUTO" />
                                    <asp:TemplateField HeaderText="Tipo de Produto" SortExpression="TIPO_PRODUTO">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Font-Size="20px" 
                                                Text='<%# Bind("TIPO_PRODUTO") %>' Width="300px" MaxLength="50" 
                                                CssClass="biorda"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                ControlToValidate="TextBox1" ErrorMessage="*"  Font-Bold="True" 
                                                Font-Size="20px"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Font-Size="20px" 
                                                Text='<%# Bind("TIPO_PRODUTO") %>' Width="300px" MaxLength="50" 
                                                CssClass="biorda"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="TextBox1" ErrorMessage="*"  Font-Bold="True" 
                                                Font-Size="20px"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("TIPO_PRODUTO") %>'></asp:Label>
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
                                <HeaderStyle Width="150px" />
                                <InsertRowStyle HorizontalAlign="Center" 
                                    VerticalAlign="Middle" />
                                <RowStyle Font-Size="20px" ForeColor="#232B2B" />
                            </asp:DetailsView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConflictDetection="CompareAllValues" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                DeleteCommand="DELETE FROM [TIPO_PRODUTO] WHERE [idTIPO_PRODUTO] = @original_idTIPO_PRODUTO AND (([TIPO_PRODUTO] = @original_TIPO_PRODUTO) OR ([TIPO_PRODUTO] IS NULL AND @original_TIPO_PRODUTO IS NULL))" 
                                InsertCommand="INSERT INTO [TIPO_PRODUTO] ([TIPO_PRODUTO]) VALUES (@TIPO_PRODUTO)" 
                                OldValuesParameterFormatString="original_{0}" 
                                SelectCommand="SELECT [idTIPO_PRODUTO], [TIPO_PRODUTO] FROM [TIPO_PRODUTO] WHERE ([idTIPO_PRODUTO] = @idTIPO_PRODUTO)" 
                                UpdateCommand="UPDATE [TIPO_PRODUTO] SET [TIPO_PRODUTO] = @TIPO_PRODUTO WHERE [idTIPO_PRODUTO] = @original_idTIPO_PRODUTO AND (([TIPO_PRODUTO] = @original_TIPO_PRODUTO) OR ([TIPO_PRODUTO] IS NULL AND @original_TIPO_PRODUTO IS NULL))">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_idTIPO_PRODUTO" Type="Int32" />
                                    <asp:Parameter Name="original_TIPO_PRODUTO" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="TIPO_PRODUTO" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="GridView1" Name="idTIPO_PRODUTO" 
                                        PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="TIPO_PRODUTO" Type="String" />
                                    <asp:Parameter Name="original_idTIPO_PRODUTO" Type="Int32" />
                                    <asp:Parameter Name="original_TIPO_PRODUTO" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="tipo_produto_adicionar" runat="server" 
                                ConflictDetection="CompareAllValues" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                DeleteCommand="DELETE FROM [TIPO_PRODUTO] WHERE [idTIPO_PRODUTO] = @original_idTIPO_PRODUTO AND (([TIPO_PRODUTO] = @original_TIPO_PRODUTO) OR ([TIPO_PRODUTO] IS NULL AND @original_TIPO_PRODUTO IS NULL))" 
                                InsertCommand="INSERT INTO [TIPO_PRODUTO] ([TIPO_PRODUTO]) VALUES (@TIPO_PRODUTO)" 
                                OldValuesParameterFormatString="original_{0}" 
                                SelectCommand="SELECT [idTIPO_PRODUTO], [TIPO_PRODUTO] FROM [TIPO_PRODUTO]" 
                                UpdateCommand="UPDATE [TIPO_PRODUTO] SET [TIPO_PRODUTO] = @TIPO_PRODUTO WHERE [idTIPO_PRODUTO] = @original_idTIPO_PRODUTO AND (([TIPO_PRODUTO] = @original_TIPO_PRODUTO) OR ([TIPO_PRODUTO] IS NULL AND @original_TIPO_PRODUTO IS NULL))">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_idTIPO_PRODUTO" Type="Int32" />
                                    <asp:Parameter Name="original_TIPO_PRODUTO" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="TIPO_PRODUTO" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="TIPO_PRODUTO" Type="String" />
                                    <asp:Parameter Name="original_idTIPO_PRODUTO" Type="Int32" />
                                    <asp:Parameter Name="original_TIPO_PRODUTO" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <br />

                            <br />
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idTIPO_PRODUTO" 
                                DataSourceID="tipo_produto_adicionar" GridLines="Horizontal" Width="980px" 
                                ForeColor="#232B2B" CellPadding="5" BorderColor="#232B2B" 
                                BorderStyle="Solid" BorderWidth="1px">
                                <Columns>
                                    <asp:CommandField ButtonType="Image" 
                                         
                                        SelectImageUrl="~/images/icones/icones/edit-file-icon.png" 
ShowSelectButton="True" 
                                        EditImageUrl="~/images/edit.fw.png" />
                                    <asp:BoundField DataField="idTIPO_PRODUTO" HeaderText="Código" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="idTIPO_PRODUTO" />
                                    <asp:BoundField DataField="TIPO_PRODUTO" HeaderText="Tipo de Produto" 
                                        SortExpression="TIPO_PRODUTO" />
                                </Columns>
                                <HeaderStyle BackColor="#232B2B" ForeColor="#ff7f00" Height="40px" 
                                    HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="12px" />
                                <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="12px" />
                                <SelectedRowStyle BackColor="#ff7f00" />
                            </asp:GridView>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />

</asp:Content>
