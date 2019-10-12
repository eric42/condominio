<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetalheApartamento.aspx.cs" Inherits="CondominioSite.ModuloMorador.DetalheApartamento"  MasterPageFile="~/ModuloMorador/Site1.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            SelectCommand="SELECT Unit.UnitNumber, Bloco.Nome, Unit.UnitNumGaragem, Unit.UnitGaragem, Unit.Tamanho, Unit.Planta, Unit.UnitVenda, Unit.Descricao, Proprietarios.PropName, Usuario.Nome AS Expr1, Proprietarios.PropTel, Proprietarios.PropMobile, Proprietarios.PropObs FROM Unit INNER JOIN Proprietarios ON Unit.IDUnit = Proprietarios.IDUnit INNER JOIN Usuario ON Unit.Login = Usuario.Login AND Unit.IDUnit = Usuario.IDUnit AND Proprietarios.Login = Usuario.Login INNER JOIN Bloco ON Unit.IDBloco = Bloco.IDBloco AND Unit.IDUnit = Bloco.IDUnit AND Usuario.IDBloco = Bloco.IDBloco WHERE (Unit.IDUnit = @id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Numero do Apartamento:"></asp:Label>
                </td>
                <td class="style6">
                    <asp:Label ID="lblApart" runat="server"></asp:Label>
                </td>
                <td class="style5">
                    <asp:Label ID="Label2" runat="server" Text="Bloco do Apartamento:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblBloco" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label5" runat="server" Text="Quantidade de Garagens:"></asp:Label>
                </td>
                <td >
                    <asp:Label ID="lblQtd" runat="server"></asp:Label>
                </td>
                <td >
                    <asp:Label ID="Label3" runat="server" Text="Garagen:"></asp:Label>
                </td>
                <td >
                    <asp:Label ID="lblGaragem" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label12" runat="server" Text="Tamanho:"></asp:Label>
                </td>
                <td class="style6">
                    <asp:Label ID="lblTamanho" runat="server"></asp:Label>
                </td>
                <td class="style5">
                    <asp:Label ID="Label14" runat="server" Text="Planta:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblPlanta" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label8" runat="server" Text="A Venda"></asp:Label>
                </td>
                <td class="style6" colspan="3">
                    <asp:RadioButtonList ID="rblOcupada" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem Value="1">Sim</asp:ListItem>
                        <asp:ListItem Value="0">Nao</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label10" runat="server" Text="Descricao:"></asp:Label>
                </td>
                <td class="style6" colspan="3" rowspan="4">
                    <asp:Label ID="lblDescricao" runat="server"></asp:Label>
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
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label17" runat="server" Text="Proprietario:"></asp:Label>
                </td>
                <td class="style6" colspan="3">
                    <asp:Label ID="lblProprietario" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label18" runat="server" Text="Inquilino:"></asp:Label>
                </td>
                <td class="style6" colspan="3">
                    <asp:Label ID="lblInquilino" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label16" runat="server" Text="Telefone:"></asp:Label>
                </td>
                <td class="style6">
                    <asp:Label ID="lblTelefone" runat="server"></asp:Label>
                </td>
                <td class="style5">
                    <asp:Label ID="Label15" runat="server" Text="Celular:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblCelular" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label13" runat="server" Text="Email:"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:Label ID="lblEmail" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label11" runat="server" Text="Observacao:"></asp:Label>
                </td>
                <td colspan="3" rowspan="4">
                    <asp:Label ID="lblObservacao" runat="server"></asp:Label>
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
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Button ID="btnEditar" runat="server" Text="Editar" Visible="False" />
                </td>
                <td>
                    <asp:Button ID="btnVoltar" runat="server" Text="Voltar" />
                </td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
</asp:Content>
