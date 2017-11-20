<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="porte_animal_adicionar.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.porte_animal_adicionar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                       <div id="nome_da_pagina">
                            <asp:Label ID="Label13" runat="server" Text="Porte do Animal"></asp:Label>
                        </div>
                        <br />
                            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                                DataKeyNames="id_PORTE_ANIMAL" DataSourceID="porta_animal_adicionar" 
                                Height="150px" Width="980px" 
                                BorderWidth="0px" GridLines="None" 
                                oniteminserted="DetailsView1_ItemInserted" Font-Size="20px" 
                                ForeColor="#232B2B" onitemdeleted="DetailsView1_ItemDeleted" 
                                onitemupdated="DetailsView1_ItemUpdated" CellPadding="5">
                                <EditRowStyle ForeColor="#ff7f00" />
                                <FieldHeaderStyle Width="400px" />
                                <Fields>
                                    <asp:BoundField DataField="id_PORTE_ANIMAL" HeaderText="Código" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="id_PORTE_ANIMAL" />
                                    <asp:TemplateField HeaderText="Porte do Animal" SortExpression="TAMANHO">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Font-Size="20px" 
                                                Text='<%# Bind("TAMANHO") %>' Width="300px" MaxLength="20" 
                                                CssClass="biorda"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                ControlToValidate="TextBox1" ErrorMessage="*"  Font-Bold="True" 
                                                Font-Overline="False" Font-Size="20px" Height="5px" CssClass="bordia"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Font-Size="20px" 
                                                Text='<%# Bind("TAMANHO") %>' Width="300px" MaxLength="20" 
                                                CssClass="biorda"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="TextBox1" ErrorMessage="*"  Font-Bold="True" 
                                                CssClass="bordia"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("TAMANHO") %>'></asp:Label>
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
                            <asp:SqlDataSource ID="porta_animal_adicionar" runat="server" 
                                ConflictDetection="CompareAllValues" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                DeleteCommand="DELETE FROM [PORTE_ANIMAL] WHERE [id_PORTE_ANIMAL] = @original_id_PORTE_ANIMAL AND (([TAMANHO] = @original_TAMANHO) OR ([TAMANHO] IS NULL AND @original_TAMANHO IS NULL))" 
                                InsertCommand="INSERT INTO [PORTE_ANIMAL] ([TAMANHO]) VALUES (@TAMANHO)" 
                                OldValuesParameterFormatString="original_{0}" 
                                SelectCommand="SELECT [id_PORTE_ANIMAL], [TAMANHO] FROM [PORTE_ANIMAL] WHERE ([id_PORTE_ANIMAL] = @id_PORTE_ANIMAL)" 
                                
                                UpdateCommand="UPDATE [PORTE_ANIMAL] SET [TAMANHO] = @TAMANHO WHERE [id_PORTE_ANIMAL] = @original_id_PORTE_ANIMAL AND (([TAMANHO] = @original_TAMANHO) OR ([TAMANHO] IS NULL AND @original_TAMANHO IS NULL))">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_id_PORTE_ANIMAL" Type="Int32" />
                                    <asp:Parameter Name="original_TAMANHO" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="TAMANHO" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="GridView1" Name="id_PORTE_ANIMAL" 
                                        PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="TAMANHO" Type="String" />
                                    <asp:Parameter Name="original_id_PORTE_ANIMAL" Type="Int32" />
                                    <asp:Parameter Name="original_TAMANHO" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <br />
                            <br />
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
                                AutoGenerateColumns="False" DataKeyNames="id_PORTE_ANIMAL" 
                                DataSourceID="DATAANIMAL" AllowPaging="True" Width="980px" 
                                ForeColor="#232B2B" GridLines="None" CellPadding="5" BorderColor="#232B2B" 
                                BorderStyle="Solid" BorderWidth="1px">
                                <Columns>
                                <asp:CommandField ButtonType="Image" 
                                         
                                        SelectImageUrl="~/images/icones/icones/edit-file-icon.png" 
                                       ShowSelectButton="True" />
                                    <asp:BoundField DataField="id_PORTE_ANIMAL" HeaderText="Código" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="id_PORTE_ANIMAL" />
                                    <asp:BoundField DataField="TAMANHO" HeaderText="Porte do Animal" 
                                        SortExpression="TAMANHO" />
                                        
                                </Columns>
                                <HeaderStyle BackColor="#232B2B" Font-Size="12px" ForeColor="#ff7f00" 
                                    Height="40px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <RowStyle ForeColor="#232B2B" HorizontalAlign="Center" VerticalAlign="Middle" 
                                    Font-Size="12px" />
                                <SelectedRowStyle BackColor="#ff7f00" />
                            </asp:GridView>

                            <asp:SqlDataSource ID="DATAANIMAL" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                SelectCommand="SELECT [id_PORTE_ANIMAL], [TAMANHO] FROM [PORTE_ANIMAL] ORDER BY [id_PORTE_ANIMAL]">
                            </asp:SqlDataSource>

</asp:Content>
