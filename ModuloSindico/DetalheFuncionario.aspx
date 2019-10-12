<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetalheFuncionario.aspx.cs" Inherits="CondominioSite.ModuloSindico.DetalheFuncionario"  MasterPageFile="~/ModuloSindico/Site2.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
        SelectCommand="SELECT CondFuncNome, CondFuncCpf, CondFuncRg, CondFuncCidadeOrigem, CondFuncEstadoOrigem, CondFuncCartTrab, CondFuncCartTrabSecao, CondFuncModelo, CondFuncExped, CondFuncBirth, CondFuncTel, CondFuncMobile, CondFuncEnd, CondFuncComplem, CondFuncBairro, CondFuncCep, CondFuncCidade, CondFuncEstado, CondFuncSituacao, Funcao, Servico FROM Funcionarios WHERE (IDCondFunc = @id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" />
            </SelectParameters>
    </asp:SqlDataSource>
    
        <table style="width:100%;">
            <tr>
                <td class="style7">
                    <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
                </td>
                <td class="style8" colspan="9">
                    <asp:Label ID="lblNome" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label7" runat="server" Text="CPF:"></asp:Label>
                </td>
                <td class="style3" colspan="9">
                    <asp:Label ID="lblCpf" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label2" runat="server" Text="RG:"></asp:Label>
                </td>
                <td class="style13" colspan="2">
                    <asp:Label ID="lblRg" runat="server"></asp:Label>
                </td>
                <td class="style19" colspan="2">
                    <asp:Label ID="Label5" runat="server" Text="Cidade de Origem:"></asp:Label>
                </td>
                <td class="style14" colspan="2">
                    <asp:Label ID="lblCidOri" runat="server"></asp:Label>
                </td>
                <td class="style20">
                    <asp:Label ID="Label4" runat="server" Text="Estado de Origem:"></asp:Label>
                </td>
                <td class="style3" colspan="2">
                    <asp:Label ID="lblEstOri" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label6" runat="server" Text="Carteira de trabalho:"></asp:Label>
                </td>
                <td class="style3">
                    <asp:Label ID="lblCartTrab" runat="server"></asp:Label>
                </td>
                <td class="style3" colspan="2">
                    <asp:Label ID="Label8" runat="server" Text="Secao:"></asp:Label>
                </td>
                <td class="style3" colspan="2">
                    <asp:Label ID="lblSecao" runat="server"></asp:Label>
                </td>
                <td class="style16" colspan="3">
                    <asp:Label ID="Label10" runat="server" Text="Modelo:"></asp:Label>
                </td>
                <td class="style3">
                    <asp:Label ID="lblModelo" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label9" runat="server" Text="Expedido:"></asp:Label>
                </td>
                <td class="style3" colspan="9">
                    <asp:Label ID="lblExpedido" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label3" runat="server" Text="Data de Nascimento:"></asp:Label>
                </td>
                <td class="style3" colspan="9">
                    <asp:Label ID="lblNasc" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label11" runat="server" Text="Telefone:"></asp:Label>
                </td>
                <td class="style6" colspan="4">
                    <asp:Label ID="lblTelefone" runat="server"></asp:Label>
                </td>
                <td class="style18">
                    <asp:Label ID="Label12" runat="server" Text="Celular:"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:Label ID="lblCelular" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label13" runat="server" Text="Endereco:"></asp:Label>
                </td>
                <td class="style6" colspan="4">
                    <asp:Label ID="lblEndereco" runat="server"></asp:Label>
                </td>
                <td class="style5">
                    <asp:Label ID="Label14" runat="server" Text="Complemento:"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:Label ID="lblComplemento" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label15" runat="server" Text="Bairro:"></asp:Label>
                </td>
                <td class="style6" colspan="4">
                    <asp:Label ID="lblBairro" runat="server"></asp:Label>
                </td>
                <td class="style5" colspan="3">
                    <asp:Label ID="Label19" runat="server" Text="CEP:"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:Label ID="lblCep" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label17" runat="server" Text="Cidade:"></asp:Label>
                </td>
                <td class="style6" colspan="4">
                    <asp:Label ID="lblCidade" runat="server"></asp:Label>
                </td>
                <td class="style5" colspan="3">
                    <asp:Label ID="Label16" runat="server" Text="Estado:"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:Label ID="lblEstado" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label18" runat="server" Text="Situacao:"></asp:Label>
                </td>
                <td class="style6" colspan="9">
                    <asp:Label ID="lblSituacao" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label20" runat="server" Text="Funcao:"></asp:Label>
                </td>
                <td class="style6" colspan="9">
                    <asp:Label ID="lblFuncao" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label21" runat="server" Text="Servico Prestado:"></asp:Label>
                </td>
                <td class="style6" colspan="9" rowspan="3">
                    <asp:Label ID="lblServico" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Button ID="btnEditar" runat="server" Text="Editar" Visible="False" />
                </td>
                <td colspan="4">
                    <asp:Button ID="btnVoltar" runat="server" Text="Voltar" />
                </td>
                <td class="style5" colspan="3">
                    &nbsp;</td>
            </tr>
        </table>
    
    </form>
</body>
</html>
</asp:Content>
