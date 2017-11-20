<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="Consulta_add.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.Consulta_add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" language="javascript">

</script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="texto">
    <div id="nome_da_pagina">
                            <asp:Label ID="Label13" runat="server" Text="Consulta"></asp:Label>
                        </div>
                        <br /><br />
                        
<asp:DetailsView ID="DetailsView1" runat="server" Width="980px" AutoGenerateRows="False" 
                                DataKeyNames="id_CONSULTA" DataSourceID="consulat1" 
                                GridLines="None" CellPadding="0" Font-Size="20px" ForeColor="#232B2B" 
                                DefaultMode="Insert" CellSpacing="5">
    <CommandRowStyle HorizontalAlign="Center" />
    <EmptyDataRowStyle Width="400px" />
    <FieldHeaderStyle HorizontalAlign="Center" Width="400px" />
    <Fields>
        <asp:BoundField DataField="id_CONSULTA" HeaderText="Código" 
            InsertVisible="False" ReadOnly="True" SortExpression="id_CONSULTA" />
        <asp:TemplateField HeaderText="Animal - Cliente" 
            SortExpression="ANIMAL_id_ANIMAL">
            <EditItemTemplate>
                
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="biorda" 
                    DataSourceID="SqlDataSource1esseperfeito" DataTextField="ANIMAL" 
                    DataValueField="id_ANIMAL" SelectedValue='<%# Bind("Animal_id_Animal") %>' 
                    Width="300px">
                </asp:DropDownList>
                <asp:Label ID="lblid" runat="server" 
                    Text='<%# Bind("FUNCIONARIOS_ID_FUNCIONARIOS") %>' Visible="False"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1esseperfeito" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                    
                    SelectCommand="SELECT ANI.id_ANIMAL, ANI.nome + ' - ' + CLI.NOME AS ANIMAL FROM ANIMAL AS ANI LEFT OUTER JOIN CLIENTE AS CLI ON ANI.CLIENTE_id_CLIENTE = CLI.id_CLIENTE ORDER BY ANI.nome">
                </asp:SqlDataSource>
                
            </EditItemTemplate>
            <InsertItemTemplate>
                &nbsp;<asp:DropDownList ID="DropDownList2" runat="server" CssClass="biorda" 
                    DataSourceID="SqlDataSource1gtrg" DataTextField="ANIMAL" 
                    DataValueField="id_ANIMAL" Width="300px" 
                    SelectedValue='<%# Bind("ANIMAL_id_ANIMAL") %>'>
                </asp:DropDownList>
                <asp:Label ID="lblid" runat="server" 
                    Text='<%# Bind("FUNCIONARIOS_ID_FUNCIONARIOS") %>' Visible="False"></asp:Label>
                &nbsp;<asp:SqlDataSource ID="SqlDataSource1gtrg" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                    
                    SelectCommand="SELECT ANI.id_ANIMAL, ANI.nome + ' - ' + CLI.NOME AS ANIMAL FROM ANIMAL AS ANI LEFT OUTER JOIN CLIENTE AS CLI ON ANI.CLIENTE_id_CLIENTE = CLI.id_CLIENTE ORDER BY ANI.nome">
                </asp:SqlDataSource>
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Bind("ANIMAL_id_ANIMAL") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Data da Consulta (dd/mm/yyyy)" 
            SortExpression="DATA_CONSULTA">
            <EditItemTemplate>
                <asp:TextBox ID="txtcal" runat="server" Text='<%# Bind("DATA_CONSULTA") %>' 
                    CssClass="biorda"></asp:TextBox>
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:TextBox ID="txtcal" runat="server" Text='<%# Bind("DATA_CONSULTA") %>' 
                    CssClass="biorda"></asp:TextBox>

                &nbsp;<br />
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("DATA_CONSULTA") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Hora da Consulta (00:00)" 
            SortExpression="HORA_CONSULTA">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("HORA_CONSULTA") %>' 
                    CssClass="biorda"></asp:TextBox>
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("HORA_CONSULTA") %>' 
                    CssClass="biorda"></asp:TextBox>
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("HORA_CONSULTA") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Diagnóstico" SortExpression="DIAGNOSTICO">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("DIAGNOSTICO") %>' 
                    CssClass="biorda" Height="200px" Rows="8" TextMode="MultiLine"></asp:TextBox>
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("DIAGNOSTICO") %>' 
                    CssClass="biorda" Height="200px" Rows="8" TextMode="MultiLine"></asp:TextBox>
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("DIAGNOSTICO") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
<asp:CommandField ShowEditButton="True" ShowInsertButton="True" 
                                        ButtonType="Button" 
                                        ShowDeleteButton="True" CancelText="Cancelar" DeleteText="Deletar" 
                                        EditText="Editar" InsertText="Inserir" NewText="Adicionar" 
                                        SelectText="Selecionar" 
            UpdateText="Atualizar"  ControlStyle-CssClass="botaos" 
            ControlStyle-BorderWidth="0px" >
<ControlStyle BorderWidth="0px" CssClass="botaos"></ControlStyle>
        </asp:CommandField>
    </Fields>
                            <HeaderStyle HorizontalAlign="Center" Width="400px" />
                            <InsertRowStyle HorizontalAlign="Left" />
                            <RowStyle HorizontalAlign="Left" />
                            </asp:DetailsView>

                            <asp:SqlDataSource ID="consulat1" runat="server" 
                                ConflictDetection="CompareAllValues" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                DeleteCommand="DELETE FROM [CONSULTA] WHERE [id_CONSULTA] = @original_id_CONSULTA AND [ANIMAL_id_ANIMAL] = @original_ANIMAL_id_ANIMAL AND (([DATA_CONSULTA] = @original_DATA_CONSULTA) OR ([DATA_CONSULTA] IS NULL AND @original_DATA_CONSULTA IS NULL)) AND (([HORA_CONSULTA] = @original_HORA_CONSULTA) OR ([HORA_CONSULTA] IS NULL AND @original_HORA_CONSULTA IS NULL)) AND (([VALOR] = @original_VALOR) OR ([VALOR] IS NULL AND @original_VALOR IS NULL)) AND (([DIAGNOSTICO] = @original_DIAGNOSTICO) OR ([DIAGNOSTICO] IS NULL AND @original_DIAGNOSTICO IS NULL)) AND (([EFETUADA] = @original_EFETUADA) OR ([EFETUADA] IS NULL AND @original_EFETUADA IS NULL))" 
                                InsertCommand="INSERT INTO [CONSULTA] ([ANIMAL_id_ANIMAL], [DATA_CONSULTA], [HORA_CONSULTA], [VALOR], [DIAGNOSTICO], [EFETUADA], FUNCIONARIOS_ID_FUNCIONARIOS) VALUES (@ANIMAL_id_ANIMAL, @DATA_CONSULTA, @HORA_CONSULTA, @VALOR, @DIAGNOSTICO, @EFETUADA, 9)" 
                                OldValuesParameterFormatString="original_{0}" 
                                SelectCommand="SELECT [id_CONSULTA], [ANIMAL_id_ANIMAL], [DATA_CONSULTA], [HORA_CONSULTA], [VALOR], [DIAGNOSTICO], [EFETUADA] FROM [CONSULTA] WHERE ([id_CONSULTA] = @id_CONSULTA)" 
                                
            UpdateCommand="UPDATE [CONSULTA] SET [ANIMAL_id_ANIMAL] = @ANIMAL_id_ANIMAL, [DATA_CONSULTA] = @DATA_CONSULTA, [HORA_CONSULTA] = @HORA_CONSULTA, [VALOR] = @VALOR, [DIAGNOSTICO] = @DIAGNOSTICO, [EFETUADA] = @EFETUADA WHERE [id_CONSULTA] = @original_id_CONSULTA AND [ANIMAL_id_ANIMAL] = @original_ANIMAL_id_ANIMAL AND (([DATA_CONSULTA] = @original_DATA_CONSULTA) OR ([DATA_CONSULTA] IS NULL AND @original_DATA_CONSULTA IS NULL)) AND (([HORA_CONSULTA] = @original_HORA_CONSULTA) OR ([HORA_CONSULTA] IS NULL AND @original_HORA_CONSULTA IS NULL)) AND (([VALOR] = @original_VALOR) OR ([VALOR] IS NULL AND @original_VALOR IS NULL)) AND (([DIAGNOSTICO] = @original_DIAGNOSTICO) OR ([DIAGNOSTICO] IS NULL AND @original_DIAGNOSTICO IS NULL)) AND (([EFETUADA] = @original_EFETUADA) OR ([EFETUADA] IS NULL AND @original_EFETUADA IS NULL))">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_id_CONSULTA" Type="Int32" />
                                    <asp:Parameter Name="original_ANIMAL_id_ANIMAL" Type="Int32" />
                                    <asp:Parameter DbType="Date" Name="original_DATA_CONSULTA" />
                                    <asp:Parameter Name="original_HORA_CONSULTA" Type="DateTime" />
                                    <asp:Parameter Name="original_VALOR" Type="Decimal" />
                                    <asp:Parameter Name="original_DIAGNOSTICO" Type="String" />
                                    <asp:Parameter Name="original_EFETUADA" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="ANIMAL_id_ANIMAL" Type="Int32" />
                                    <asp:Parameter DbType="Date" Name="DATA_CONSULTA" />
                                    <asp:Parameter Name="HORA_CONSULTA" Type="DateTime" />
                                    <asp:Parameter Name="VALOR" Type="Decimal" />
                                    <asp:Parameter Name="DIAGNOSTICO" Type="String" />
                                    <asp:Parameter Name="EFETUADA" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="GridView1" Name="id_CONSULTA" 
                                        PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="ANIMAL_id_ANIMAL" Type="Int32" />
                                    <asp:Parameter DbType="Date" Name="DATA_CONSULTA" />
                                    <asp:Parameter Name="HORA_CONSULTA" Type="DateTime" />
                                    <asp:Parameter Name="VALOR" Type="Decimal" />
                                    <asp:Parameter Name="DIAGNOSTICO" Type="String" />
                                    <asp:Parameter Name="EFETUADA" Type="String" />
                                    <asp:Parameter Name="original_id_CONSULTA" Type="Int32" />
                                    <asp:Parameter Name="original_ANIMAL_id_ANIMAL" Type="Int32" />
                                    <asp:Parameter DbType="Date" Name="original_DATA_CONSULTA" />
                                    <asp:Parameter Name="original_HORA_CONSULTA" Type="DateTime" />
                                    <asp:Parameter Name="original_VALOR" Type="Decimal" />
                                    <asp:Parameter Name="original_DIAGNOSTICO" Type="String" />
                                    <asp:Parameter Name="original_EFETUADA" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>

                            <br />
                            <br />

                            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
                                AutoGenerateColumns="False" DataKeyNames="Código" 
                                DataSourceID="SqlDataSource1fef" CellPadding="5" GridLines="Horizontal" 
                                Width="980px" AllowPaging="True" BorderColor="#232B2B" BorderStyle="Solid" 
                                BorderWidth="1px">
                                <Columns>
                                                                                                      <asp:CommandField ButtonType="Image" 
                                         
                                        SelectImageUrl="~/images/icones/icones/edit-file-icon.png" 
ShowSelectButton="True" 
                                        EditImageUrl="~/images/edit.fw.png" />
                                    <asp:BoundField DataField="Código" HeaderText="Código" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="Código" />
                                    <asp:BoundField DataField="Data" HeaderText="Data" 
                                        SortExpression="Data" />
                                    <asp:BoundField DataField="Hora" HeaderText="Hora" 
                                        SortExpression="Hora" />
                                    <asp:BoundField DataField="Animal" HeaderText="Animal" SortExpression="Animal" />
                                    <asp:BoundField DataField="Raça" HeaderText="Raça" SortExpression="Raça" />
                                    <asp:BoundField DataField="Cliente" HeaderText="Cliente" SortExpression="Cliente" />
                                    <asp:BoundField DataField="Valor" HeaderText="Valor" SortExpression="Valor" />
                                    <asp:BoundField DataField="Diagnóstico" HeaderText="Diagnóstico" 
                                        SortExpression="Diagnóstico" />
                                    <asp:BoundField DataField="Efetuada" HeaderText="Efetuada" 
                                        SortExpression="Efetuada" />
                                </Columns>
                                <HeaderStyle Font-Size="12px" BackColor="#232B2B" Height="40px" />
                                <RowStyle Font-Size="12px" ForeColor="#232B2B" HorizontalAlign="Center" 
                                    VerticalAlign="Middle" />
                                <SelectedRowStyle BackColor="#ff7f00" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1fef" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:Quatro_patasConnectionString %>" 
                                
                                SelectCommand="SELECT CONSULTA.id_CONSULTA AS Código, CONSULTA.DATA_CONSULTA AS Data, CONSULTA.HORA_CONSULTA AS Hora, ANIMAL.nome AS Animal, RACA_ANIMAL.NOME AS Raça, CLIENTE.NOME AS Cliente, CONSULTA.VALOR AS Valor, CONSULTA.DIAGNOSTICO AS Diagnóstico, CONSULTA.EFETUADA AS Efetuada FROM ANIMAL INNER JOIN CLIENTE ON ANIMAL.CLIENTE_id_CLIENTE = CLIENTE.id_CLIENTE INNER JOIN CONSULTA ON ANIMAL.id_ANIMAL = CONSULTA.ANIMAL_id_ANIMAL INNER JOIN RACA_ANIMAL ON ANIMAL.RACA_ANIMAL_id_RACA_ANIMAL = RACA_ANIMAL.id_RACA_ANIMAL">
                            </asp:SqlDataSource>
                            </div>
</asp:Content>
