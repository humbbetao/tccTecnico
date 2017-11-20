<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="fornecedores_add.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.fornecedores_add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="nome_da_pagina">
                            <asp:Label ID="Label13" runat="server" Text="Fornecedores"></asp:Label>
                        </div>
                        <br /> 
                            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                                DataKeyNames="id_FORNECEDORES" DataSourceID="umno" 
                                Height="50px" Width="980px" onitemdeleted="DetailsView1_ItemDeleted" 
                                oniteminserted="DetailsView1_ItemInserted" 
                                onitemupdated="DetailsView1_ItemUpdated" Font-Size="20px" 
                                GridLines="None" CellSpacing="5">
                                <CommandRowStyle HorizontalAlign="Center" />
                                <EditRowStyle HorizontalAlign="Left" />
                                <EmptyDataRowStyle HorizontalAlign="Left" />
                                <FieldHeaderStyle HorizontalAlign="Center" Width="400px" />
                                <Fields>
                                    <asp:BoundField DataField="id_FORNECEDORES" HeaderText="Código" 
                                        ReadOnly="True" SortExpression="id_FORNECEDORES" InsertVisible="False" />
                                    <asp:TemplateField HeaderText="Nome" SortExpression="nome">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("nome") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="TextBox1" ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("nome") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                ControlToValidate="TextBox1" ErrorMessage="*" Font-Bold="True"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("nome") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Cidade" SortExpression="CIDADE_id_CIDADE">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="biorda" 
                                                DataSourceID="SqlDataSource1gb" DataTextField="NOME" DataValueField="id_CIDADE" 
                                                SelectedValue='<%# Bind("CIDADE_id_CIDADE") %>' Width="300px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1gb" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                                SelectCommand="SELECT [id_CIDADE], [NOME] FROM [CIDADE]">
                                            </asp:SqlDataSource>
                                        </EditItemTemplate>
                                        <HeaderTemplate>
                                            Cidade
                                        </HeaderTemplate>
                                        <InsertItemTemplate>
                                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="biorda" 
                                                DataSourceID="SqlDataSource1bg" DataTextField="NOME" DataValueField="id_CIDADE" 
                                                SelectedValue='<%# Bind("CIDADE_id_CIDADE") %>' Width="300px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1bg" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                                SelectCommand="SELECT [id_CIDADE], [NOME] FROM [CIDADE]">
                                            </asp:SqlDataSource>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label14" runat="server" Text='<%# Bind("cidade_id_cidade") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Razão Social" SortExpression="RAZAO_SOCIAL">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("RAZAO_SOCIAL") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                ControlToValidate="TextBox3" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("RAZAO_SOCIAL") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                ControlToValidate="TextBox3" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("RAZAO_SOCIAL") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Endereço" SortExpression="ENDERECO">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("ENDERECO") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                ControlToValidate="TextBox4" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("ENDERECO") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                ControlToValidate="TextBox4" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("ENDERECO") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Complemento" SortExpression="COMPLEMENTO">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox5" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("COMPLEMENTO") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox5" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("COMPLEMENTO") %>'></asp:TextBox>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("COMPLEMENTO") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Nº" SortExpression="NUMERO">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox6" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("NUMERO") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                ControlToValidate="TextBox6" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox6" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("NUMERO") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                                ControlToValidate="TextBox6" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("NUMERO") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Bairro" SortExpression="BAIRRO">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox7" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("BAIRRO") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                                ControlToValidate="TextBox7" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox7" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("BAIRRO") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                                ControlToValidate="TextBox7" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("BAIRRO") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="CEP" SortExpression="CEP">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox8" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("CEP") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                                ControlToValidate="TextBox8" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox8" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("CEP") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                                ControlToValidate="TextBox8" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("CEP") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Telefone" SortExpression="TELEFONE">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox9" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("TELEFONE") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                                ControlToValidate="TextBox9" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox9" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("TELEFONE") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                                                ControlToValidate="TextBox9" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("TELEFONE") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Celular" SortExpression="CELULAR">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox10" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("CELULAR") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                                                ControlToValidate="TextBox10" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox10" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("CELULAR") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                                                ControlToValidate="TextBox10" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label10" runat="server" Text='<%# Bind("CELULAR") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="CNPJ" SortExpression="CNPJ">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox11" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("CNPJ") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                                                ControlToValidate="TextBox11" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox11" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("CNPJ") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                                                ControlToValidate="TextBox11" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label11" runat="server" Text='<%# Bind("CNPJ") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="IE" SortExpression="IE">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox12" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("IE") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                                                ControlToValidate="TextBox12" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox12" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("IE") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                                                ControlToValidate="TextBox12" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label12" runat="server" Text='<%# Bind("IE") %>'></asp:Label>
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
                            <asp:SqlDataSource ID="umno" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                OldValuesParameterFormatString="original_{0}" 
                                
        SelectCommand="SELECT [id_FORNECEDORES], [CIDADE_id_CIDADE], [RAZAO_SOCIAL], [ENDERECO], [COMPLEMENTO], [NUMERO], [BAIRRO], [CEP], [TELEFONE], [CELULAR], [CNPJ], [IE], [nome] FROM [FORNECEDORES] WHERE ([id_FORNECEDORES] = @id_FORNECEDORES)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="GridView1" Name="id_FORNECEDORES" 
                                        PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
                        <br />

                            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
                                AutoGenerateColumns="False" DataKeyNames="id_FORNECEDORES" 
                                DataSourceID="SqlDataSource1" AllowPaging="True" CellPadding="5" 
                                Width="980px" BorderColor="#232B2B" BorderStyle="Solid" BorderWidth="1px" 
                                GridLines="Horizontal">
                                <Columns>
                                <asp:CommandField ButtonType="Image" 
                                         
                                        SelectImageUrl="~/images/icones/icones/edit-file-icon.png" 
                                       ShowSelectButton="True" />
                                    <asp:BoundField DataField="id_FORNECEDORES" HeaderText="Código" ReadOnly="True" 
                                        SortExpression="id_FORNECEDORES" />
                                    <asp:BoundField DataField="nome" HeaderText="Nome" SortExpression="nome" />
                                    <asp:BoundField DataField="RAZAO_SOCIAL" HeaderText="Razão Social" 
                                        SortExpression="RAZAO_SOCIAL" />
                                    <asp:BoundField DataField="ENDERECO" HeaderText="Endereço" 
                                        SortExpression="ENDERECO" />
                                    <asp:BoundField DataField="COMPLEMENTO" HeaderText="Complemento" 
                                        SortExpression="COMPLEMENTO" />
                                    <asp:BoundField DataField="NUMERO" HeaderText="Nº" SortExpression="NUMERO" />
                                    <asp:BoundField DataField="BAIRRO" HeaderText="Bairro" 
                                        SortExpression="BAIRRO" />
                                    <asp:BoundField DataField="CEP" HeaderText="CEP" SortExpression="CEP" />
                                    <asp:BoundField DataField="TELEFONE" HeaderText="Telefone" 
                                        SortExpression="TELEFONE" />
                                    <asp:BoundField DataField="CELULAR" HeaderText="Celular" 
                                        SortExpression="CELULAR" />
                                    <asp:BoundField DataField="Expr1" HeaderText="Cidade" SortExpression="Expr1" />
                                </Columns>
                                <HeaderStyle BackColor="#232B2B" Font-Size="12px" ForeColor="#ff7f00" 
                                    Height="40px" />
                                <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="12px" />
                                <SelectedRowStyle BackColor="#ff7f00" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                SelectCommand="SELECT FORNECEDORES.id_FORNECEDORES, FORNECEDORES.nome, FORNECEDORES.RAZAO_SOCIAL, FORNECEDORES.ENDERECO, FORNECEDORES.COMPLEMENTO, FORNECEDORES.NUMERO, FORNECEDORES.BAIRRO, FORNECEDORES.CEP, FORNECEDORES.TELEFONE, FORNECEDORES.CELULAR, CIDADE.NOME AS Expr1 FROM CIDADE INNER JOIN FORNECEDORES ON CIDADE.id_CIDADE = FORNECEDORES.CIDADE_id_CIDADE">
                            </asp:SqlDataSource>


</asp:Content>
