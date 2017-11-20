<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="produtos_add.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.produtos_add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                       <div id="nome_da_pagina">
                            <asp:Label ID="Label13" runat="server" Text="Produtos"></asp:Label>
                        </div>

                       <br />

                            <br />
                            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                                DataKeyNames="id_PRODUTOS" DataSourceID="produtoseofeir" 
                                Width="980px" CellPadding="0" CellSpacing="5" 
                                GridLines="None" Font-Size="20px" ForeColor="#232B2B" 
                           onitemdeleted="DetailsView1_ItemDeleted" 
                           oniteminserted="DetailsView1_ItemInserted" 
                           onitemupdated="DetailsView1_ItemUpdated">
                                <CommandRowStyle HorizontalAlign="Center" />
                                <EditRowStyle HorizontalAlign="Left" VerticalAlign="Top" />
                                <EmptyDataRowStyle HorizontalAlign="Left" />
                                <FieldHeaderStyle HorizontalAlign="Center" Width="400px" />
                                <Fields>
                                    <asp:BoundField DataField="id_PRODUTOS" HeaderText="Código" 
                                        ReadOnly="True" SortExpression="id_PRODUTOS" InsertVisible="False" />
                                    <asp:TemplateField HeaderText="Tipo Produto" 
                                        SortExpression="TIPO_PRODUTO_idTIPO_PRODUTO">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="biorda" 
                                                DataSourceID="SqlDataSource1rfrf" DataTextField="TIPO_PRODUTO" 
                                                DataValueField="idTIPO_PRODUTO" 
                                                SelectedValue='<%# Bind("TIPO_PRODUTO_idTIPO_PRODUTO") %>' Width="300px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1rfrf" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                                SelectCommand="SELECT [idTIPO_PRODUTO], [TIPO_PRODUTO] FROM [TIPO_PRODUTO]">
                                            </asp:SqlDataSource>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="biorda" 
                                                DataSourceID="SqlDataSource1dededed" DataTextField="TIPO_PRODUTO" 
                                                DataValueField="idTIPO_PRODUTO" 
                                                SelectedValue='<%# Bind("TIPO_PRODUTO_idTIPO_PRODUTO") %>' Width="300px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1dededed" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                                SelectCommand="SELECT [idTIPO_PRODUTO], [TIPO_PRODUTO] FROM [TIPO_PRODUTO]">
                                            </asp:SqlDataSource>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" 
                                                Text='<%# Bind("TIPO_PRODUTO_idTIPO_PRODUTO") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Produto" SortExpression="NOME">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("NOME") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="TextBox3" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("NOME") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                ControlToValidate="TextBox3" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("NOME") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Observação" SortExpression="OBSERVACAO">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" CssClass="biorda" Rows="6" 
                                                Text='<%# Bind("OBSERVACAO") %>' TextMode="MultiLine"></asp:TextBox>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" CssClass="biorda" Rows="6" 
                                                Text='<%# Bind("OBSERVACAO") %>' TextMode="MultiLine"></asp:TextBox>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("OBSERVACAO") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Quantidade" SortExpression="QUANTIDADE">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("QUANTIDADE") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                ControlToValidate="TextBox1" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("QUANTIDADE") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                ControlToValidate="TextBox1" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("QUANTIDADE") %>'></asp:Label>
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
                                <HeaderStyle HorizontalAlign="Left" VerticalAlign="Top" />
                                <InsertRowStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                <RowStyle HorizontalAlign="Left" VerticalAlign="Top" />
                            </asp:DetailsView>
                            <asp:SqlDataSource ID="produtoseofeir" runat="server" 
                                ConflictDetection="CompareAllValues" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                DeleteCommand="DELETE FROM [PRODUTOS] WHERE [id_PRODUTOS] = @original_id_PRODUTOS AND [TIPO_PRODUTO_idTIPO_PRODUTO] = @original_TIPO_PRODUTO_idTIPO_PRODUTO AND (([NOME] = @original_NOME) OR ([NOME] IS NULL AND @original_NOME IS NULL)) AND (([OBSERVACAO] = @original_OBSERVACAO) OR ([OBSERVACAO] IS NULL AND @original_OBSERVACAO IS NULL)) AND (([QUANTIDADE] = @original_QUANTIDADE) OR ([QUANTIDADE] IS NULL AND @original_QUANTIDADE IS NULL)) AND (([REMEDIOS] = @original_REMEDIOS) OR ([REMEDIOS] IS NULL AND @original_REMEDIOS IS NULL)) AND (([VITRINE] = @original_VITRINE) OR ([VITRINE] IS NULL AND @original_VITRINE IS NULL)) AND (([imagem] = @original_imagem) OR ([imagem] IS NULL AND @original_imagem IS NULL))" 
                                InsertCommand="INSERT INTO [PRODUTOS] ([TIPO_PRODUTO_idTIPO_PRODUTO],  [NOME], [OBSERVACAO], [QUANTIDADE], [REMEDIOS], [VITRINE], [imagem]) VALUES (@TIPO_PRODUTO_idTIPO_PRODUTO,  @NOME, @OBSERVACAO, @QUANTIDADE, @REMEDIOS, @VITRINE, @imagem)" 
                                OldValuesParameterFormatString="original_{0}" 
                                SelectCommand="SELECT [id_PRODUTOS], [TIPO_PRODUTO_idTIPO_PRODUTO], [NOME], [OBSERVACAO], [QUANTIDADE], [REMEDIOS], [VITRINE], [imagem] FROM [PRODUTOS] WHERE ([id_PRODUTOS] = @id_PRODUTOS)" 
                                
                                
                           UpdateCommand="UPDATE [PRODUTOS] SET [TIPO_PRODUTO_idTIPO_PRODUTO] = @TIPO_PRODUTO_idTIPO_PRODUTO, [NOME] = @NOME, [OBSERVACAO] = @OBSERVACAO, [QUANTIDADE] = @QUANTIDADE, [REMEDIOS] = @REMEDIOS, [VITRINE] = @VITRINE, [imagem] = @imagem WHERE [id_PRODUTOS] = @original_id_PRODUTOS AND [TIPO_PRODUTO_idTIPO_PRODUTO] = @original_TIPO_PRODUTO_idTIPO_PRODUTO AND (([NOME] = @original_NOME) OR ([NOME] IS NULL AND @original_NOME IS NULL)) AND (([OBSERVACAO] = @original_OBSERVACAO) OR ([OBSERVACAO] IS NULL AND @original_OBSERVACAO IS NULL)) AND (([QUANTIDADE] = @original_QUANTIDADE) OR ([QUANTIDADE] IS NULL AND @original_QUANTIDADE IS NULL)) AND (([REMEDIOS] = @original_REMEDIOS) OR ([REMEDIOS] IS NULL AND @original_REMEDIOS IS NULL)) AND (([VITRINE] = @original_VITRINE) OR ([VITRINE] IS NULL AND @original_VITRINE IS NULL)) AND (([imagem] = @original_imagem) OR ([imagem] IS NULL AND @original_imagem IS NULL))">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_id_PRODUTOS" Type="Int32" />
                                    <asp:Parameter Name="original_TIPO_PRODUTO_idTIPO_PRODUTO" Type="Int32" />
                                    <asp:Parameter Name="original_NOME" Type="String" />
                                    <asp:Parameter Name="original_OBSERVACAO" Type="String" />
                                    <asp:Parameter Name="original_QUANTIDADE" Type="Int32" />
                                    <asp:Parameter Name="original_REMEDIOS" Type="String" />
                                    <asp:Parameter Name="original_VITRINE" Type="String" />
                                    <asp:Parameter Name="original_imagem" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="TIPO_PRODUTO_idTIPO_PRODUTO" Type="Int32" />
                                    <asp:Parameter Name="NOME" Type="String" />
                                    <asp:Parameter Name="OBSERVACAO" Type="String" />
                                    <asp:Parameter Name="QUANTIDADE" Type="Int32" />
                                    <asp:Parameter Name="REMEDIOS" Type="String" />
                                    <asp:Parameter Name="VITRINE" Type="String" />
                                    <asp:Parameter Name="imagem" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="GridView1" Name="id_PRODUTOS" 
                                        PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="TIPO_PRODUTO_idTIPO_PRODUTO" Type="Int32" />
                                    <asp:Parameter Name="NOME" Type="String" />
                                    <asp:Parameter Name="OBSERVACAO" Type="String" />
                                    <asp:Parameter Name="QUANTIDADE" Type="Int32" />
                                    <asp:Parameter Name="REMEDIOS" Type="String" />
                                    <asp:Parameter Name="VITRINE" Type="String" />
                                    <asp:Parameter Name="imagem" Type="String" />
                                    <asp:Parameter Name="original_id_PRODUTOS" Type="Int32" />
                                    <asp:Parameter Name="original_TIPO_PRODUTO_idTIPO_PRODUTO" Type="Int32" />
                                    <asp:Parameter Name="original_NOME" Type="String" />
                                    <asp:Parameter Name="original_OBSERVACAO" Type="String" />
                                    <asp:Parameter Name="original_QUANTIDADE" Type="Int32" />
                                    <asp:Parameter Name="original_REMEDIOS" Type="String" />
                                    <asp:Parameter Name="original_VITRINE" Type="String" />
                                    <asp:Parameter Name="original_imagem" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <br />
                            <br />
                            <br />
                            <asp:GridView ID="GridView1" runat="server" CellPadding="5" GridLines="Horizontal" 
                                Width="980px" AutoGenerateColumns="False" DataKeyNames="id_PRODUTOS" 
                                DataSourceID="referf" BorderColor="#232B2B" BorderStyle="Solid" 
                           BorderWidth="1px">
                                <Columns>
                                    <asp:CommandField ButtonType="Image" 
                                         
                                        SelectImageUrl="~/images/icones/icones/edit-file-icon.png" 
                                       ShowSelectButton="True" />

                                    <asp:BoundField DataField="id_PRODUTOS" HeaderText="Código" ReadOnly="True" 
                                        SortExpression="id_PRODUTOS" InsertVisible="False" />
                                    <asp:BoundField DataField="TIPO_PRODUTO" 
                                        HeaderText="Tipo Produto" SortExpression="TIPO_PRODUTO" />
                                    <asp:BoundField DataField="NOME" HeaderText="Produto" SortExpression="NOME" />
                                    <asp:BoundField DataField="OBSERVACAO" HeaderText="Observação" 
                                        SortExpression="OBSERVACAO" />
                                    <asp:BoundField DataField="QUANTIDADE" HeaderText="Quantidade" 
                                        SortExpression="QUANTIDADE" />
                                </Columns>
                                <HeaderStyle BackColor="#232B2B" Font-Size="12px" 
                                    HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="#ff7f00" 
                                    Height="40px" />
                                <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="12px" />
                                <SelectedRowStyle BackColor="#ff7f00" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="referf" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                
                           SelectCommand="SELECT PRODUTOS.id_PRODUTOS, TIPO_PRODUTO.TIPO_PRODUTO, PRODUTOS.NOME, PRODUTOS.OBSERVACAO, PRODUTOS.QUANTIDADE FROM PRODUTOS INNER JOIN TIPO_PRODUTO ON PRODUTOS.TIPO_PRODUTO_idTIPO_PRODUTO = TIPO_PRODUTO.idTIPO_PRODUTO">
                            </asp:SqlDataSource>
                        <br />
   
</asp:Content>
