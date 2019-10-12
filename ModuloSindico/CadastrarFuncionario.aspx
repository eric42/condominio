<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarFuncionario.aspx.cs" Inherits="CondominioSite.ModuloSindico.CadastrarFuncionario"  MasterPageFile="~/ModuloSindico/Site2.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            InsertCommand="INSERT INTO Funcionarios(CondFuncNome, CondFuncCpf, CondFuncRg, CondFuncBirth, CondFuncCidadeOrigem, CondFuncEstadoOrigem, CondFuncExped, CondFuncCartTrab, CondFuncCartTrabSecao, CondFuncModelo, CondFuncTel, CondFuncMobile, CondFuncEnd, CondFuncComplem, CondFuncBairro, CondFuncCep, CondFuncCidade, CondFuncEstado, CondFuncSituacao, IDCond, Funcao, Servico) VALUES (@CondFuncNome, @CondFuncCpf, @CondFuncRg, @CondFuncBirth, @CondFuncCidadeOrigem, @CondFuncEstadoOrigem, @CondFuncExped, @CondFuncCartTrab, @CondFuncCartTrabSecao, @CondFuncModelo, @CondFuncTel, @CondFuncMobile, @CondFuncEnd, @CondFuncComplem, @CondFuncBairro, @CondFuncCep, @CondFuncCidade, @CondFuncEstado, @CondFuncSituacao, @IDCond, @Funcao, @Servico)" 
            
            
            
            SelectCommand="SELECT CondFuncNome, CondFuncCpf, CondFuncRg, CondFuncBirth, CondFuncCidadeOrigem, CondFuncEstadoOrigem, CondFuncExped, CondFuncCartTrab, CondFuncCartTrabSecao, CondFuncModelo, CondFuncTel, CondFuncMobile, CondFuncEnd, CondFuncComplem, CondFuncBairro, CondFuncCep, CondFuncCidade, CondFuncEstado, CondFuncSituacao, IDCond, Funcao, Servico FROM Funcionarios" 
            
            UpdateCommand="UPDATE Funcionarios SET CondFuncNome = @CondFuncNome, CondFuncCpf = @CondFuncCpf, CondFuncRg = @CondFuncRg, CondFuncBirth = @CondFuncBirth, CondFuncCidadeOrigem = @CondFuncCidadeOrigem, CondFuncEstadoOrigem = @CondFuncEstadoOrigem, CondFuncCartTrab = @CondFuncCartTrab, CondFuncCartTrabSecao = @CondFuncCartTrabSecao, CondFuncExped = @CondFuncExped, CondFuncModelo = @CondFuncModelo, CondFuncTel = @CondFuncTel, CondFuncMobile = @CondFuncMobile, CondFuncEnd = @CondFuncEnd, CondFuncComplem = @CondFuncComplem, CondFuncBairro = @CondFuncBairro, CondFuncCep = @CondFuncCep, CondFuncCidade = @CondFuncCidade, CondFuncEstado = @CondFuncEstado, Funcao = @Funcao, Servico = @Servico, CondFuncSituacao = @CondFuncSituacao WHERE (IDCondFunc = @IDCondFunc)">
            <UpdateParameters>
                <asp:FormParameter Name="CondFuncNome" FormField="txtNome" />
                <asp:FormParameter Name="CondFuncCpf" FormField="txtCpf"/>
                <asp:FormParameter Name="CondFuncRg" FormField="txtRg"/>
                <asp:FormParameter Name="CondFuncBirth" FormField="txtDtNasc"/>
                <asp:FormParameter Name="CondFuncCidadeOrigem" FormField="txtCidOri"/>
                <asp:FormParameter Name="CondFuncEstadoOrigem" FormField="txtEstOri"/>
                <asp:FormParameter Name="CondFuncCartTrab" FormField="txtCartTrab"/>
                <asp:FormParameter Name="CondFuncCartTrabSecao" FormField="txtCartTrabSec"/>
                <asp:FormParameter Name="CondFuncExped" FormField="txtCartTrabExp"/>
                <asp:FormParameter Name="CondFuncModelo" FormField="txtContrato"/>
                <asp:FormParameter Name="CondFuncTel" FormField="txtTelefone"/>
                <asp:FormParameter Name="CondFuncMobile" FormField="txtCelular"/>
                <asp:FormParameter Name="CondFuncEnd" FormField="txtEndereco"/>
                <asp:FormParameter Name="CondFuncComplem" FormField="txtComplemento"/>
                <asp:FormParameter Name="CondFuncBairro" FormField="txtBairro"/>
                <asp:FormParameter Name="CondFuncCep" FormField="txtCep"/>
                <asp:FormParameter Name="CondFuncCidade" FormField="txtCidade"/>
                <asp:FormParameter Name="CondFuncEstado" FormField="txtEstado"/>
                <asp:FormParameter Name="funcao" FormField="txtFuncao"/>
                <asp:FormParameter Name="servico" FormField="txtServico"/>
                <asp:FormParameter Name="CondFuncSituacao" FormField="ddlSituacao"/>
                <asp:Parameter Name="IDCondFunc" />
            </UpdateParameters>
            <InsertParameters>
                <asp:FormParameter Name="CondFuncNome" FormField="txtNome"/>
                <asp:FormParameter Name="CondFuncCpf" FormField="txtCpf"/>
                <asp:FormParameter Name="CondFuncRg" FormField="txtRg"/>
                <asp:FormParameter Name="CondFuncBirth" FormField="txtDtNasc"/>
                <asp:FormParameter Name="CondFuncCidadeOrigem" FormField="txtCidOri"/>
                <asp:FormParameter Name="CondFuncEstadoOrigem" FormField="txtEstOri"/>
                <asp:FormParameter Name="CondFuncExped" FormField="txtCartTrabExp"/>
                <asp:FormParameter Name="CondFuncCartTrab" FormField="txtCartTrab"/>
                <asp:FormParameter Name="CondFuncCartTrabSecao" FormField="txtCartTrabSec"/>
                <asp:FormParameter Name="CondFuncModelo" FormField="txtContrato"/>
                <asp:FormParameter Name="CondFuncTel" FormField="txtTelefone"/>
                <asp:FormParameter Name="CondFuncMobile" FormField="txtCelular"/>
                <asp:FormParameter Name="CondFuncEnd" FormField="txtEndereco"/>
                <asp:FormParameter Name="CondFuncComplem" FormField="txtComplemento"/>
                <asp:FormParameter Name="CondFuncBairro" FormField="txtBairro"/>
                <asp:FormParameter Name="CondFuncCep" FormField="txtCep"/>
                <asp:FormParameter Name="CondFuncCidade" FormField="txtCidade"/>
                <asp:FormParameter Name="CondFuncEstado" FormField="txtEstado"/>
                <asp:FormParameter Name="CondFuncSituacao" FormField="ddlSituacao"/>
                <asp:Parameter Name="IDCond" />
                <asp:FormParameter Name="Funcao" FormField="txtFuncao"/>
                <asp:FormParameter Name="Servico" FormField="txtServico"/>
            </InsertParameters>
        </asp:SqlDataSource>
    
        <table style="width:36%;">
            <tr>
                <td class="style3">
                    <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label3" runat="server" Text="Cpf:"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtCpf" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label2" runat="server" Text="Rg:"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtRg" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label4" runat="server" Text="Data de Nascimento:"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtDtNasc" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label5" runat="server" Text="Cidade de Origem:"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtCidOri" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label6" runat="server" Text="Estado de Origem:"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtEstOri" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label7" runat="server" Text="Carteira de Trabalho:"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtCartTrab" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label8" runat="server" Text="Secao:"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtCartTrabSec" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label9" runat="server" Text="Expedido:"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtCartTrabExp" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label10" runat="server" Text="Modo de Contrato:"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtContrato" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label11" runat="server" Text="Telefone:"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtTelefone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label12" runat="server" Text="Celular:"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtCelular" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label13" runat="server" Text="Endereco:"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtEndereco" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label15" runat="server" Text="Complemento:"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtComplemento" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label16" runat="server" Text="Bairro:"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtBairro" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label17" runat="server" Text="CEP:"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtCep" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label18" runat="server" Text="Cidade:"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtCidade" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label19" runat="server" Text="Estado:"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtEstado" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label20" runat="server" Text="Situacao:"></asp:Label>
                </td>
                <td class="style4">
                    <asp:DropDownList ID="ddlSituacao" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Ativo</asp:ListItem>
                        <asp:ListItem>Demitido</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label21" runat="server" Text="Funcao:"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtFuncao" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label22" runat="server" Text="Servico:"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtServico" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" 
                        onclick="btnCadastrar_Click" style="height: 26px" />
                </td>
                <td class="style4">
                    <asp:Button ID="btnVoltar" runat="server" Text="Voltar" Width="56px" />
                </td>
            </tr>
        </table>
    
    </div>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
</asp:Content>
