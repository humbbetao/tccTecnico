<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="especialidades_funcionario_adicionar.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.especialidades_funcionario_adicionar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                       <div id="nome_da_pagina">
                            <asp:Label ID="Label13" runat="server" Text="Especialidades do Funcionário"></asp:Label>
                        </div>
                        <br/>
                            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                                DataKeyNames="id_ESPECIALIDADES" 
                                DataSourceID="especilidades_funcionario_add" Height="150px" Width="980px" 
                                ForeColor="#ff7f00" GridLines="None" Font-Size="20px" 
                                onitemdeleted="DetailsView1_ItemDeleted" 
                                oniteminserted="DetailsView1_ItemInserted" 
                                onitemupdated="DetailsView1_ItemUpdated" CellSpacing="5">
                                <FieldHeaderStyle Width="400px" />
                                <Fields>
                                    <asp:BoundField DataField="id_ESPECIALIDADES" HeaderText="Código" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="id_ESPECIALIDADES" />
                                    <asp:TemplateField HeaderText="Especialidade" SortExpression="NOME">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NOME") %>' 
                                                Font-Size="20px" MaxLength="20" Width="300px" CssClass="biorda"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                ErrorMessage="*"  Font-Bold="True" ControlToValidate="TextBox1" 
                                                CssClass="bordia"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NOME") %>' 
                                                Font-Size="20px" Width="300px" MaxLength="20" CssClass="biorda"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="TextBox1" ErrorMessage="*" Font-Size="20px" 
                                                Font-Bold="True" CssClass="bordia"></asp:RequiredFieldValidator>
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
                                <HeaderStyle ForeColor="#232B2B" />
                                <RowStyle ForeColor="#232B2B" HorizontalAlign="Center" />
                            </asp:DetailsView>
                            <asp:SqlDataSource ID="especilidades_funcionario_add" runat="server" 
                                ConflictDetection="CompareAllValues" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                DeleteCommand="DELETE FROM [ESPECIALIDADES_FUNCIONARIO] WHERE [id_ESPECIALIDADES] = @original_id_ESPECIALIDADES AND (([NOME] = @original_NOME) OR ([NOME] IS NULL AND @original_NOME IS NULL))" 
                                InsertCommand="INSERT INTO [ESPECIALIDADES_FUNCIONARIO] ([NOME]) VALUES (@NOME)" 
                                OldValuesParameterFormatString="original_{0}" 
                                SelectCommand="SELECT [id_ESPECIALIDADES], [NOME] FROM [ESPECIALIDADES_FUNCIONARIO] WHERE ([id_ESPECIALIDADES] = @id_ESPECIALIDADES) ORDER BY [id_ESPECIALIDADES]" 
                                
                                UpdateCommand="UPDATE [ESPECIALIDADES_FUNCIONARIO] SET [NOME] = @NOME WHERE [id_ESPECIALIDADES] = @original_id_ESPECIALIDADES AND (([NOME] = @original_NOME) OR ([NOME] IS NULL AND @original_NOME IS NULL))">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_id_ESPECIALIDADES" Type="Int32" />
                                    <asp:Parameter Name="original_NOME" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="NOME" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="GridView1" Name="id_ESPECIALIDADES" 
                                        PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="NOME" Type="String" />
                                    <asp:Parameter Name="original_id_ESPECIALIDADES" Type="Int32" />
                                    <asp:Parameter Name="original_NOME" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <br />
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
                                AutoGenerateColumns="False" DataKeyNames="id_ESPECIALIDADES" 
                                DataSourceID="view_espec" 
                                CellPadding="5" ForeColor="#232B2B" GridLines="None" Width="980px" 
                                BorderColor="#232B2B" BorderStyle="Solid" BorderWidth="1px">
                                <Columns>
                                <asp:CommandField ButtonType="Image" 
                                         
                                        SelectImageUrl="~/images/icones/icones/edit-file-icon.png" 
                                       ShowSelectButton="True" />
                                    <asp:BoundField DataField="id_ESPECIALIDADES" HeaderText="Código" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="id_ESPECIALIDADES" />
                                    <asp:BoundField DataField="NOME" HeaderText="Especialidades" 
                                        SortExpression="NOME" />
                                </Columns>
                                <HeaderStyle BackColor="#232B2B" Font-Size="12px" Height="40px" 
                                    ForeColor="#ff7f00" />
                                <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                <SelectedRowStyle BackColor="#ff7f00" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="view_espec" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                OldValuesParameterFormatString="original_{0}" 
                                
                                SelectCommand="SELECT [id_ESPECIALIDADES], [NOME] FROM [ESPECIALIDADES_FUNCIONARIO]">
                            </asp:SqlDataSource>
</asp:Content>
