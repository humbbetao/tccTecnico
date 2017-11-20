<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="fun_add_narios.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.fun_add_narios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                    <div id="nome_da_pagina">
                        <asp:Label ID="Label1" runat="server" Text="Funcionários"></asp:Label> 
                        </div>

                            <br />
                            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                                DataKeyNames="id_FUNCIONARIOS" DataSourceID="SqlDataSource1rthtr" 
                                Height="50px" onitemdeleted="DetailsView1_ItemDeleted" 
                                Width="980px" Font-Size="20px" GridLines="None" CellSpacing="5" 
                                oniteminserted="DetailsView1_ItemInserted" 
                                onitemupdated="DetailsView1_ItemUpdated" 
                        CellPadding="0">
                                <CommandRowStyle HorizontalAlign="Center" />
                                <FieldHeaderStyle HorizontalAlign="Center" Width="400px" />
                                <Fields>
                                    <asp:BoundField DataField="id_FUNCIONARIOS" HeaderText="Código" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="id_FUNCIONARIOS" />
                                    <asp:TemplateField HeaderText="Cidade" SortExpression="CIDADE_id_CIDADE">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="vfdvdfv" 
                                                DataTextField="NOME" DataValueField="id_CIDADE" 
                                                SelectedValue='<%# Bind("CIDADE_id_CIDADE") %>' CssClass="biorda" 
                                                Width="300px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="vfdvdfv" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                                SelectCommand="SELECT [id_CIDADE], [NOME] FROM [CIDADE]">
                                            </asp:SqlDataSource>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:DropDownList ID="DropDownList2" runat="server" 
                                                DataSourceID="SqlDataSource1rthrth" DataTextField="NOME" 
                                                DataValueField="id_CIDADE" SelectedValue='<%# Bind("CIDADE_id_CIDADE") %>' 
                                                CssClass="biorda" Width="300px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1rthrth" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                                SelectCommand="SELECT [id_CIDADE], [NOME] FROM [CIDADE]">
                                            </asp:SqlDataSource>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("CIDADE_id_CIDADE") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Sexo" SortExpression="GENERO_id_GENERO">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="htrhthrt" 
                                                DataTextField="NOME" DataValueField="id_GENERO" 
                                                SelectedValue='<%# Bind("GENERO_id_GENERO") %>' CssClass="biorda" 
                                                Width="300px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="htrhthrt" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                                SelectCommand="SELECT [id_GENERO], [NOME] FROM [GENERO]">
                                            </asp:SqlDataSource>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="ghnghngh" 
                                                DataTextField="NOME" DataValueField="id_GENERO" 
                                                SelectedValue='<%# Bind("GENERO_id_GENERO") %>' CssClass="biorda" 
                                                Width="300px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="ghnghngh" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                                SelectCommand="SELECT [id_GENERO], [NOME] FROM [GENERO]">
                                            </asp:SqlDataSource>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("GENERO_id_GENERO") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Especialidades" 
                                        SortExpression="ESPECIALIDADES_FUNCIONARIO_id_ESPECIALIDADES">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="DropDownList7" runat="server" 
                                                DataSourceID="SqlDataSource1vvvv" DataTextField="NOME" 
                                                DataValueField="id_ESPECIALIDADES" CssClass="biorda" Width="300px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1vvvv" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                                SelectCommand="SELECT [id_ESPECIALIDADES], [NOME] FROM [ESPECIALIDADES_FUNCIONARIO]">
                                            </asp:SqlDataSource>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="rfgdfg" 
                                                DataTextField="NOME" DataValueField="id_ESPECIALIDADES" 
                                                
                                                SelectedValue='<%# Bind("ESPECIALIDADES_FUNCIONARIO_id_ESPECIALIDADES") %>' 
                                                CssClass="biorda" Width="300px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="rfgdfg" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                                SelectCommand="SELECT [id_ESPECIALIDADES], [NOME] FROM [ESPECIALIDADES_FUNCIONARIO]">
                                            </asp:SqlDataSource>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" 
                                                Text='<%# Bind("ESPECIALIDADES_FUNCIONARIO_id_ESPECIALIDADES") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Estado Civil" 
                                        SortExpression="ESTADO_CIVIL_id_ESTADO_CIVIL">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="DropDownList5" runat="server" 
                                                DataSourceID="SqlDataSource1fghfg" DataTextField="id_ESTADO_CIVIL" 
                                                DataValueField="NOME" 
                                                SelectedValue='<%# Bind("ESTADO_CIVIL_id_ESTADO_CIVIL") %>' 
                                                CssClass="biorda" Width="300px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1fghfg" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                                SelectCommand="SELECT [NOME], [id_ESTADO_CIVIL] FROM [ESTADO_CIVIL]">
                                            </asp:SqlDataSource>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="hhhh" 
                                                DataTextField="NOME" DataValueField="id_ESTADO_CIVIL" 
                                                SelectedValue='<%# Bind("ESTADO_CIVIL_id_ESTADO_CIVIL") %>' 
                                                CssClass="biorda" Width="300px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="hhhh" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                                SelectCommand="SELECT [id_ESTADO_CIVIL], [NOME] FROM [ESTADO_CIVIL]">
                                            </asp:SqlDataSource>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" 
                                                Text='<%# Bind("ESTADO_CIVIL_id_ESTADO_CIVIL") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Nome" SortExpression="NOME">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("NOME") %>' 
                                                CssClass="biorda" MaxLength="80"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                ControlToValidate="TextBox7" ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("NOME") %>' 
                                                CssClass="biorda" MaxLength="80"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="TextBox7" ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("NOME") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="CPF" SortExpression="CPF">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("CPF") %>' 
                                                CssClass="biorda" MaxLength="12"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                ControlToValidate="TextBox8" ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("CPF") %>' 
                                                CssClass="biorda" MaxLength="12"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                ControlToValidate="TextBox8" ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("CPF") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="RG" SortExpression="RG">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("RG") %>' 
                                                CssClass="biorda" MaxLength="12"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                ControlToValidate="TextBox9" ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("RG") %>' 
                                                CssClass="biorda" MaxLength="12"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                ControlToValidate="TextBox9" ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("RG") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Endereço" SortExpression="ENDERECO">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("ENDERECO") %>' 
                                                CssClass="biorda" MaxLength="80"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                ControlToValidate="TextBox10" ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("ENDERECO") %>' 
                                                CssClass="biorda" MaxLength="80"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                                ControlToValidate="TextBox10" ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label10" runat="server" Text='<%# Bind("ENDERECO") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Complemento" SortExpression="COMPLEMENTO">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("COMPLEMENTO") %>' 
                                                CssClass="biorda" MaxLength="80"></asp:TextBox>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("COMPLEMENTO") %>' 
                                                CssClass="biorda" MaxLength="80"></asp:TextBox>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label11" runat="server" Text='<%# Bind("COMPLEMENTO") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Número" SortExpression="NUMERO">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("NUMERO") %>' 
                                                CssClass="biorda" MaxLength="5"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                                ControlToValidate="TextBox12" ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("NUMERO") %>' 
                                                CssClass="biorda" MaxLength="5"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                                ControlToValidate="TextBox12" ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label12" runat="server" Text='<%# Bind("NUMERO") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Bairro" SortExpression="BAIRRO">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("BAIRRO") %>' 
                                                CssClass="biorda" MaxLength="80"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                                                ControlToValidate="TextBox13" ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("BAIRRO") %>' 
                                                CssClass="biorda"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                                ControlToValidate="TextBox13" ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label13" runat="server" Text='<%# Bind("BAIRRO") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="CEP" SortExpression="CEP">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox14" runat="server" Text='<%# Bind("CEP") %>' 
                                                CssClass="biorda" MaxLength="8"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                                                ControlToValidate="TextBox14" ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox14" runat="server" Text='<%# Bind("CEP") %>' 
                                                CssClass="biorda" MaxLength="8"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                                                ControlToValidate="TextBox14" ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label14" runat="server" Text='<%# Bind("CEP") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Telefone" SortExpression="TELEFONE">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox15" runat="server" Text='<%# Bind("TELEFONE") %>' 
                                                CssClass="biorda" MaxLength="12"></asp:TextBox>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox15" runat="server" Text='<%# Bind("TELEFONE") %>' 
                                                CssClass="biorda" MaxLength="12"></asp:TextBox>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label15" runat="server" Text='<%# Bind("TELEFONE") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Celular" SortExpression="CELULAR">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox16" runat="server" Text='<%# Bind("CELULAR") %>' 
                                                CssClass="biorda" MaxLength="12"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                                                ControlToValidate="TextBox16" ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox16" runat="server" Text='<%# Bind("CELULAR") %>' 
                                                CssClass="biorda" MaxLength="12"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                                                ControlToValidate="TextBox16" ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label16" runat="server" Text='<%# Bind("CELULAR") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Salário" SortExpression="SALARIO">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox17" runat="server" Text='<%# Bind("SALARIO") %>' 
                                                CssClass="biorda" MaxLength="8"></asp:TextBox>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox17" runat="server" Text='<%# Bind("SALARIO") %>' 
                                                CssClass="biorda" MaxLength="8"></asp:TextBox>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label17" runat="server" Text='<%# Bind("SALARIO") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="E-mail" SortExpression="EMAIL">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox18" runat="server" Text='<%# Bind("EMAIL") %>' 
                                                CssClass="biorda" MaxLength="120"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                                                ControlToValidate="TextBox18" ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox18" runat="server" Text='<%# Bind("EMAIL") %>' 
                                                CssClass="biorda" MaxLength="120"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                                                ControlToValidate="TextBox18" ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label18" runat="server" Text='<%# Bind("EMAIL") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Usuário" SortExpression="USUARIO">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("USUARIO") %>' 
                                                CssClass="biorda" MaxLength="15"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                                                ControlToValidate="TextBox6" ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("USUARIO") %>' 
                                                CssClass="biorda" MaxLength="15"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
                                                ControlToValidate="TextBox6" ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("USUARIO") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Senha" SortExpression="SENHA">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox19" runat="server" CssClass="biorda" MaxLength="15" 
                                                TextMode="Password" Text='<%# Bind("senha") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                                                ControlToValidate="TextBox19" ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox20" runat="server" CssClass="biorda" MaxLength="15" 
                                                TextMode="Password" Text='<%# Bind("senha") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
                                                ControlToValidate="TextBox20" ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("SENHA") %>'></asp:Label>
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
                                <RowStyle HorizontalAlign="Left" />
                            </asp:DetailsView>
                            <asp:SqlDataSource ID="SqlDataSource1rthtr" runat="server" 
                                ConflictDetection="CompareAllValues" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                DeleteCommand="DELETE FROM [FUNCIONARIOS] WHERE [id_FUNCIONARIOS] = @original_id_FUNCIONARIOS AND [CIDADE_id_CIDADE] = @original_CIDADE_id_CIDADE AND [GENERO_id_GENERO] = @original_GENERO_id_GENERO AND [ESPECIALIDADES_FUNCIONARIO_id_ESPECIALIDADES] = @original_ESPECIALIDADES_FUNCIONARIO_id_ESPECIALIDADES AND [ESTADO_CIVIL_id_ESTADO_CIVIL] = @original_ESTADO_CIVIL_id_ESTADO_CIVIL AND (([NOME] = @original_NOME) OR ([NOME] IS NULL AND @original_NOME IS NULL)) AND (([CPF] = @original_CPF) OR ([CPF] IS NULL AND @original_CPF IS NULL)) AND (([RG] = @original_RG) OR ([RG] IS NULL AND @original_RG IS NULL)) AND (([ENDERECO] = @original_ENDERECO) OR ([ENDERECO] IS NULL AND @original_ENDERECO IS NULL)) AND (([COMPLEMENTO] = @original_COMPLEMENTO) OR ([COMPLEMENTO] IS NULL AND @original_COMPLEMENTO IS NULL)) AND (([NUMERO] = @original_NUMERO) OR ([NUMERO] IS NULL AND @original_NUMERO IS NULL)) AND (([BAIRRO] = @original_BAIRRO) OR ([BAIRRO] IS NULL AND @original_BAIRRO IS NULL)) AND (([CEP] = @original_CEP) OR ([CEP] IS NULL AND @original_CEP IS NULL)) AND (([TELEFONE] = @original_TELEFONE) OR ([TELEFONE] IS NULL AND @original_TELEFONE IS NULL)) AND (([CELULAR] = @original_CELULAR) OR ([CELULAR] IS NULL AND @original_CELULAR IS NULL)) AND (([SALARIO] = @original_SALARIO) OR ([SALARIO] IS NULL AND @original_SALARIO IS NULL)) AND (([EMAIL] = @original_EMAIL) OR ([EMAIL] IS NULL AND @original_EMAIL IS NULL)) AND (([USUARIO] = @original_USUARIO) OR ([USUARIO] IS NULL AND @original_USUARIO IS NULL)) AND (([SENHA] = @original_SENHA) OR ([SENHA] IS NULL AND @original_SENHA IS NULL))" 
                                InsertCommand="INSERT INTO [FUNCIONARIOS] ([CIDADE_id_CIDADE], [GENERO_id_GENERO], [ESPECIALIDADES_FUNCIONARIO_id_ESPECIALIDADES], [ESTADO_CIVIL_id_ESTADO_CIVIL], [NOME], [CPF], [RG], [ENDERECO], [COMPLEMENTO], [NUMERO], [BAIRRO], [CEP], [TELEFONE], [CELULAR], [SALARIO], [EMAIL], [USUARIO], [SENHA]) VALUES (@CIDADE_id_CIDADE, @GENERO_id_GENERO, @ESPECIALIDADES_FUNCIONARIO_id_ESPECIALIDADES, @ESTADO_CIVIL_id_ESTADO_CIVIL, @NOME, @CPF, @RG, @ENDERECO, @COMPLEMENTO, @NUMERO, @BAIRRO, @CEP, @TELEFONE, @CELULAR, @SALARIO, @EMAIL, @USUARIO, @SENHA)" 
                                OldValuesParameterFormatString="original_{0}" 
                                SelectCommand="SELECT [CIDADE_id_CIDADE], [GENERO_id_GENERO], [ESPECIALIDADES_FUNCIONARIO_id_ESPECIALIDADES], [ESTADO_CIVIL_id_ESTADO_CIVIL], [NOME], [CPF], [RG], [ENDERECO], [COMPLEMENTO], [NUMERO], [BAIRRO], [CEP], [TELEFONE], [CELULAR], [SALARIO], [EMAIL], [id_FUNCIONARIOS], [USUARIO], [SENHA] FROM [FUNCIONARIOS] WHERE ([id_FUNCIONARIOS] = @id_FUNCIONARIOS)" 
                                UpdateCommand="UPDATE [FUNCIONARIOS] SET [CIDADE_id_CIDADE] = @CIDADE_id_CIDADE, [GENERO_id_GENERO] = @GENERO_id_GENERO, [ESPECIALIDADES_FUNCIONARIO_id_ESPECIALIDADES] = @ESPECIALIDADES_FUNCIONARIO_id_ESPECIALIDADES, [ESTADO_CIVIL_id_ESTADO_CIVIL] = @ESTADO_CIVIL_id_ESTADO_CIVIL, [NOME] = @NOME, [CPF] = @CPF, [RG] = @RG, [ENDERECO] = @ENDERECO, [COMPLEMENTO] = @COMPLEMENTO, [NUMERO] = @NUMERO, [BAIRRO] = @BAIRRO, [CEP] = @CEP, [TELEFONE] = @TELEFONE, [CELULAR] = @CELULAR, [SALARIO] = @SALARIO, [EMAIL] = @EMAIL, [USUARIO] = @USUARIO, [SENHA] = @SENHA WHERE [id_FUNCIONARIOS] = @original_id_FUNCIONARIOS AND [CIDADE_id_CIDADE] = @original_CIDADE_id_CIDADE AND [GENERO_id_GENERO] = @original_GENERO_id_GENERO AND [ESPECIALIDADES_FUNCIONARIO_id_ESPECIALIDADES] = @original_ESPECIALIDADES_FUNCIONARIO_id_ESPECIALIDADES AND [ESTADO_CIVIL_id_ESTADO_CIVIL] = @original_ESTADO_CIVIL_id_ESTADO_CIVIL AND (([NOME] = @original_NOME) OR ([NOME] IS NULL AND @original_NOME IS NULL)) AND (([CPF] = @original_CPF) OR ([CPF] IS NULL AND @original_CPF IS NULL)) AND (([RG] = @original_RG) OR ([RG] IS NULL AND @original_RG IS NULL)) AND (([ENDERECO] = @original_ENDERECO) OR ([ENDERECO] IS NULL AND @original_ENDERECO IS NULL)) AND (([COMPLEMENTO] = @original_COMPLEMENTO) OR ([COMPLEMENTO] IS NULL AND @original_COMPLEMENTO IS NULL)) AND (([NUMERO] = @original_NUMERO) OR ([NUMERO] IS NULL AND @original_NUMERO IS NULL)) AND (([BAIRRO] = @original_BAIRRO) OR ([BAIRRO] IS NULL AND @original_BAIRRO IS NULL)) AND (([CEP] = @original_CEP) OR ([CEP] IS NULL AND @original_CEP IS NULL)) AND (([TELEFONE] = @original_TELEFONE) OR ([TELEFONE] IS NULL AND @original_TELEFONE IS NULL)) AND (([CELULAR] = @original_CELULAR) OR ([CELULAR] IS NULL AND @original_CELULAR IS NULL)) AND (([SALARIO] = @original_SALARIO) OR ([SALARIO] IS NULL AND @original_SALARIO IS NULL)) AND (([EMAIL] = @original_EMAIL) OR ([EMAIL] IS NULL AND @original_EMAIL IS NULL)) AND (([USUARIO] = @original_USUARIO) OR ([USUARIO] IS NULL AND @original_USUARIO IS NULL)) AND (([SENHA] = @original_SENHA) OR ([SENHA] IS NULL AND @original_SENHA IS NULL))">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_id_FUNCIONARIOS" Type="Int32" />
                                    <asp:Parameter Name="original_CIDADE_id_CIDADE" Type="Int32" />
                                    <asp:Parameter Name="original_GENERO_id_GENERO" Type="Int32" />
                                    <asp:Parameter Name="original_ESPECIALIDADES_FUNCIONARIO_id_ESPECIALIDADES" 
                                        Type="Int32" />
                                    <asp:Parameter Name="original_ESTADO_CIVIL_id_ESTADO_CIVIL" Type="Int32" />
                                    <asp:Parameter Name="original_NOME" Type="String" />
                                    <asp:Parameter Name="original_CPF" Type="String" />
                                    <asp:Parameter Name="original_RG" Type="String" />
                                    <asp:Parameter Name="original_ENDERECO" Type="String" />
                                    <asp:Parameter Name="original_COMPLEMENTO" Type="String" />
                                    <asp:Parameter Name="original_NUMERO" Type="String" />
                                    <asp:Parameter Name="original_BAIRRO" Type="String" />
                                    <asp:Parameter Name="original_CEP" Type="String" />
                                    <asp:Parameter Name="original_TELEFONE" Type="String" />
                                    <asp:Parameter Name="original_CELULAR" Type="String" />
                                    <asp:Parameter Name="original_SALARIO" Type="Decimal" />
                                    <asp:Parameter Name="original_EMAIL" Type="String" />
                                    <asp:Parameter Name="original_USUARIO" Type="String" />
                                    <asp:Parameter Name="original_SENHA" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="CIDADE_id_CIDADE" Type="Int32" />
                                    <asp:Parameter Name="GENERO_id_GENERO" Type="Int32" />
                                    <asp:Parameter Name="ESPECIALIDADES_FUNCIONARIO_id_ESPECIALIDADES" 
                                        Type="Int32" />
                                    <asp:Parameter Name="ESTADO_CIVIL_id_ESTADO_CIVIL" Type="Int32" />
                                    <asp:Parameter Name="NOME" Type="String" />
                                    <asp:Parameter Name="CPF" Type="String" />
                                    <asp:Parameter Name="RG" Type="String" />
                                    <asp:Parameter Name="ENDERECO" Type="String" />
                                    <asp:Parameter Name="COMPLEMENTO" Type="String" />
                                    <asp:Parameter Name="NUMERO" Type="String" />
                                    <asp:Parameter Name="BAIRRO" Type="String" />
                                    <asp:Parameter Name="CEP" Type="String" />
                                    <asp:Parameter Name="TELEFONE" Type="String" />
                                    <asp:Parameter Name="CELULAR" Type="String" />
                                    <asp:Parameter Name="SALARIO" Type="Decimal" />
                                    <asp:Parameter Name="EMAIL" Type="String" />
                                    <asp:Parameter Name="USUARIO" Type="String" />
                                    <asp:Parameter Name="SENHA" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="GridView1" Name="id_FUNCIONARIOS" 
                                        PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="CIDADE_id_CIDADE" Type="Int32" />
                                    <asp:Parameter Name="GENERO_id_GENERO" Type="Int32" />
                                    <asp:Parameter Name="ESPECIALIDADES_FUNCIONARIO_id_ESPECIALIDADES" 
                                        Type="Int32" />
                                    <asp:Parameter Name="ESTADO_CIVIL_id_ESTADO_CIVIL" Type="Int32" />
                                    <asp:Parameter Name="NOME" Type="String" />
                                    <asp:Parameter Name="CPF" Type="String" />
                                    <asp:Parameter Name="RG" Type="String" />
                                    <asp:Parameter Name="ENDERECO" Type="String" />
                                    <asp:Parameter Name="COMPLEMENTO" Type="String" />
                                    <asp:Parameter Name="NUMERO" Type="String" />
                                    <asp:Parameter Name="BAIRRO" Type="String" />
                                    <asp:Parameter Name="CEP" Type="String" />
                                    <asp:Parameter Name="TELEFONE" Type="String" />
                                    <asp:Parameter Name="CELULAR" Type="String" />
                                    <asp:Parameter Name="SALARIO" Type="Decimal" />
                                    <asp:Parameter Name="EMAIL" Type="String" />
                                    <asp:Parameter Name="USUARIO" Type="String" />
                                    <asp:Parameter Name="SENHA" Type="String" />
                                    <asp:Parameter Name="original_id_FUNCIONARIOS" Type="Int32" />
                                    <asp:Parameter Name="original_CIDADE_id_CIDADE" Type="Int32" />
                                    <asp:Parameter Name="original_GENERO_id_GENERO" Type="Int32" />
                                    <asp:Parameter Name="original_ESPECIALIDADES_FUNCIONARIO_id_ESPECIALIDADES" 
                                        Type="Int32" />
                                    <asp:Parameter Name="original_ESTADO_CIVIL_id_ESTADO_CIVIL" Type="Int32" />
                                    <asp:Parameter Name="original_NOME" Type="String" />
                                    <asp:Parameter Name="original_CPF" Type="String" />
                                    <asp:Parameter Name="original_RG" Type="String" />
                                    <asp:Parameter Name="original_ENDERECO" Type="String" />
                                    <asp:Parameter Name="original_COMPLEMENTO" Type="String" />
                                    <asp:Parameter Name="original_NUMERO" Type="String" />
                                    <asp:Parameter Name="original_BAIRRO" Type="String" />
                                    <asp:Parameter Name="original_CEP" Type="String" />
                                    <asp:Parameter Name="original_TELEFONE" Type="String" />
                                    <asp:Parameter Name="original_CELULAR" Type="String" />
                                    <asp:Parameter Name="original_SALARIO" Type="Decimal" />
                                    <asp:Parameter Name="original_EMAIL" Type="String" />
                                    <asp:Parameter Name="original_USUARIO" Type="String" />
                                    <asp:Parameter Name="original_SENHA" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <br />
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="Código" DataSourceID="trgrtg" AllowSorting="True" 
                                BorderColor="#232B2B" BorderStyle="Solid" BorderWidth="1px" CellPadding="5" 
                                GridLines="Horizontal" Width="980px">
                                <Columns>
                                    <asp:BoundField DataField="Código" HeaderText="Código" 
                                        ReadOnly="True" SortExpression="Código" InsertVisible="False" />
                                    <asp:BoundField DataField="NOome" HeaderText="NOome" SortExpression="NOome" />
                                    <asp:BoundField DataField="CPF" HeaderText="CPF" 
                                        SortExpression="CPF" />
                                    <asp:BoundField DataField="RG" HeaderText="RG" 
                                        SortExpression="RG" />
                                    <asp:BoundField DataField="Endereço" HeaderText="Endereço" 
                                        SortExpression="Endereço" />
                                    <asp:BoundField DataField="Complemento" HeaderText="Complemento" 
                                        SortExpression="Complemento" />
                                    <asp:BoundField DataField="Número" HeaderText="Número" 
                                        SortExpression="Número" />
                                    <asp:BoundField DataField="Bairro" HeaderText="Bairro" 
                                        SortExpression="Bairro" />
                                    <asp:BoundField DataField="Cidade" HeaderText="Cidade" 
                                        SortExpression="Cidade" />
                                    <asp:BoundField DataField="CEP" HeaderText="CEP" 
                                        SortExpression="CEP" />
                                    <asp:BoundField DataField="Telefone" HeaderText="Telefone" 
                                        SortExpression="Telefone" />
                                    <asp:BoundField DataField="Celular" HeaderText="Celular" 
                                        SortExpression="Celular" />
                                    <asp:BoundField DataField="E-mail" HeaderText="E-mail" 
                                        SortExpression="E-mail" />
                                    <asp:BoundField DataField="Especialidade" HeaderText="Especialidade" 
                                        SortExpression="Especialidade" />
                                </Columns>
                                <HeaderStyle BackColor="#232B2B" Font-Size="12px" ForeColor="#ff7f00" 
                                    Height="40px" />
                                <RowStyle Font-Size="12px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <SelectedRowStyle BackColor="#ff7f00" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="trgrtg" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                
                        SelectCommand="SELECT FUNCIONARIOS.id_FUNCIONARIOS AS Código, FUNCIONARIOS.NOME AS NOome, FUNCIONARIOS.CPF, FUNCIONARIOS.RG, FUNCIONARIOS.ENDERECO AS Endereço, FUNCIONARIOS.COMPLEMENTO AS Complemento, FUNCIONARIOS.NUMERO AS Número, FUNCIONARIOS.BAIRRO AS Bairro, FUNCIONARIOS.CEP, FUNCIONARIOS.TELEFONE AS Telefone, FUNCIONARIOS.CELULAR AS Celular, FUNCIONARIOS.EMAIL AS [E-mail], CIDADE.NOME AS Cidade, ESPECIALIDADES_FUNCIONARIO.NOME AS Especialidade FROM CIDADE INNER JOIN FUNCIONARIOS ON CIDADE.id_CIDADE = FUNCIONARIOS.CIDADE_id_CIDADE AND CIDADE.id_CIDADE = FUNCIONARIOS.CIDADE_id_CIDADE INNER JOIN ESPECIALIDADES_FUNCIONARIO ON FUNCIONARIOS.ESPECIALIDADES_FUNCIONARIO_id_ESPECIALIDADES = ESPECIALIDADES_FUNCIONARIO.id_ESPECIALIDADES AND FUNCIONARIOS.ESPECIALIDADES_FUNCIONARIO_id_ESPECIALIDADES = ESPECIALIDADES_FUNCIONARIO.id_ESPECIALIDADES INNER JOIN ESTADO_CIVIL ON FUNCIONARIOS.ESTADO_CIVIL_id_ESTADO_CIVIL = ESTADO_CIVIL.id_ESTADO_CIVIL AND FUNCIONARIOS.ESTADO_CIVIL_id_ESTADO_CIVIL = ESTADO_CIVIL.id_ESTADO_CIVIL INNER JOIN GENERO ON FUNCIONARIOS.GENERO_id_GENERO = GENERO.id_GENERO AND FUNCIONARIOS.GENERO_id_GENERO = GENERO.id_GENERO">
                            </asp:SqlDataSource>

</asp:Content>
                       