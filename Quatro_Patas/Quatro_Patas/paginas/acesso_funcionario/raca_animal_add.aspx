<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="raca_animal_add.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.raca_animal_add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                       <div id="nome_da_pagina">
                            <asp:Label ID="Label13" runat="server" Text="Raça do Animal"></asp:Label>
                        </div>
                            <br />

                            <asp:SqlDataSource ID="SqlDataSource1h" runat="server" 
                                ConflictDetection="CompareAllValues" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                DeleteCommand="DELETE FROM [RACA_ANIMAL] WHERE [id_RACA_ANIMAL] = @original_id_RACA_ANIMAL AND [TIPO_ANIMAL_id_TIPO_ANIMAL] = @original_TIPO_ANIMAL_id_TIPO_ANIMAL AND (([NOME] = @original_NOME) OR ([NOME] IS NULL AND @original_NOME IS NULL))" 
                                InsertCommand="INSERT INTO [RACA_ANIMAL] ([TIPO_ANIMAL_id_TIPO_ANIMAL], [NOME]) VALUES (@TIPO_ANIMAL_id_TIPO_ANIMAL, @NOME)" 
                                OldValuesParameterFormatString="original_{0}" 
                                SelectCommand="SELECT [id_RACA_ANIMAL], [TIPO_ANIMAL_id_TIPO_ANIMAL], [NOME] FROM [RACA_ANIMAL] WHERE ([id_RACA_ANIMAL] = @id_RACA_ANIMAL)" 
                                UpdateCommand="UPDATE [RACA_ANIMAL] SET [TIPO_ANIMAL_id_TIPO_ANIMAL] = @TIPO_ANIMAL_id_TIPO_ANIMAL, [NOME] = @NOME WHERE [id_RACA_ANIMAL] = @original_id_RACA_ANIMAL AND [TIPO_ANIMAL_id_TIPO_ANIMAL] = @original_TIPO_ANIMAL_id_TIPO_ANIMAL AND (([NOME] = @original_NOME) OR ([NOME] IS NULL AND @original_NOME IS NULL))">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_id_RACA_ANIMAL" Type="Int32" />
                                    <asp:Parameter Name="original_TIPO_ANIMAL_id_TIPO_ANIMAL" Type="Int32" />
                                    <asp:Parameter Name="original_NOME" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="TIPO_ANIMAL_id_TIPO_ANIMAL" Type="Int32" />
                                    <asp:Parameter Name="NOME" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="GridView1" Name="id_RACA_ANIMAL" 
                                        PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="TIPO_ANIMAL_id_TIPO_ANIMAL" Type="Int32" />
                                    <asp:Parameter Name="NOME" Type="String" />
                                    <asp:Parameter Name="original_id_RACA_ANIMAL" Type="Int32" />
                                    <asp:Parameter Name="original_TIPO_ANIMAL_id_TIPO_ANIMAL" Type="Int32" />
                                    <asp:Parameter Name="original_NOME" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        <asp:DetailsView ID="DetailsView1" runat="server" 
                           DataSourceID="SqlDataSource1rfrf" Height="50px" Width="980px" 
                           AutoGenerateRows="False" DataKeyNames="id_RACA_ANIMAL" CellPadding="5" 
                           CellSpacing="5" GridLines="None">
                                                           <CommandRowStyle HorizontalAlign="Center" />
                                                           <FieldHeaderStyle HorizontalAlign="Center" Width="400px" />
                                                           <Fields>
                                                               <asp:BoundField DataField="id_RACA_ANIMAL" HeaderText="Código" 
                                                                   InsertVisible="False" ReadOnly="True" SortExpression="id_RACA_ANIMAL" />
                                                               <asp:TemplateField HeaderText="Tipo Animal" 
                                                                   SortExpression="TIPO_ANIMAL_id_TIPO_ANIMAL">
                                                                   <EditItemTemplate>
                                                                       <asp:DropDownList ID="DropDownList1" runat="server" CssClass="biorda" 
                                                                           DataSourceID="SqlDataSource1gtgt" DataTextField="NOME" 
                                                                           DataValueField="id_TIPO_ANIMAL" 
                                                                           SelectedValue='<%# Bind("Tipo_animal_id_tipo_animal") %>' Width="300px">
                                                                       </asp:DropDownList>
                                                                       <asp:SqlDataSource ID="SqlDataSource1gtgt" runat="server" 
                                                                           ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                                                           SelectCommand="SELECT [id_TIPO_ANIMAL], [NOME] FROM [TIPO_ANIMAL]">
                                                                       </asp:SqlDataSource>
                                                                   </EditItemTemplate>
                                                                   <InsertItemTemplate>
                                                                       <asp:DropDownList ID="DropDownList1" runat="server" CssClass="biorda" 
                                                                           DataSourceID="SqlDataSource1rfrfrrfrfrf" DataTextField="NOME" 
                                                                           DataValueField="id_TIPO_ANIMAL" 
                                                                           SelectedValue='<%# Bind("Tipo_animal_id_tipo_animal") %>' Width="300px">
                                                                       </asp:DropDownList>
                                                                       <asp:SqlDataSource ID="SqlDataSource1rfrfrrfrfrf" runat="server" 
                                                                           ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                                                           SelectCommand="SELECT [id_TIPO_ANIMAL], [NOME] FROM [TIPO_ANIMAL]">
                                                                       </asp:SqlDataSource>
                                                                   </InsertItemTemplate>
                                                                   <ItemTemplate>
                                                                       <asp:Label ID="Label2" runat="server" 
                                                                           Text='<%# Bind("TIPO_ANIMAL_id_TIPO_ANIMAL") %>'></asp:Label>
                                                                   </ItemTemplate>
                                                               </asp:TemplateField>
                                                               <asp:TemplateField HeaderText="Raça Animal" SortExpression="NOME">
                                                                   <EditItemTemplate>
                                                                       <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NOME") %>' 
                                                                           CssClass="biorda" Width="300px"></asp:TextBox>
                                                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                                           ControlToValidate="TextBox1" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                                   </EditItemTemplate>
                                                                   <InsertItemTemplate>
                                                                       <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NOME") %>' 
                                                                           CssClass="biorda" Width="300px"></asp:TextBox>
                                                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                                           ControlToValidate="TextBox1" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
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
                                                           <RowStyle Font-Size="20px" HorizontalAlign="Left" />
                       </asp:DetailsView>
                        <asp:SqlDataSource ID="SqlDataSource1rfrf" runat="server" 
                           ConflictDetection="CompareAllValues" 
                           ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                           DeleteCommand="DELETE FROM [RACA_ANIMAL] WHERE [id_RACA_ANIMAL] = @original_id_RACA_ANIMAL AND [TIPO_ANIMAL_id_TIPO_ANIMAL] = @original_TIPO_ANIMAL_id_TIPO_ANIMAL AND (([NOME] = @original_NOME) OR ([NOME] IS NULL AND @original_NOME IS NULL))" 
                           InsertCommand="INSERT INTO [RACA_ANIMAL] ([TIPO_ANIMAL_id_TIPO_ANIMAL], [NOME]) VALUES (@TIPO_ANIMAL_id_TIPO_ANIMAL, @NOME)" 
                           OldValuesParameterFormatString="original_{0}" 
                           SelectCommand="SELECT [id_RACA_ANIMAL], [TIPO_ANIMAL_id_TIPO_ANIMAL], [NOME] FROM [RACA_ANIMAL] WHERE ([id_RACA_ANIMAL] = @id_RACA_ANIMAL)" 
                           UpdateCommand="UPDATE [RACA_ANIMAL] SET [TIPO_ANIMAL_id_TIPO_ANIMAL] = @TIPO_ANIMAL_id_TIPO_ANIMAL, [NOME] = @NOME WHERE [id_RACA_ANIMAL] = @original_id_RACA_ANIMAL AND [TIPO_ANIMAL_id_TIPO_ANIMAL] = @original_TIPO_ANIMAL_id_TIPO_ANIMAL AND (([NOME] = @original_NOME) OR ([NOME] IS NULL AND @original_NOME IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_id_RACA_ANIMAL" Type="Int32" />
                                <asp:Parameter Name="original_TIPO_ANIMAL_id_TIPO_ANIMAL" Type="Int32" />
                                <asp:Parameter Name="original_NOME" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="TIPO_ANIMAL_id_TIPO_ANIMAL" Type="Int32" />
                                <asp:Parameter Name="NOME" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GridView1" Name="id_RACA_ANIMAL" 
                                    PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="TIPO_ANIMAL_id_TIPO_ANIMAL" Type="Int32" />
                                <asp:Parameter Name="NOME" Type="String" />
                                <asp:Parameter Name="original_id_RACA_ANIMAL" Type="Int32" />
                                <asp:Parameter Name="original_TIPO_ANIMAL_id_TIPO_ANIMAL" Type="Int32" />
                                <asp:Parameter Name="original_NOME" Type="String" />
                            </UpdateParameters>
                       </asp:SqlDataSource>

                            <asp:SqlDataSource ID="raca_addd" runat="server" 
                                ConflictDetection="CompareAllValues" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                DeleteCommand="DELETE FROM [RACA_ANIMAL] WHERE [id_RACA_ANIMAL] = @original_id_RACA_ANIMAL AND [TIPO_ANIMAL_id_TIPO_ANIMAL] = @original_TIPO_ANIMAL_id_TIPO_ANIMAL AND (([NOME] = @original_NOME) OR ([NOME] IS NULL AND @original_NOME IS NULL))" 
                                InsertCommand="INSERT INTO [RACA_ANIMAL] ([TIPO_ANIMAL_id_TIPO_ANIMAL], [NOME]) VALUES (@TIPO_ANIMAL_id_TIPO_ANIMAL, @NOME)" 
                                OldValuesParameterFormatString="original_{0}" 
                                SelectCommand="SELECT [id_RACA_ANIMAL], [TIPO_ANIMAL_id_TIPO_ANIMAL], [NOME] FROM [RACA_ANIMAL] WHERE ([id_RACA_ANIMAL] = @id_RACA_ANIMAL)" 
                                
                                
                                UpdateCommand="UPDATE [RACA_ANIMAL] SET [TIPO_ANIMAL_id_TIPO_ANIMAL] = @TIPO_ANIMAL_id_TIPO_ANIMAL, [NOME] = @NOME WHERE [id_RACA_ANIMAL] = @original_id_RACA_ANIMAL AND [TIPO_ANIMAL_id_TIPO_ANIMAL] = @original_TIPO_ANIMAL_id_TIPO_ANIMAL AND (([NOME] = @original_NOME) OR ([NOME] IS NULL AND @original_NOME IS NULL))">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_id_RACA_ANIMAL" Type="Int32" />
                                    <asp:Parameter Name="original_TIPO_ANIMAL_id_TIPO_ANIMAL" Type="Int32" />
                                    <asp:Parameter Name="original_NOME" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="TIPO_ANIMAL_id_TIPO_ANIMAL" Type="Int32" />
                                    <asp:Parameter Name="NOME" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="GridView1" Name="id_RACA_ANIMAL" 
                                        PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="TIPO_ANIMAL_id_TIPO_ANIMAL" Type="Int32" />
                                    <asp:Parameter Name="NOME" Type="String" />
                                    <asp:Parameter Name="original_id_RACA_ANIMAL" Type="Int32" />
                                    <asp:Parameter Name="original_TIPO_ANIMAL_id_TIPO_ANIMAL" Type="Int32" />
                                    <asp:Parameter Name="original_NOME" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <br />

                            <br />
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Código" 
                                DataSourceID="raca_tipo_animal" GridLines="Horizontal" Width="980px" 
                                ForeColor="#232B2B" CellPadding="5" BorderColor="#232B2B" 
                           BorderStyle="Solid" BorderWidth="1px">
                                <Columns>
                                    <asp:CommandField ButtonType="Image" 
                                         
                                        SelectImageUrl="~/images/icones/icones/edit-file-icon.png" 
                                       ShowSelectButton="True" />
                                    <asp:BoundField DataField="Código" HeaderText="Código" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="Código" />
                                    <asp:BoundField DataField="Raça de Animal" HeaderText="Raça de Animal" 
                                        SortExpression="Raça de Animal" />
                                    <asp:BoundField DataField="Tipo de Animal" HeaderText="Tipo de Animal" 
                                        SortExpression="Tipo de Animal" />
                                </Columns>
                                <HeaderStyle BackColor="#232B2B" Font-Size="12px" ForeColor="#ff7f00" 
                                    Height="40px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="12px" />
                                <SelectedRowStyle BackColor="#ff7f00" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="raca_tipo_animal" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                
                                SelectCommand="SELECT RACA_ANIMAL.id_RACA_ANIMAL AS Código, RACA_ANIMAL.NOME AS [Raça de Animal], TIPO_ANIMAL.NOME AS [Tipo de Animal] FROM RACA_ANIMAL INNER JOIN TIPO_ANIMAL ON RACA_ANIMAL.TIPO_ANIMAL_id_TIPO_ANIMAL = TIPO_ANIMAL.id_TIPO_ANIMAL">
                            </asp:SqlDataSource>

</asp:Content>
