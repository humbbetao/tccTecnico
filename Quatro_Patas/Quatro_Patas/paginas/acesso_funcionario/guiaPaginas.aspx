 <%@ Page Title="" Language="C#" MasterPageFile="~/paginas/acesso_funcionario/logado.Master" AutoEventWireup="true" CodeBehind="guiaPaginas.aspx.cs" Inherits="Quatro_Patas.paginas.acesso_funcionario.guiaPaginas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="nome_da_pagina">
        <asp:Label ID="Label13" runat="server" Text="Guia de Páginas"></asp:Label>
    </div>
    <br />

    <asp:Label ID="Label1" runat="server" Text="Cadastros" Font-Bold="True" 
        Font-Size="20px"></asp:Label>
    <br />
    <br />
    <div class="adicionar" >

        <div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/images/icones/account_and_control.png" ImageAlign="Top"  
                    PostBackUrl="~/paginas/acesso_funcionario/add_cliente.aspx" />
             </div>
             <div class="text_descri">
                 <asp:LinkButton ID="LinkButton1" runat="server" Text="Cliente" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                     PostBackUrl="~/paginas/acesso_funcionario/add_cliente.aspx"></asp:LinkButton>
           </div>
        </div>

        <div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/icones/dog icon.jpg" PostBackUrl="~/paginas/acesso_funcionario/animal.aspx" />
            </div>
            <div class="text_descri">
                <asp:LinkButton ID="LinkButton2" runat="server" Text="Animal" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/animal.aspx"></asp:LinkButton>
            </div>
            
        </div>

        <div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton3" runat="server" 
                    ImageUrl="~/images/icones/account_and_control.png" 
                    PostBackUrl="~/paginas/acesso_funcionario/fornecedores_add.aspx" />
            </div>
            <div class="text_descri">
                <asp:LinkButton ID="LinkButton3" runat="server" Text="Fornecedor" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/fornecedores_add.aspx"></asp:LinkButton>
            </div>
            
        </div>

        <div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton4" runat="server" 
                    ImageUrl="~/images/Sem título-1.fw.png" 
                    PostBackUrl="~/paginas/acesso_funcionario/produtos_add.aspx" Height="92px" 
                    Width="103px" />
            </div>
            <div class="text_descri">
                <asp:LinkButton ID="LinkButton4" runat="server"  Text="Produtos" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/produtos_add.aspx" ></asp:LinkButton>
            </div>
        </div>

        <div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton5" runat="server" 
                    ImageUrl="~/images/icones/account_and_control.png" 
                    PostBackUrl="~/paginas/acesso_funcionario/fun_add_narios.aspx" />
            </div>
            
            <div class="text_descri">
                <asp:LinkButton ID="LinkButton5" runat="server" Text="Funcionário" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/fun_add_narios.aspx" ></asp:LinkButton>
            </div>
        </div>

        <div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton6" runat="server"  
                    ImageUrl="~/images/icones/dog icon.jpg" 
                    PostBackUrl="~/paginas/acesso_funcionario/Consulta_add.aspx" />
            </div>
            <div class="text_descri">
                <asp:LinkButton ID="LinkButton6" runat="server"  Text="Consulta" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/Consulta_add.aspx"></asp:LinkButton>
            </div>
        </div>

    </div>

         <div class="adicionar">

        <div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton7" runat="server" 
                    ImageUrl="~/images/icones/icones/1349369274_Home.jpg" 
                    PostBackUrl="~/paginas/acesso_funcionario/cidade.aspx" 
                     />
            </div>
            <div class="text_descri">
                <asp:LinkButton ID="LinkButton7" runat="server" Text="Cidade" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/cidade.aspx"></asp:LinkButton>

            </div>
        </div><div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/images/icones/icones/1349369274_Home.jpg" PostBackUrl="~/paginas/acesso_funcionario/estado_adicionar.aspx" />
            </div>
            <div class="text_descri">
                <asp:LinkButton ID="LinkButton8" runat="server" Text="Estado" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/estado_adicionar.aspx"></asp:LinkButton>
            </div>
        </div>
        <div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton10" runat="server" 
                    ImageUrl="~/images/icones/dog icon.jpg" 
                    PostBackUrl="~/paginas/acesso_funcionario/doenca_alergias_adicionar.aspx" />
            </div>
            <div class="text_descri">
                <asp:LinkButton ID="LinkButton10" runat="server" Text="Doenças e Alergias" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/doenca_alergias_adicionar.aspx"></asp:LinkButton>
            </div>
        </div><div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton11" runat="server" 
                    ImageUrl="~/images/icones/account_and_control.png" 
                    PostBackUrl="~/paginas/acesso_funcionario/especialidades_funcionario_adicionar.aspx"  />
            </div>
            <div class="text_descri">
                <asp:LinkButton ID="LinkButton11" runat="server" Text="Função do Funcionário" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/especialidades_funcionario_adicionar.aspx"></asp:LinkButton>

            </div>
        </div><div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton12" runat="server" ImageAlign="NotSet" 
                    ImageUrl="~/images/Sem título-1.fw.png" Height="92px" 
                    Width="103px" 
                    PostBackUrl="~/paginas/acesso_funcionario/tipo_produto_add.aspx" />
            </div>
            <div class="text_descri">
                <asp:Button ID="Button12" runat="server" Text="Tipo Produto" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/tipo_produto_add.aspx" />
                     </div></div>
                     <div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton9" runat="server" ImageAlign="NotSet" 
                    ImageUrl="~/images/icones/icones/Sem título-2.fw.png" Height="92px" 
                    Width="103px" 
                    PostBackUrl="~/paginas/acesso_funcionario/inserir_noticia.aspx" />
            </div>
            <div class="text_descri">
                <asp:Button ID="Button1" runat="server" Text="Inserir Notícia" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/inserir_noticia.aspx" />
            </div>
        </div>
       
   </div>


        <div class="adicionar">
         <div class="adicionar_item">
          <div class="img_uti">
                <asp:ImageButton ID="ImageButton18" runat="server" 
                    ImageUrl="~/images/Sem título-1.fw.png" Height="92px" Width="103px" 
                    PostBackUrl="~/paginas/acesso_funcionario/vitrine_virtual.aspx"  />
            </div>
            <div class="text_descri">
                <asp:Button ID="Button15" runat="server" Text="Vitrine Virtual" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/vitrine_virtual.aspx" />
            </div>
          
        </div>

             

        <div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton17" runat="server" 
                    ImageUrl="~/images/icones/icones/1349369274_Home.jpg" 
                    PostBackUrl="~/paginas/acesso_funcionario/empresa.aspx" />
            </div>
            <div class="text_descri">
                <asp:Button ID="Button16" runat="server" Text="Empresa" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/empresa.aspx" />
            </div>
        </div>

        <div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton19" runat="server" 
                    ImageUrl="~/images/icones/account_and_control.png" 
                    PostBackUrl="~/paginas/acesso_funcionario/estado_civil_adicionar.aspx"/>
            </div>
            <div class="text_descri">
               <asp:Button ID="Button17" runat="server" Text="Estado Civil" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/estado_civil_adicionar.aspx" />
            </div>
        </div>



          
<div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton14" runat="server" 
                    ImageUrl="~/images/icones/dog icon.jpg" 
                    PostBackUrl="~/paginas/acesso_funcionario/porte_animal_adicionar.aspx" />   
            </div>
            <div class="text_descri">
                <asp:Button ID="Button2" runat="server" Text="Porte Animal" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/porte_animal_adicionar.aspx" />
            </div>
            </div>

        <div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton15" runat="server" 
                    ImageUrl="~/images/icones/dog icon.jpg" 
                    PostBackUrl="~/paginas/acesso_funcionario/raca_animal_add.aspx" />   
            </div>
            <div class="text_descri">
                <asp:Button ID="Button3" runat="server" Text="Raça Animal" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/raca_animal_add.aspx" />
            </div>

    </div>
    <div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton20" runat="server" 
                    ImageUrl="~/images/icones/dog icon.jpg" 
                    PostBackUrl="~/paginas/acesso_funcionario/tipo_animal_adicionar.aspx" />   
            </div>
            <div class="text_descri">
                <asp:Button ID="Button4" runat="server" Text="Tipo Animal" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/tipo_animal_adicionar.aspx" />
            </div>
            
            </div>
                

           


            </div>


            <br /><br /><br /><br />
    <asp:Label ID="Label2" runat="server" Text="Pesquisas" Font-Bold="True" 
        Font-Size="20px"></asp:Label>




    <br />
    <br />
    <br />


       <div class="adicionar" >

        <div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton13" runat="server" 
                    ImageUrl="~/images/icones/account_and_control.png" ImageAlign="Top"  
                    PostBackUrl="~/paginas/acesso_funcionario/p_cliente.aspx" />
             </div>
             <div class="text_descri">
                 <asp:LinkButton ID="LinkButton9" runat="server" Text="Cliente" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                     PostBackUrl="~/paginas/acesso_funcionario/p_cliente.aspx"></asp:LinkButton>
           </div>
        </div>

        <div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton16" runat="server" 
                    ImageUrl="~/images/icones/dog icon.jpg" 
                    PostBackUrl="~/paginas/acesso_funcionario/p_animal.aspx" />
            </div>
            <div class="text_descri">
                <asp:LinkButton ID="LinkButton12" runat="server" Text="Animal" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/p_animal.aspx"></asp:LinkButton>
            </div>
            
        </div>

        <div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton21" runat="server" 
                    ImageUrl="~/images/icones/account_and_control.png" 
                    PostBackUrl="~/paginas/acesso_funcionario/p_forne.aspx" />
            </div>
            <div class="text_descri">
                <asp:LinkButton ID="LinkButton13" runat="server" Text="Fornecedor" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/p_forne.aspx"></asp:LinkButton>
            </div>
            
        </div>

        <div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton22" runat="server" 
                    ImageUrl="~/images/Sem título-1.fw.png" 
                    PostBackUrl="~/paginas/acesso_funcionario/p_produtos.aspx" Height="92px" 
                    Width="103px" />
            </div>
            <div class="text_descri">
                <asp:LinkButton ID="LinkButton14" runat="server"  Text="Produtos" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/p_produtos.aspx" ></asp:LinkButton>
            </div>
        </div>

       

        <div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton24" runat="server"  
                    ImageUrl="~/images/icones/dog icon.jpg" 
                    PostBackUrl="~/paginas/acesso_funcionario/p_consulta.aspx" />
            </div>
            <div class="text_descri">
                <asp:LinkButton ID="LinkButton16" runat="server"  Text="Consulta" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/p_consulta.aspx"></asp:LinkButton>
            </div>
        </div>

    </div>

         <div class="adicionar">

        <div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton25" runat="server" 
                    ImageUrl="~/images/icones/icones/1349369274_Home.jpg" 
                    PostBackUrl="~/paginas/acesso_funcionario/p_cidade.aspx" 
                     />
            </div>
            <div class="text_descri">
                <asp:LinkButton ID="LinkButton17" runat="server" Text="Cidade" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/p_cidade.aspx"></asp:LinkButton>

            </div>
        </div><div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton26" runat="server" 
                    ImageUrl="~/images/icones/icones/1349369274_Home.jpg" 
                    PostBackUrl="~/paginas/acesso_funcionario/p_estadp.aspx" />
            </div>
            <div class="text_descri">
                <asp:LinkButton ID="LinkButton18" runat="server" Text="Estado" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/p_estadp.aspx"></asp:LinkButton>
            </div>
        </div>
<div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton28" runat="server" 
                    ImageUrl="~/images/icones/account_and_control.png" 
                    PostBackUrl="~/paginas/acesso_funcionario/p_duncao.aspx"  />
            </div>
            <div class="text_descri">
                <asp:LinkButton ID="LinkButton20" runat="server" Text="Função do Funcionário" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/p_duncao.aspx"></asp:LinkButton>

            </div>
        </div>
        
         <div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton23" runat="server" 
                    ImageUrl="~/images/icones/account_and_control.png" 
                    PostBackUrl="~/paginas/acesso_funcionario/p_funcionarios.aspx" />
            </div>
            
            <div class="text_descri">
                <asp:LinkButton ID="LinkButton15" runat="server" Text="Funcionário" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/p_funcionarios.aspx" ></asp:LinkButton>
            </div>
        </div>
        <div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton29" runat="server" ImageAlign="NotSet" 
                    ImageUrl="~/images/Sem título-1.fw.png" Height="92px" 
                    Width="103px" 
                    PostBackUrl="~/paginas/acesso_funcionario/p_tipoAnimal.aspx" />
            </div>
            <div class="text_descri">
                <asp:Button ID="Button5" runat="server" Text="Tipo Produto" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/tipo_produto_add.aspx" />
                     </div></div>

       
   </div>


        <div class="adicionar">
          
<div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton34" runat="server" 
                    ImageUrl="~/images/icones/dog icon.jpg" 
                    PostBackUrl="~/paginas/acesso_funcionario/p_porte_animal.aspx" />   
            </div>
            <div class="text_descri">
                <asp:Button ID="Button10" runat="server" Text="Porte Animal" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/p_porte_animal.aspx" />
            </div>
            </div>

        <div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton35" runat="server" 
                    ImageUrl="~/images/icones/dog icon.jpg" 
                    PostBackUrl="~/paginas/acesso_funcionario/p_raca.aspx" />   
            </div>
            <div class="text_descri">
                <asp:Button ID="Button11" runat="server" Text="Raça Animal" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/p_raca.aspx" />
            </div>

    </div>
    <div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton36" runat="server" 
                    ImageUrl="~/images/icones/dog icon.jpg" 
                    PostBackUrl="~/paginas/acesso_funcionario/p_tipoAnimal.aspx" />   
            </div>
            <div class="text_descri">
                <asp:Button ID="Button13" runat="server" Text="Tipo Animal" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/p_tipoAnimal.aspx" />
            </div>
            
            </div>
                    <div class="adicionar_item">
            <div class="img_uti">
                <asp:ImageButton ID="ImageButton27" runat="server" 
                    ImageUrl="~/images/icones/dog icon.jpg" 
                    PostBackUrl="~/paginas/acesso_funcionario/p_doenca.aspx" />
            </div>
            <div class="text_descri">
                <asp:LinkButton ID="LinkButton19" runat="server" Text="Doenças e Alergias" BackColor="#ff7f00" 
                     BorderWidth="0px" Font-Bold="True" Font-Size="14px" ForeColor="#232B2B" 
                     Height="45px" Width="110px" 
                    PostBackUrl="~/paginas/acesso_funcionario/p_doenca.aspx"></asp:LinkButton>
            </div>
        </div>

            </div>






 </asp:Content>
