<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="tipo_animal_adicionar.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.tipo_animal_adicionar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                       <div id="nome_da_pagina">
                            <asp:Label ID="Label13" runat="server" Text="Tipo De Animal"></asp:Label>
                        </div>
                            <br />
 
                            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                                DataKeyNames="id_TIPO_ANIMAL" DataSourceID="tipoanimaladd" Height="150px" 
                                Width="980px" Font-Size="20px" ForeColor="#232B2B" 
                                GridLines="None" onitemdeleted="DetailsView1_ItemDeleted" 
                                oniteminserted="DetailsView1_ItemInserted" 
                                onitemupdated="DetailsView1_ItemUpdated">
                                <CommandRowStyle HorizontalAlign="Center" />
                                <EditRowStyle ForeColor="#ff7f00" />
                                <Fields>
                                    <asp:BoundField DataField="id_TIPO_ANIMAL" HeaderText="Código" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="id_TIPO_ANIMAL" />
                                    <asp:TemplateField HeaderText="Tipo de Animal" SortExpression="NOME">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NOME") %>' 
                                                Font-Size="20px" Width="300px" MaxLength="20" CssClass="biorda"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="TextBox1" ErrorMessage="*"  Font-Bold="True" 
                                                CssClass="bordia"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NOME") %>' 
                                                Font-Size="20px" Width="300px" MaxLength="20" CssClass="biorda"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                ControlToValidate="TextBox1" ErrorMessage="*"  Font-Bold="True" 
                                                CssClass="bordia"></asp:RequiredFieldValidator>
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
                            </asp:DetailsView>
                            <asp:SqlDataSource ID="tipoanimaladd" runat="server" 
                                ConflictDetection="CompareAllValues" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                DeleteCommand="DELETE FROM [TIPO_ANIMAL] WHERE [id_TIPO_ANIMAL] = @original_id_TIPO_ANIMAL AND (([NOME] = @original_NOME) OR ([NOME] IS NULL AND @original_NOME IS NULL))" 
                                InsertCommand="INSERT INTO [TIPO_ANIMAL] ([NOME]) VALUES (@NOME)" 
                                OldValuesParameterFormatString="original_{0}" 
                                SelectCommand="SELECT [id_TIPO_ANIMAL], [NOME] FROM [TIPO_ANIMAL] WHERE ([id_TIPO_ANIMAL] = @id_TIPO_ANIMAL) ORDER BY [id_TIPO_ANIMAL]" 
                                UpdateCommand="UPDATE [TIPO_ANIMAL] SET [NOME] = @NOME WHERE [id_TIPO_ANIMAL] = @original_id_TIPO_ANIMAL AND (([NOME] = @original_NOME) OR ([NOME] IS NULL AND @original_NOME IS NULL))">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_id_TIPO_ANIMAL" Type="Int32" />
                                    <asp:Parameter Name="original_NOME" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="NOME" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="GridView1" Name="id_TIPO_ANIMAL" 
                                        PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="NOME" Type="String" />
                                    <asp:Parameter Name="original_id_TIPO_ANIMAL" Type="Int32" />
                                    <asp:Parameter Name="original_NOME" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <br />
                            <br />
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="id_TIPO_ANIMAL" DataSourceID="animalview" 
                                AllowPaging="True" AllowSorting="True" GridLines="Horizontal" Width="980px" 
                                CellPadding="5" BorderColor="#232B2B" BorderStyle="Solid" 
                                BorderWidth="1px">
                                <Columns>
                                <asp:CommandField ButtonType="Image" 
                                         
                                        SelectImageUrl="~/images/icones/icones/edit-file-icon.png" 
                                       ShowSelectButton="True" />
                                    <asp:BoundField DataField="id_TIPO_ANIMAL" HeaderText="Código" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="id_TIPO_ANIMAL" />
                                    <asp:BoundField DataField="NOME" HeaderText="Tipo de Animal" 
                                        SortExpression="NOME" />
                                </Columns>
                                <HeaderStyle BackColor="#232B2B" VerticalAlign="Middle" Font-Size="12px" 
                                    ForeColor="#ff7f00" Height="40px" />
                                <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="12px" />
                                
                                <SelectedRowStyle BackColor="#ff7f00" />
                                
                            </asp:GridView>

                            <asp:SqlDataSource ID="animalview" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                SelectCommand="SELECT [id_TIPO_ANIMAL], [NOME] FROM [TIPO_ANIMAL] ORDER BY [id_TIPO_ANIMAL]">
                            </asp:SqlDataSource>

                        </center>
</asp:Content>
