<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="doenca_alergias_adicionar.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.doenca_alergias_adicionar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                       <div id="nome_da_pagina">
                            <asp:Label ID="Label13" runat="server" Text="Doenças e Alergias"></asp:Label>
                        </div>

                           <br />

                            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                                DataKeyNames="id_DOENCA_ALERGIAS" DataSourceID="doenca_alergias_add" Width="980px" 
                                ForeColor="#232B2B" GridLines="None" 
                               onitemdeleted="DetailsView1_ItemDeleted" 
                               oniteminserted="DetailsView1_ItemInserted" 
                               onitemupdated="DetailsView1_ItemUpdated" Font-Size="20px" 
                           CellPadding="0" CellSpacing="5" DefaultMode="Insert">
                                <CommandRowStyle HorizontalAlign="Center" />
                                <EditRowStyle HorizontalAlign="Center" />
                                <FieldHeaderStyle ForeColor="#232B2B" HorizontalAlign="Center" Width="400px" />
                                <Fields>
                                    <asp:BoundField DataField="id_DOENCA_ALERGIAS" HeaderText="Código" 
                                        InsertVisible="False" ReadOnly="True" 
                                        SortExpression="id_DOENCA_ALERGIAS" />
                                    <asp:TemplateField HeaderText="Nome Científico" 
                                        SortExpression="NOME_CIENTIFICO">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Font-Size="20px" MaxLength="20" 
                                                Text='<%# Bind("NOME_CIENTIFICO") %>' Width="500px" CssClass="biorda"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="TextBox1" ErrorMessage="*"  Font-Bold="True" 
                                                CssClass="bordia"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Font-Size="20px" MaxLength="20" 
                                                Text='<%# Bind("NOME_CIENTIFICO") %>' Width="500px" CssClass="biorda"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                ControlToValidate="TextBox1" ErrorMessage="*"  Font-Bold="True" 
                                                CssClass="bordia"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("NOME_CIENTIFICO") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Nome Usual" SortExpression="NOME_USUAL">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Font-Size="20px" MaxLength="20" 
                                                Text='<%# Bind("NOME_USUAL") %>' Width="500px" CssClass="biorda"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                ControlToValidate="TextBox2" ErrorMessage="*"  Font-Bold="True" 
                                                CssClass="bordia"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Font-Size="20px" MaxLength="20" 
                                                Text='<%# Bind("NOME_USUAL") %>' Width="500px" CssClass="biorda"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                ControlToValidate="TextBox2" ErrorMessage="*"  Font-Bold="True" 
                                                CssClass="bordia"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("NOME_USUAL") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Observação" SortExpression="OBSERVACAO">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Font-Size="20px" Height="150px" 
                                                MaxLength="80" Text='<%# Bind("OBSERVACAO") %>' TextMode="MultiLine" 
                                                Width="500px" CssClass="biorda"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                ControlToValidate="TextBox3" ErrorMessage="*"  Font-Bold="True" 
                                                CssClass="bordia"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Font-Size="20px" Height="150px" 
                                                MaxLength="80" Text='<%# Bind("OBSERVACAO") %>' Width="500px" 
                                                CssClass="biorda"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                ControlToValidate="TextBox3" ErrorMessage="*"  Font-Bold="True" 
                                                CssClass="bordia"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("OBSERVACAO") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Tratamento" 
                                        SortExpression="TRATAMENTO_CONVECIONAL">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" Font-Size="20px" Height="250px" 
                                                MaxLength="225" Text='<%# Bind("TRATAMENTO_CONVECIONAL") %>' 
                                                TextMode="MultiLine" Width="500px" CssClass="biorda"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                                ControlToValidate="TextBox4" ErrorMessage="*"  Font-Bold="True" 
                                                CssClass="bordia"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" Font-Size="20px" Height="250px" 
                                                MaxLength="255" Text='<%# Bind("TRATAMENTO_CONVECIONAL") %>' 
                                                TextMode="MultiLine" Width="500px" CssClass="biorda"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                ControlToValidate="TextBox4" ErrorMessage="*"  Font-Bold="True" 
                                                CssClass="bordia"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" 
                                                Text='<%# Bind("TRATAMENTO_CONVECIONAL") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Causador" SortExpression="CAUSADOR">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox5" runat="server" Height="150px" MaxLength="80" 
                                                Text='<%# Bind("CAUSADOR") %>' TextMode="MultiLine" Width="500px" 
                                                CssClass="biorda" Font-Size="20px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                                ControlToValidate="TextBox5" ErrorMessage="*"  Font-Bold="True" 
                                                Font-Size="20px"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox5" runat="server" Font-Size="20px" Height="150px" 
                                                MaxLength="80" Text='<%# Bind("CAUSADOR") %>' TextMode="MultiLine" 
                                                Width="500px" CssClass="biorda"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                                ControlToValidate="TextBox5" ErrorMessage="*"  Font-Bold="True"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("CAUSADOR") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Transmissão" SortExpression="TRANSMISSAO">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox6" runat="server" Font-Size="20px" MaxLength="80" 
                                                Text='<%# Bind("TRANSMISSAO") %>' Width="500px" CssClass="biorda"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                                ControlToValidate="TextBox6" ErrorMessage="*"  Font-Bold="True"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox6" runat="server" Font-Size="20px" MaxLength="80" 
                                                Text='<%# Bind("TRANSMISSAO") %>' Width="500px" CssClass="biorda"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                                ControlToValidate="TextBox6" ErrorMessage="*"  Font-Bold="True"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("TRANSMISSAO") %>'></asp:Label>
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
                                <HeaderStyle HorizontalAlign="Center" />
                                <RowStyle HorizontalAlign="Left" />
                            </asp:DetailsView>
                            <asp:SqlDataSource ID="doenca_alergias_add" runat="server" 
                                ConflictDetection="CompareAllValues" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                DeleteCommand="DELETE FROM [DOENCAS_ALERGIAS] WHERE [id_DOENCA_ALERGIAS] = @original_id_DOENCA_ALERGIAS AND (([NOME_CIENTIFICO] = @original_NOME_CIENTIFICO) OR ([NOME_CIENTIFICO] IS NULL AND @original_NOME_CIENTIFICO IS NULL)) AND (([NOME_USUAL] = @original_NOME_USUAL) OR ([NOME_USUAL] IS NULL AND @original_NOME_USUAL IS NULL)) AND (([OBSERVACAO] = @original_OBSERVACAO) OR ([OBSERVACAO] IS NULL AND @original_OBSERVACAO IS NULL)) AND (([TRATAMENTO_CONVECIONAL] = @original_TRATAMENTO_CONVECIONAL) OR ([TRATAMENTO_CONVECIONAL] IS NULL AND @original_TRATAMENTO_CONVECIONAL IS NULL)) AND (([CAUSADOR] = @original_CAUSADOR) OR ([CAUSADOR] IS NULL AND @original_CAUSADOR IS NULL)) AND (([TRANSMISSAO] = @original_TRANSMISSAO) OR ([TRANSMISSAO] IS NULL AND @original_TRANSMISSAO IS NULL))" 
                                InsertCommand="INSERT INTO [DOENCAS_ALERGIAS] ([NOME_CIENTIFICO], [NOME_USUAL], [OBSERVACAO], [TRATAMENTO_CONVECIONAL], [CAUSADOR], [TRANSMISSAO]) VALUES (@NOME_CIENTIFICO, @NOME_USUAL, @OBSERVACAO, @TRATAMENTO_CONVECIONAL, @CAUSADOR, @TRANSMISSAO)" 
                                OldValuesParameterFormatString="original_{0}" 
                                SelectCommand="SELECT [id_DOENCA_ALERGIAS], [NOME_CIENTIFICO], [NOME_USUAL], [OBSERVACAO], [TRATAMENTO_CONVECIONAL], [CAUSADOR], [TRANSMISSAO] FROM [DOENCAS_ALERGIAS] WHERE ([id_DOENCA_ALERGIAS] = @id_DOENCA_ALERGIAS)" 
                                
                               UpdateCommand="UPDATE [DOENCAS_ALERGIAS] SET [NOME_CIENTIFICO] = @NOME_CIENTIFICO, [NOME_USUAL] = @NOME_USUAL, [OBSERVACAO] = @OBSERVACAO, [TRATAMENTO_CONVECIONAL] = @TRATAMENTO_CONVECIONAL, [CAUSADOR] = @CAUSADOR, [TRANSMISSAO] = @TRANSMISSAO WHERE [id_DOENCA_ALERGIAS] = @original_id_DOENCA_ALERGIAS AND (([NOME_CIENTIFICO] = @original_NOME_CIENTIFICO) OR ([NOME_CIENTIFICO] IS NULL AND @original_NOME_CIENTIFICO IS NULL)) AND (([NOME_USUAL] = @original_NOME_USUAL) OR ([NOME_USUAL] IS NULL AND @original_NOME_USUAL IS NULL)) AND (([OBSERVACAO] = @original_OBSERVACAO) OR ([OBSERVACAO] IS NULL AND @original_OBSERVACAO IS NULL)) AND (([TRATAMENTO_CONVECIONAL] = @original_TRATAMENTO_CONVECIONAL) OR ([TRATAMENTO_CONVECIONAL] IS NULL AND @original_TRATAMENTO_CONVECIONAL IS NULL)) AND (([CAUSADOR] = @original_CAUSADOR) OR ([CAUSADOR] IS NULL AND @original_CAUSADOR IS NULL)) AND (([TRANSMISSAO] = @original_TRANSMISSAO) OR ([TRANSMISSAO] IS NULL AND @original_TRANSMISSAO IS NULL))">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_id_DOENCA_ALERGIAS" Type="Int32" />
                                    <asp:Parameter Name="original_NOME_CIENTIFICO" Type="String" />
                                    <asp:Parameter Name="original_NOME_USUAL" Type="String" />
                                    <asp:Parameter Name="original_OBSERVACAO" Type="String" />
                                    <asp:Parameter Name="original_TRATAMENTO_CONVECIONAL" Type="String" />
                                    <asp:Parameter Name="original_CAUSADOR" Type="String" />
                                    <asp:Parameter Name="original_TRANSMISSAO" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="NOME_CIENTIFICO" Type="String" />
                                    <asp:Parameter Name="NOME_USUAL" Type="String" />
                                    <asp:Parameter Name="OBSERVACAO" Type="String" />
                                    <asp:Parameter Name="TRATAMENTO_CONVECIONAL" Type="String" />
                                    <asp:Parameter Name="CAUSADOR" Type="String" />
                                    <asp:Parameter Name="TRANSMISSAO" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="GridView1" Name="id_DOENCA_ALERGIAS" 
                                        PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="NOME_CIENTIFICO" Type="String" />
                                    <asp:Parameter Name="NOME_USUAL" Type="String" />
                                    <asp:Parameter Name="OBSERVACAO" Type="String" />
                                    <asp:Parameter Name="TRATAMENTO_CONVECIONAL" Type="String" />
                                    <asp:Parameter Name="CAUSADOR" Type="String" />
                                    <asp:Parameter Name="TRANSMISSAO" Type="String" />
                                    <asp:Parameter Name="original_id_DOENCA_ALERGIAS" Type="Int32" />
                                    <asp:Parameter Name="original_NOME_CIENTIFICO" Type="String" />
                                    <asp:Parameter Name="original_NOME_USUAL" Type="String" />
                                    <asp:Parameter Name="original_OBSERVACAO" Type="String" />
                                    <asp:Parameter Name="original_TRATAMENTO_CONVECIONAL" Type="String" />
                                    <asp:Parameter Name="original_CAUSADOR" Type="String" />
                                    <asp:Parameter Name="original_TRANSMISSAO" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <br />
                            <br />
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="id_DOENCA_ALERGIAS" DataSourceID="dt" 
                               AllowPaging="True" CellPadding="5" ForeColor="#232B2B" GridLines="Horizontal" 
                               Width="980px" AllowSorting="True" BorderColor="#232B2B" 
                               BorderStyle="Solid" BorderWidth="1px">
                                <Columns>
                                <asp:CommandField ButtonType="Image" 
                                         
                                        SelectImageUrl="~/images/icones/icones/edit-file-icon.png" 
                                       ShowSelectButton="True" />
                                    <asp:BoundField DataField="id_DOENCA_ALERGIAS" HeaderText="Código" 
                                        InsertVisible="False" ReadOnly="True" 
                                        SortExpression="id_DOENCA_ALERGIAS" />
                                    <asp:BoundField DataField="NOME_CIENTIFICO" HeaderText="Nome Científico" 
                                        SortExpression="NOME_CIENTIFICO" />
                                    <asp:BoundField DataField="NOME_USUAL" HeaderText="Nome Usual" 
                                        SortExpression="NOME_USUAL" />
                                    <asp:BoundField DataField="TRANSMISSAO" HeaderText="Transmissão" 
                                        SortExpression="TRANSMISSAO" />
                                    <asp:BoundField DataField="CAUSADOR" HeaderText="Causador" 
                                        SortExpression="CAUSADOR" />
                                    <asp:BoundField DataField="TRATAMENTO_CONVECIONAL" 
                                        HeaderText="Tratamento" SortExpression="TRATAMENTO_CONVECIONAL" />
                                    <asp:BoundField DataField="OBSERVACAO" HeaderText="Observação" 
                                        SortExpression="OBSERVACAO" />
                                </Columns>
                                <HeaderStyle BackColor="#232B2B" Font-Size="12px" Height="40px" 
                                    ForeColor="#ff7f00" />
                                <RowStyle HorizontalAlign="Justify" VerticalAlign="Middle" Font-Size="12px" />
                                <SelectedRowStyle BackColor="#ff7f00" />
                            </asp:GridView>

                           <asp:SqlDataSource ID="dt" runat="server" 
                               ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                               SelectCommand="SELECT [id_DOENCA_ALERGIAS], [NOME_CIENTIFICO], [NOME_USUAL], [OBSERVACAO], [TRATAMENTO_CONVECIONAL], [CAUSADOR], [TRANSMISSAO] FROM [DOENCAS_ALERGIAS]">
                           </asp:SqlDataSource>


</asp:Content>
