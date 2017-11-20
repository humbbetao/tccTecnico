<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="add_cliente.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.add_cliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div id="nome_da_pagina">
                            <asp:Label ID="Label13" runat="server" Text="Cliente"></asp:Label>
                        </div>

                        <br />
 
                            <asp:DetailsView ID="DetailsView1" runat="server" Width="980px" 
                                AutoGenerateRows="False" BorderWidth="0px" 
                                DataKeyNames="id_CLIENTE" DataSourceID="cleinte_foivbfg" 
                                Font-Size="20px" ForeColor="#232B2B" GridLines="None" 
                                style="margin-top: 0px" onitemdeleted="DetailsView1_ItemDeleted" 
                                oniteminserted="DetailsView1_ItemInserted" 
                                onitemupdated="DetailsView1_ItemUpdated" 
        CellPadding="0" CellSpacing="5">
                                <CommandRowStyle HorizontalAlign="Center" />
                                <EmptyDataRowStyle BackColor="#232B2B" BorderStyle="Solid" Height="800px" />
                                <FieldHeaderStyle HorizontalAlign="Center" VerticalAlign="Top" Width="400px" />
                                <Fields>
                                    <asp:BoundField DataField="id_CLIENTE" HeaderText="Código" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="id_CLIENTE" />
                                    <asp:TemplateField HeaderText="Nome" SortExpression="NOME3">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("NOME3") %>' Width="300px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="TextBox1" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("NOME3") %>' Width="300px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                ControlToValidate="TextBox1" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("NOME3") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="CPF" SortExpression="CPF">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("CPF") %>' MaxLength="12" Width="300px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                ControlToValidate="TextBox2" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("CPF") %>' MaxLength="12" Width="300px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                ControlToValidate="TextBox2" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("CPF") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="RG" SortExpression="RG">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("RG") %>' 
                                                CssClass="biorda" MaxLength="12" Width="300px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                                ControlToValidate="TextBox3" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("RG") %>' 
                                                CssClass="biorda" MaxLength="12" Width="300px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                ControlToValidate="TextBox3" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("RG") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Endereço" SortExpression="EMDERECO">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("EMDERECO") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                ControlToValidate="TextBox4" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("EMDERECO") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                ControlToValidate="TextBox4" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("EMDERECO") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Nº" SortExpression="NUMERO">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("NUMERO") %>' 
                                                CssClass="biorda" MaxLength="5" Width="300px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                                ControlToValidate="TextBox5" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("NUMERO") %>' 
                                                CssClass="biorda" MaxLength="5" Width="300px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                                ControlToValidate="TextBox5" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("NUMERO") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Complemento" SortExpression="COMPELEMENTO">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("COMPELEMENTO") %>' 
                                                CssClass="biorda" MaxLength="80" Width="300px"></asp:TextBox>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("COMPELEMENTO") %>' 
                                                CssClass="biorda" MaxLength="80" Width="300px"></asp:TextBox>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("COMPELEMENTO") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Bairro" SortExpression="BAIRRO">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("BAIRRO") %>' 
                                                CssClass="biorda" MaxLength="80" Width="300px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                                ControlToValidate="TextBox7" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("BAIRRO") %>' 
                                                CssClass="biorda" MaxLength="80" Width="300px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                                ControlToValidate="TextBox7" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("BAIRRO") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Cidade" SortExpression="NOME">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="biorda" 
                                                DataSourceID="SqlDataSource1frfrrfrfrfrf" DataTextField="NOME" 
                                                DataValueField="id_CIDADE" SelectedValue='<%# Bind("cidade_id_cidade") %>' 
                                                Width="300px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1frfrrfrfrfrf" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                                SelectCommand="SELECT [id_CIDADE], [NOME] FROM [CIDADE] ORDER BY [NOME]">
                                            </asp:SqlDataSource>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="biorda" 
                                                DataSourceID="SqlDataSource1FDSDDF" DataTextField="NOME" 
                                                DataValueField="id_CIDADE" SelectedValue='<%# Bind("cidade_id_cidade") %>' 
                                                Width="300px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1FDSDDF" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                                SelectCommand="SELECT [id_CIDADE], [NOME] FROM [CIDADE]">
                                            </asp:SqlDataSource>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("NOME") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="CEP" SortExpression="CEP">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("CEP") %>' 
                                                CssClass="biorda" MaxLength="8" Width="300px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                                ControlToValidate="TextBox9" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("CEP") %>' 
                                                CssClass="biorda" MaxLength="8" Width="300px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                                                ControlToValidate="TextBox9" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("CEP") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Telefone" SortExpression="TELEFONE">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("TELEFONE") %>' 
                                                CssClass="biorda" MaxLength="12" Width="300px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                                                ControlToValidate="TextBox10" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("TELEFONE") %>' 
                                                CssClass="biorda" MaxLength="12" Width="300px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                                                ControlToValidate="TextBox10" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label10" runat="server" Text='<%# Bind("TELEFONE") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Celular" SortExpression="CELULAR">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("CELULAR") %>' 
                                                CssClass="biorda" MaxLength="12"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                                                ControlToValidate="TextBox11" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("CELULAR") %>' 
                                                CssClass="biorda"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                                                ControlToValidate="TextBox11" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label11" runat="server" Text='<%# Bind("CELULAR") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="E-mail" SortExpression="EMAIL">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("EMAIL") %>' 
                                                CssClass="biorda" MaxLength="120"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                                                ControlToValidate="TextBox12" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("EMAIL") %>' 
                                                CssClass="biorda" MaxLength="120"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                                                ControlToValidate="TextBox12" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label12" runat="server" Text='<%# Bind("EMAIL") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Estado Civil" SortExpression="NOME2">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="biorda" 
                                                DataSourceID="SqlDataSource1ASASASASASA" DataTextField="NOME" 
                                                DataValueField="id_ESTADO_CIVIL" 
                                                SelectedValue='<%# BIND("ESTADO_CIVIL_ID_ESTADO_CIVIL") %>' Width="300px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1ASASASASASA" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                                SelectCommand="SELECT [id_ESTADO_CIVIL], [NOME] FROM [ESTADO_CIVIL]">
                                            </asp:SqlDataSource>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:DropDownList ID="DropDownList4" runat="server" CssClass="biorda" 
                                                DataSourceID="SqlDataSource1ded" DataTextField="NOME" 
                                                DataValueField="id_ESTADO_CIVIL" 
                                                SelectedValue='<%# BIND("ESTADO_CIVIL_ID_ESTADO_CIVIL") %>' Width="300px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1ded" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                                SelectCommand="SELECT [id_ESTADO_CIVIL], [NOME] FROM [ESTADO_CIVIL]">
                                            </asp:SqlDataSource>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label13" runat="server" Text='<%# Bind("NOME2") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Sexo" SortExpression="NOME1">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="DropDownList5" runat="server" CssClass="biorda" 
                                                DataSourceID="SqlDataSource1FRFR" DataTextField="NOME" 
                                                DataValueField="id_GENERO" SelectedValue='<%# BIND("GENERO_ID_GENERO") %>' 
                                                Width="300px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1FRFR" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                                SelectCommand="SELECT [id_GENERO], [NOME] FROM [GENERO]">
                                            </asp:SqlDataSource>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:DropDownList ID="DropDownList6" runat="server" CssClass="biorda" 
                                                DataSourceID="GGTGTG" DataTextField="NOME" DataValueField="id_GENERO" 
                                                SelectedValue='<%# BIND("GENERO_ID_GENERO") %>' Width="300px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="GGTGTG" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                                SelectCommand="SELECT [id_GENERO], [NOME] FROM [GENERO]">
                                            </asp:SqlDataSource>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label14" runat="server" Text='<%# Bind("NOME1") %>'></asp:Label>
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
                                <HeaderStyle HorizontalAlign="Center" Width="400px" />
                                <RowStyle ForeColor="#232B2B" HorizontalAlign="Left" VerticalAlign="Middle" />

                            </asp:DetailsView>
                            <asp:SqlDataSource ID="cleinte_foivbfg" runat="server" 
                                ConflictDetection="CompareAllValues" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                DeleteCommand="DELETE FROM [CLIENTE] WHERE [id_CLIENTE] = @original_id_CLIENTE AND [CIDADE_id_CIDADE] = @original_CIDADE_id_CIDADE AND [GENERO_id_GENERO] = @original_GENERO_id_GENERO AND [ESTADO_CIVIL_id_ESTADO_CIVIL] = @original_ESTADO_CIVIL_id_ESTADO_CIVIL AND (([NOME] = @original_NOME) OR ([NOME] IS NULL AND @original_NOME IS NULL)) AND (([CPF] = @original_CPF) OR ([CPF] IS NULL AND @original_CPF IS NULL)) AND (([RG] = @original_RG) OR ([RG] IS NULL AND @original_RG IS NULL)) AND (([EMDERECO] = @original_EMDERECO) OR ([EMDERECO] IS NULL AND @original_EMDERECO IS NULL)) AND (([COMPELEMENTO] = @original_COMPELEMENTO) OR ([COMPELEMENTO] IS NULL AND @original_COMPELEMENTO IS NULL)) AND (([BAIRRO] = @original_BAIRRO) OR ([BAIRRO] IS NULL AND @original_BAIRRO IS NULL)) AND (([CEP] = @original_CEP) OR ([CEP] IS NULL AND @original_CEP IS NULL)) AND (([TELEFONE] = @original_TELEFONE) OR ([TELEFONE] IS NULL AND @original_TELEFONE IS NULL)) AND (([CELULAR] = @original_CELULAR) OR ([CELULAR] IS NULL AND @original_CELULAR IS NULL)) AND (([EMAIL] = @original_EMAIL) OR ([EMAIL] IS NULL AND @original_EMAIL IS NULL)) AND (([NUMERO] = @original_NUMERO) OR ([NUMERO] IS NULL AND @original_NUMERO IS NULL))" 
                                InsertCommand="INSERT INTO [CLIENTE] ([CIDADE_id_CIDADE], [GENERO_id_GENERO], [ESTADO_CIVIL_id_ESTADO_CIVIL], [NOME], [CPF], [RG], [EMDERECO], [COMPELEMENTO], [BAIRRO], [CEP], [TELEFONE], [CELULAR], [EMAIL], [NUMERO]) VALUES (@CIDADE_id_CIDADE, @GENERO_id_GENERO, @ESTADO_CIVIL_id_ESTADO_CIVIL, @NOME, @CPF, @RG, @EMDERECO, @COMPELEMENTO, @BAIRRO, @CEP, @TELEFONE, @CELULAR, @EMAIL, @NUMERO)" 
                                OldValuesParameterFormatString="original_{0}" 
                                SelectCommand="SELECT
		CLI.id_CLIENTE,
		CID.NOME,
		GEN.NOME,
		ESC.NOME,
		CLI.NOME,
		CLI.CPF,
		CLI.RG,
		CLI.EMDERECO,
		CLI.COMPELEMENTO,
		CLI.BAIRRO,
		CLI.CEP,
		CLI.TELEFONE,
		CLI.CELULAR,
		CLI.EMAIL,
		CLI.NUMERO,
                                     CIDADE_ID_CIDADE,
                                     ESTADO_CIVIL_ID_ESTADO_CIVIL,
                                     GENERO_ID_GENERO
FROM
		CLIENTE CLI
		LEFT JOIN ESTADO_CIVIL ESC ON CLI.ESTADO_CIVIL_id_ESTADO_CIVIL = ESC.id_ESTADO_CIVIL
		LEFT JOIN CIDADE CID ON CLI.CIDADE_id_CIDADE = CID.id_CIDADE
		LEFT JOIN GENERO GEN ON CLI.GENERO_id_GENERO = GEN.id_GENERO

WHERE
		(CLI.id_CLIENTE = @id_CLIENTE)
		
ORDER BY
		CLI.id_CLIENTE" 
                                
        
        UpdateCommand="UPDATE [CLIENTE] SET [CIDADE_id_CIDADE] = @CIDADE_id_CIDADE, [GENERO_id_GENERO] = @GENERO_id_GENERO, [ESTADO_CIVIL_id_ESTADO_CIVIL] = @ESTADO_CIVIL_id_ESTADO_CIVIL, [NOME] = @NOME, [CPF] = @CPF, [RG] = @RG, [EMDERECO] = @EMDERECO, [COMPELEMENTO] = @COMPELEMENTO, [BAIRRO] = @BAIRRO, [CEP] = @CEP, [TELEFONE] = @TELEFONE, [CELULAR] = @CELULAR, [EMAIL] = @EMAIL, [NUMERO] = @NUMERO WHERE [id_CLIENTE] = @original_id_CLIENTE AND [CIDADE_id_CIDADE] = @original_CIDADE_id_CIDADE AND [GENERO_id_GENERO] = @original_GENERO_id_GENERO AND [ESTADO_CIVIL_id_ESTADO_CIVIL] = @original_ESTADO_CIVIL_id_ESTADO_CIVIL AND (([NOME] = @original_NOME) OR ([NOME] IS NULL AND @original_NOME IS NULL)) AND (([CPF] = @original_CPF) OR ([CPF] IS NULL AND @original_CPF IS NULL)) AND (([RG] = @original_RG) OR ([RG] IS NULL AND @original_RG IS NULL)) AND (([EMDERECO] = @original_EMDERECO) OR ([EMDERECO] IS NULL AND @original_EMDERECO IS NULL)) AND (([COMPELEMENTO] = @original_COMPELEMENTO) OR ([COMPELEMENTO] IS NULL AND @original_COMPELEMENTO IS NULL)) AND (([BAIRRO] = @original_BAIRRO) OR ([BAIRRO] IS NULL AND @original_BAIRRO IS NULL)) AND (([CEP] = @original_CEP) OR ([CEP] IS NULL AND @original_CEP IS NULL)) AND (([TELEFONE] = @original_TELEFONE) OR ([TELEFONE] IS NULL AND @original_TELEFONE IS NULL)) AND (([CELULAR] = @original_CELULAR) OR ([CELULAR] IS NULL AND @original_CELULAR IS NULL)) AND (([EMAIL] = @original_EMAIL) OR ([EMAIL] IS NULL AND @original_EMAIL IS NULL)) AND (([NUMERO] = @original_NUMERO) OR ([NUMERO] IS NULL AND @original_NUMERO IS NULL))">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_id_CLIENTE" Type="Int32" />
                                    <asp:Parameter Name="original_CIDADE_id_CIDADE" Type="Int32" />
                                    <asp:Parameter Name="original_GENERO_id_GENERO" Type="Int32" />
                                    <asp:Parameter Name="original_ESTADO_CIVIL_id_ESTADO_CIVIL" Type="Int32" />
                                    <asp:Parameter Name="original_NOME" Type="String" />
                                    <asp:Parameter Name="original_CPF" Type="String" />
                                    <asp:Parameter Name="original_RG" Type="String" />
                                    <asp:Parameter Name="original_EMDERECO" Type="String" />
                                    <asp:Parameter Name="original_COMPELEMENTO" Type="String" />
                                    <asp:Parameter Name="original_BAIRRO" Type="String" />
                                    <asp:Parameter Name="original_CEP" Type="String" />
                                    <asp:Parameter Name="original_TELEFONE" Type="String" />
                                    <asp:Parameter Name="original_CELULAR" Type="String" />
                                    <asp:Parameter Name="original_EMAIL" Type="String" />
                                    <asp:Parameter Name="original_NUMERO" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="CIDADE_id_CIDADE" Type="Int32" />
                                    <asp:Parameter Name="GENERO_id_GENERO" Type="Int32" />
                                    <asp:Parameter Name="ESTADO_CIVIL_id_ESTADO_CIVIL" Type="Int32" />
                                    <asp:Parameter Name="NOME" Type="String" />
                                    <asp:Parameter Name="CPF" Type="String" />
                                    <asp:Parameter Name="RG" Type="String" />
                                    <asp:Parameter Name="EMDERECO" Type="String" />
                                    <asp:Parameter Name="COMPELEMENTO" Type="String" />
                                    <asp:Parameter Name="BAIRRO" Type="String" />
                                    <asp:Parameter Name="CEP" Type="String" />
                                    <asp:Parameter Name="TELEFONE" Type="String" />
                                    <asp:Parameter Name="CELULAR" Type="String" />
                                    <asp:Parameter Name="EMAIL" Type="String" />
                                    <asp:Parameter Name="NUMERO" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="GridView1" Name="id_CLIENTE" 
                                        PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="CIDADE_id_CIDADE" Type="Int32" />
                                    <asp:Parameter Name="GENERO_id_GENERO" Type="Int32" />
                                    <asp:Parameter Name="ESTADO_CIVIL_id_ESTADO_CIVIL" Type="Int32" />
                                    <asp:Parameter Name="NOME" Type="String" />
                                    <asp:Parameter Name="CPF" Type="String" />
                                    <asp:Parameter Name="RG" Type="String" />
                                    <asp:Parameter Name="EMDERECO" Type="String" />
                                    <asp:Parameter Name="COMPELEMENTO" Type="String" />
                                    <asp:Parameter Name="BAIRRO" Type="String" />
                                    <asp:Parameter Name="CEP" Type="String" />
                                    <asp:Parameter Name="TELEFONE" Type="String" />
                                    <asp:Parameter Name="CELULAR" Type="String" />
                                    <asp:Parameter Name="EMAIL" Type="String" />
                                    <asp:Parameter Name="NUMERO" Type="String" />
                                    <asp:Parameter Name="original_id_CLIENTE" Type="Int32" />
                                    <asp:Parameter Name="original_CIDADE_id_CIDADE" Type="Int32" />
                                    <asp:Parameter Name="original_GENERO_id_GENERO" Type="Int32" />
                                    <asp:Parameter Name="original_ESTADO_CIVIL_id_ESTADO_CIVIL" Type="Int32" />
                                    <asp:Parameter Name="original_NOME" Type="String" />
                                    <asp:Parameter Name="original_CPF" Type="String" />
                                    <asp:Parameter Name="original_RG" Type="String" />
                                    <asp:Parameter Name="original_EMDERECO" Type="String" />
                                    <asp:Parameter Name="original_COMPELEMENTO" Type="String" />
                                    <asp:Parameter Name="original_BAIRRO" Type="String" />
                                    <asp:Parameter Name="original_CEP" Type="String" />
                                    <asp:Parameter Name="original_TELEFONE" Type="String" />
                                    <asp:Parameter Name="original_CELULAR" Type="String" />
                                    <asp:Parameter Name="original_EMAIL" Type="String" />
                                    <asp:Parameter Name="original_NUMERO" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <br />
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
                                AutoGenerateColumns="False" DataKeyNames="Código" DataSourceID="eufiuwerhfuhwe" 
                                GridLines="Horizontal" Width="980px" Font-Size="12px" CellPadding="5" 
                            AllowPaging="True" BorderColor="#232B2B" BorderStyle="Solid" BorderWidth="1px">
                                <Columns>
                                <asp:CommandField ButtonType="Image" 
                                         
                                        SelectImageUrl="~/images/icones/icones/edit-file-icon.png" 
                                       ShowSelectButton="True" />
                                    <asp:BoundField DataField="Código" HeaderText="Código" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="Código" />
                                    <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                                    <asp:BoundField DataField="CPF" HeaderText="CPF" SortExpression="CPF" />
                                    <asp:BoundField DataField="RG" HeaderText="RG" SortExpression="RG" />
                                    <asp:BoundField DataField="Endereço" HeaderText="Endereço" 
                                        SortExpression="Endereço" />
                                    <asp:BoundField DataField="Número" HeaderText="Nº" 
                                        SortExpression="Número" />
                                    <asp:BoundField DataField="COMPELEMENTO" HeaderText="Complemento" 
                                        SortExpression="COMPELEMENTO" />
                                    <asp:BoundField DataField="Bairro" HeaderText="Bairro" 
                                        SortExpression="Bairro" />
                                    <asp:BoundField DataField="Cidade" HeaderText="Cidade" 
                                        SortExpression="Cidade" />
                                    <asp:BoundField DataField="Telefone" HeaderText="Telefone" 
                                        SortExpression="Telefone" />
                                    <asp:BoundField DataField="Celular" HeaderText="Celular" 
                                        SortExpression="Celular" />
                                </Columns>
                                <HeaderStyle BackColor="#232B2B" Font-Size="12px" ForeColor="#ff7f00" 
                                    Height="40px" />
                                <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                <SelectedRowStyle BackColor="#ff7f00" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="eufiuwerhfuhwe" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                
                                
                                
                                SelectCommand="SELECT CLIENTE.id_CLIENTE AS Código, CLIENTE.NOME AS Nome, CLIENTE.CPF, CLIENTE.RG, CLIENTE.EMDERECO AS Endereço, CLIENTE.NUMERO AS Número, CLIENTE.BAIRRO AS Bairro, CLIENTE.CEP, CLIENTE.TELEFONE AS Telefone, CLIENTE.CELULAR AS Celular, CLIENTE.EMAIL AS [E-mail], CIDADE.NOME AS Cidade, CLIENTE.COMPELEMENTO FROM CLIENTE INNER JOIN CIDADE ON CLIENTE.CIDADE_id_CIDADE = CIDADE.id_CIDADE INNER JOIN ESTADO_CIVIL ON CLIENTE.ESTADO_CIVIL_id_ESTADO_CIVIL = ESTADO_CIVIL.id_ESTADO_CIVIL INNER JOIN ESTADO ON CIDADE.ESTADO_id_ESTADO = ESTADO.id_ESTADO INNER JOIN GENERO ON CLIENTE.GENERO_id_GENERO = GENERO.id_GENERO ORDER BY Código, Nome, [E-mail]">
                            </asp:SqlDataSource>
                            <br />

</asp:Content>
