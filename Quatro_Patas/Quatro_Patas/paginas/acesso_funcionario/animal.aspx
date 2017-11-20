<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="animal.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.animal" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="nome_da_pagina">
                            <asp:Label ID="Label13" runat="server" Text="Animal"></asp:Label>
                        </div>

                            <br />
                            <asp:DetailsView ID="DetailsView1" runat="server" 
                                Font-Size="20px" ForeColor="#232B2B" GridLines="None" 
                                Width="980px" AutoGenerateRows="False" DataKeyNames="id_ANIMAL" 
                                DataSourceID="data_animal" 
                                onitemdeleted="DetailsView1_ItemDeleted" 
                                oniteminserted="DetailsView1_ItemInserted" 
                                onitemupdated="DetailsView1_ItemUpdated" 
    CellPadding="1" CellSpacing="5" 
                                 >
                                <CommandRowStyle HorizontalAlign="Center" />
                                <EditRowStyle ForeColor="#232B2B" />
                                <FieldHeaderStyle HorizontalAlign="Center" Width="400px" />
                                <Fields>
                                    
                                    <asp:BoundField DataField="id_ANIMAL" HeaderText="Código" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="id_ANIMAL" />
                                    <asp:TemplateField HeaderText="Nome" SortExpression="nome">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox9" runat="server" CssClass="biorda" Font-Size="20px" 
                                                Text='<%# Bind("nome") %>' Width="300px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="TextBox9" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox9" runat="server" CssClass="biorda" 
                                                Text='<%# Bind("nome") %>' Width="300px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                ControlToValidate="TextBox9" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("nome") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Cliente" SortExpression="CLIENTE_id_CLIENTE">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="biorda" 
                                                DataSourceID="SqlDataSource1" DataTextField="NOME" DataValueField="id_CLIENTE" 
                                                SelectedValue='<%# Bind("cliente_id_cliente") %>' Width="300px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                                SelectCommand="SELECT [id_CLIENTE], [NOME] FROM [CLIENTE]">
                                            </asp:SqlDataSource>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="biorda" 
                                                DataSourceID="SqlDataSource1vfv" DataTextField="NOME" 
                                                DataValueField="id_CLIENTE" SelectedValue='<%# Bind("cliente_id_cliente") %>' 
                                                Width="300px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1vfv" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                                SelectCommand="SELECT [id_CLIENTE], [NOME] FROM [CLIENTE]">
                                            </asp:SqlDataSource>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("CLIENTE_id_CLIENTE") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Raça" 
                                        SortExpression="RACA_ANIMAL_id_RACA_ANIMAL">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="biorda" 
                                                DataSourceID="SqlDataSource1gg" DataTextField="NOME" 
                                                DataValueField="id_RACA_ANIMAL" 
                                                SelectedValue='<%# Bind("raca_animal_id_raca_animal") %>' Width="300px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1gg" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                                SelectCommand="SELECT [id_RACA_ANIMAL], [NOME] FROM [RACA_ANIMAL]">
                                            </asp:SqlDataSource>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:DropDownList ID="DropDownList4" runat="server" CssClass="biorda" 
                                                DataSourceID="SqlDataSource1frf" DataTextField="NOME" 
                                                DataValueField="id_RACA_ANIMAL" 
                                                SelectedValue='<%# Bind("raca_animal_id_raca_animal") %>' Width="300px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1frf" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                                SelectCommand="SELECT [id_RACA_ANIMAL], [NOME] FROM [RACA_ANIMAL]">
                                            </asp:SqlDataSource>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label7" runat="server" 
                                                Text='<%# Bind("RACA_ANIMAL_id_RACA_ANIMAL") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Sexo" SortExpression="GENERO_id_GENERO">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="DropDownList5" runat="server" CssClass="biorda" 
                                                DataSourceID="SqlDataSource1hj" DataTextField="NOME" DataValueField="id_GENERO" 
                                                SelectedValue='<%# Bind("genero_id_genero") %>' Width="300px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1hj" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                                SelectCommand="SELECT [id_GENERO], [NOME] FROM [GENERO]">
                                            </asp:SqlDataSource>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:DropDownList ID="DropDownList6" runat="server" CssClass="biorda" 
                                                DataSourceID="SqlDataSource1ghj" DataTextField="NOME" 
                                                DataValueField="id_GENERO" SelectedValue='<%# Bind("genero_id_genero") %>' 
                                                Width="300px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1ghj" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                                SelectCommand="SELECT [id_GENERO], [NOME] FROM [GENERO]">
                                            </asp:SqlDataSource>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("GENERO_id_GENERO") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Porte" 
                                        SortExpression="PORTE_ANIMAL_id_PORTE_ANIMAL">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="DropDownList7" runat="server" CssClass="biorda" 
                                                DataSourceID="SqlDataSource1HYH" DataTextField="TAMANHO" 
                                                DataValueField="id_PORTE_ANIMAL" 
                                                SelectedValue='<%# Bind("PORTE_ANIMAL_id_PORTE_ANIMAL") %>' Width="300px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1HYH" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                                SelectCommand="SELECT [id_PORTE_ANIMAL], [TAMANHO] FROM [PORTE_ANIMAL]">
                                            </asp:SqlDataSource>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:DropDownList ID="DropDownList8" runat="server" CssClass="biorda" 
                                                DataSourceID="SqlDataSource1tgt" DataTextField="TAMANHO" 
                                                DataValueField="id_PORTE_ANIMAL" 
                                                SelectedValue='<%# Bind("PORTE_ANIMAL_id_PORTE_ANIMAL") %>' Width="300px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1tgt" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                                SelectCommand="SELECT [id_PORTE_ANIMAL], [TAMANHO] FROM [PORTE_ANIMAL]">
                                            </asp:SqlDataSource>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" 
                                                Text='<%# Bind("PORTE_ANIMAL_id_PORTE_ANIMAL") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Nascimento" SortExpression="DATA_NASCIMENTO">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("DATA_NASCIMENTO") %>' 
                                                CssClass="biorda" Width="300px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                ControlToValidate="TextBox4" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("DATA_NASCIMENTO") %>' 
                                                CssClass="biorda" Width="300px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                ControlToValidate="TextBox4" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("DATA_NASCIMENTO") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Peso (Kg)" SortExpression="PESO">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("PESO") %>' 
                                                CssClass="biorda" Width="300px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                ControlToValidate="TextBox3" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("PESO") %>' 
                                                CssClass="biorda" Width="300px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                ControlToValidate="TextBox3" CssClass="bordia" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("PESO") %>'></asp:Label>
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
                                <RowStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            </asp:DetailsView>
                            <asp:SqlDataSource ID="data_animal" runat="server" 
                                ConflictDetection="CompareAllValues" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                DeleteCommand="DELETE FROM [ANIMAL] WHERE [id_ANIMAL] = @original_id_ANIMAL AND [CLIENTE_id_CLIENTE] = @original_CLIENTE_id_CLIENTE AND [RACA_ANIMAL_id_RACA_ANIMAL] = @original_RACA_ANIMAL_id_RACA_ANIMAL AND [GENERO_id_GENERO] = @original_GENERO_id_GENERO AND [PORTE_ANIMAL_id_PORTE_ANIMAL] = @original_PORTE_ANIMAL_id_PORTE_ANIMAL AND (([DATA_NASCIMENTO] = @original_DATA_NASCIMENTO) OR ([DATA_NASCIMENTO] IS NULL AND @original_DATA_NASCIMENTO IS NULL)) AND (([PESO] = @original_PESO) OR ([PESO] IS NULL AND @original_PESO IS NULL)) AND (([nome] = @original_nome) OR ([nome] IS NULL AND @original_nome IS NULL)) AND (([STATUS_ANIMAL_HOSPEDAGEM] = @original_STATUS_ANIMAL_HOSPEDAGEM) OR ([STATUS_ANIMAL_HOSPEDAGEM] IS NULL AND @original_STATUS_ANIMAL_HOSPEDAGEM IS NULL)) AND (([STATUS_ANIMAL] = @original_STATUS_ANIMAL) OR ([STATUS_ANIMAL] IS NULL AND @original_STATUS_ANIMAL IS NULL))" 
                                InsertCommand="INSERT INTO [ANIMAL] ([CLIENTE_id_CLIENTE], [RACA_ANIMAL_id_RACA_ANIMAL], [GENERO_id_GENERO], [PORTE_ANIMAL_id_PORTE_ANIMAL], [DATA_NASCIMENTO], [PESO], [nome], [STATUS_ANIMAL_HOSPEDAGEM], [STATUS_ANIMAL]) VALUES (@CLIENTE_id_CLIENTE, @RACA_ANIMAL_id_RACA_ANIMAL, @GENERO_id_GENERO, @PORTE_ANIMAL_id_PORTE_ANIMAL, @DATA_NASCIMENTO, @PESO, @nome, @STATUS_ANIMAL_HOSPEDAGEM, @STATUS_ANIMAL)" 
                                OldValuesParameterFormatString="original_{0}" 
                                SelectCommand="SELECT [id_ANIMAL], [CLIENTE_id_CLIENTE], [RACA_ANIMAL_id_RACA_ANIMAL], [GENERO_id_GENERO], [PORTE_ANIMAL_id_PORTE_ANIMAL], [DATA_NASCIMENTO], [PESO], [nome], [STATUS_ANIMAL_HOSPEDAGEM], [STATUS_ANIMAL] FROM [ANIMAL] WHERE ([id_ANIMAL] = @id_ANIMAL)" 
                                
                                
        UpdateCommand="UPDATE [ANIMAL] SET [CLIENTE_id_CLIENTE] = @CLIENTE_id_CLIENTE, [RACA_ANIMAL_id_RACA_ANIMAL] = @RACA_ANIMAL_id_RACA_ANIMAL, [GENERO_id_GENERO] = @GENERO_id_GENERO, [PORTE_ANIMAL_id_PORTE_ANIMAL] = @PORTE_ANIMAL_id_PORTE_ANIMAL, [DATA_NASCIMENTO] = @DATA_NASCIMENTO, [PESO] = @PESO, [nome] = @nome, [STATUS_ANIMAL_HOSPEDAGEM] = @STATUS_ANIMAL_HOSPEDAGEM, [STATUS_ANIMAL] = @STATUS_ANIMAL WHERE [id_ANIMAL] = @original_id_ANIMAL AND [CLIENTE_id_CLIENTE] = @original_CLIENTE_id_CLIENTE AND [RACA_ANIMAL_id_RACA_ANIMAL] = @original_RACA_ANIMAL_id_RACA_ANIMAL AND [GENERO_id_GENERO] = @original_GENERO_id_GENERO AND [PORTE_ANIMAL_id_PORTE_ANIMAL] = @original_PORTE_ANIMAL_id_PORTE_ANIMAL AND (([DATA_NASCIMENTO] = @original_DATA_NASCIMENTO) OR ([DATA_NASCIMENTO] IS NULL AND @original_DATA_NASCIMENTO IS NULL)) AND (([PESO] = @original_PESO) OR ([PESO] IS NULL AND @original_PESO IS NULL)) AND (([nome] = @original_nome) OR ([nome] IS NULL AND @original_nome IS NULL)) AND (([STATUS_ANIMAL_HOSPEDAGEM] = @original_STATUS_ANIMAL_HOSPEDAGEM) OR ([STATUS_ANIMAL_HOSPEDAGEM] IS NULL AND @original_STATUS_ANIMAL_HOSPEDAGEM IS NULL)) AND (([STATUS_ANIMAL] = @original_STATUS_ANIMAL) OR ([STATUS_ANIMAL] IS NULL AND @original_STATUS_ANIMAL IS NULL))">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_id_ANIMAL" Type="Int32" />
                                    <asp:Parameter Name="original_CLIENTE_id_CLIENTE" Type="Int32" />
                                    <asp:Parameter Name="original_RACA_ANIMAL_id_RACA_ANIMAL" Type="Int32" />
                                    <asp:Parameter Name="original_GENERO_id_GENERO" Type="Int32" />
                                    <asp:Parameter Name="original_PORTE_ANIMAL_id_PORTE_ANIMAL" Type="Int32" />
                                    <asp:Parameter DbType="Date" Name="original_DATA_NASCIMENTO" />
                                    <asp:Parameter Name="original_PESO" Type="Decimal" />
                                    <asp:Parameter Name="original_nome" Type="String" />
                                    <asp:Parameter Name="original_STATUS_ANIMAL_HOSPEDAGEM" Type="String" />
                                    <asp:Parameter Name="original_STATUS_ANIMAL" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="CLIENTE_id_CLIENTE" Type="Int32" />
                                    <asp:Parameter Name="RACA_ANIMAL_id_RACA_ANIMAL" Type="Int32" />
                                    <asp:Parameter Name="GENERO_id_GENERO" Type="Int32" />
                                    <asp:Parameter Name="PORTE_ANIMAL_id_PORTE_ANIMAL" Type="Int32" />
                                    <asp:Parameter DbType="Date" Name="DATA_NASCIMENTO" />
                                    <asp:Parameter Name="PESO" Type="Decimal" />
                                    <asp:Parameter Name="nome" Type="String" />
                                    <asp:Parameter Name="STATUS_ANIMAL_HOSPEDAGEM" Type="String" />
                                    <asp:Parameter Name="STATUS_ANIMAL" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="GridView1" Name="id_ANIMAL" 
                                        PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="CLIENTE_id_CLIENTE" Type="Int32" />
                                    <asp:Parameter Name="RACA_ANIMAL_id_RACA_ANIMAL" Type="Int32" />
                                    <asp:Parameter Name="GENERO_id_GENERO" Type="Int32" />
                                    <asp:Parameter Name="PORTE_ANIMAL_id_PORTE_ANIMAL" Type="Int32" />
                                    <asp:Parameter DbType="Date" Name="DATA_NASCIMENTO" />
                                    <asp:Parameter Name="PESO" Type="Decimal" />
                                    <asp:Parameter Name="nome" Type="String" />
                                    <asp:Parameter Name="STATUS_ANIMAL_HOSPEDAGEM" Type="String" />
                                    <asp:Parameter Name="STATUS_ANIMAL" Type="String" />
                                    <asp:Parameter Name="original_id_ANIMAL" Type="Int32" />
                                    <asp:Parameter Name="original_CLIENTE_id_CLIENTE" Type="Int32" />
                                    <asp:Parameter Name="original_RACA_ANIMAL_id_RACA_ANIMAL" Type="Int32" />
                                    <asp:Parameter Name="original_GENERO_id_GENERO" Type="Int32" />
                                    <asp:Parameter Name="original_PORTE_ANIMAL_id_PORTE_ANIMAL" Type="Int32" />
                                    <asp:Parameter Name="original_DATA_NASCIMENTO" DbType="Date" />
                                    <asp:Parameter Name="original_PESO" Type="Decimal" />
                                    <asp:Parameter Name="original_nome" Type="String" />
                                    <asp:Parameter Name="original_STATUS_ANIMAL_HOSPEDAGEM" Type="String" />
                                    <asp:Parameter Name="original_STATUS_ANIMAL" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <br />
                            <asp:GridView ID="GridView1" runat="server" CellPadding="5" GridLines="Horizontal" 
                                Width="980px" AllowSorting="True" AutoGenerateColumns="False" 
                                DataKeyNames="Código" DataSourceID="animal_main" AllowPaging="True" 
                                BorderColor="#232B2B" BorderStyle="Solid" BorderWidth="1px">
                                <Columns>
                                                                <asp:CommandField ButtonType="Image" 
                                         
                                        SelectImageUrl="~/images/icones/icones/edit-file-icon.png" 
                                       ShowSelectButton="True" />
                                    <asp:BoundField DataField="Código" HeaderText="Código" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="Código" />
                                    <asp:BoundField DataField="nome" HeaderText="Animal" SortExpression="nome" />
                                    <asp:BoundField DataField="Peso" HeaderText="Peso(kg)" SortExpression="Peso" />
                                    <asp:BoundField DataField="Cliente" HeaderText="Cliente" 
                                        SortExpression="Cliente" />
                                    <asp:BoundField DataField="CPF" HeaderText="CPF" 
                                        SortExpression="CPF" />
                                    <asp:BoundField DataField="RG" HeaderText="RG" 
                                        SortExpression="RG" />
                                    <asp:BoundField DataField="Tamanho" HeaderText="Tamanho" 
                                        SortExpression="Tamanho" />
                                    <asp:BoundField DataField="Raça" HeaderText="Raça" 
                                        SortExpression="Raça" />
                                    <asp:BoundField DataField="Tipo" HeaderText="Tipo" 
                                        SortExpression="Tipo" />
                                </Columns>
                                <HeaderStyle BackColor="#232B2B" Font-Size="12px" HorizontalAlign="Center" 
                                    VerticalAlign="Middle" Width="60px" ForeColor="#ff7f00" Height="40px" />
                                <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="12px" />
                                <SelectedRowStyle BackColor="#ff7f00" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="animal_main" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                
        
        SelectCommand="SELECT ANIMAL.id_ANIMAL AS Código, ANIMAL.PESO AS Peso, CLIENTE.NOME AS Cliente, CLIENTE.CPF, CLIENTE.RG, PORTE_ANIMAL.TAMANHO AS Tamanho, RACA_ANIMAL.NOME AS Raça, TIPO_ANIMAL.NOME AS Tipo, ANIMAL.nome FROM ANIMAL INNER JOIN CLIENTE ON ANIMAL.CLIENTE_id_CLIENTE = CLIENTE.id_CLIENTE INNER JOIN GENERO ON ANIMAL.GENERO_id_GENERO = GENERO.id_GENERO AND CLIENTE.GENERO_id_GENERO = GENERO.id_GENERO INNER JOIN PORTE_ANIMAL ON ANIMAL.PORTE_ANIMAL_id_PORTE_ANIMAL = PORTE_ANIMAL.id_PORTE_ANIMAL INNER JOIN RACA_ANIMAL ON ANIMAL.RACA_ANIMAL_id_RACA_ANIMAL = RACA_ANIMAL.id_RACA_ANIMAL INNER JOIN TIPO_ANIMAL ON RACA_ANIMAL.TIPO_ANIMAL_id_TIPO_ANIMAL = TIPO_ANIMAL.id_TIPO_ANIMAL">
                            </asp:SqlDataSource>
                        <br />
</asp:Content>
