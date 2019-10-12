<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetalheContas.aspx.cs" Inherits="CondominioSite.ModuloSindico.DetalheContas"  MasterPageFile="~/ModuloSindico/Site2.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            SelectCommand="SELECT Empresa.EmpNome, NotaFiscal.NfNumero, Contas.CtaDescricao, Contas.CtaBoletoNumero, Contas.CtaDtBoleto, Contas.CtaVencimentoBoleto, Contas.CtaValor FROM Contas INNER JOIN Empresa ON Contas.IDEmpresa = Empresa.IDEmpresa INNER JOIN NotaFiscal ON Contas.IDNF = NotaFiscal.IDNF AND Empresa.IDEmpresa = NotaFiscal.IDEmpresa WHERE (Contas.IDContas = @id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
        <table style="width:100%;">
            <tr>
                <td class="style8">
                    <asp:Label ID="Label1" runat="server" Text="Empresa:"></asp:Label>
                </td>
                <td class="style2" colspan="3">
                    <asp:Label ID="lblEmpresa" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Label ID="Label2" runat="server" Text="Nota Fiscal:"></asp:Label>
                </td>
                <td class="style2" colspan="3">
                    <asp:Label ID="lblNota" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Label ID="Label4" runat="server" Text="Numero do Boleto:"></asp:Label>
                </td>
                <td class="style2" colspan="3">
                    <asp:Label ID="lblNumero" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    <asp:Label ID="Label5" runat="server" Text="Data da Criacao do Boleto:"></asp:Label>
                </td>
                <td class="style13">
                    <asp:Label ID="lblDataCriacao" runat="server"></asp:Label>
                </td>
                <td class="style10">
                    <asp:Label ID="Label6" runat="server" Text="Data de Vencimento do Boleto:"></asp:Label>
                </td>
                <td class="style12">
                    <asp:Label ID="lblVencimento" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Label ID="Label3" runat="server" Text="Descricao:"></asp:Label>
                </td>
                <td class="style2" colspan="3" rowspan="3">
                    <asp:Label ID="lblDescricao" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Label ID="Label7" runat="server" Text="Valor:"></asp:Label>
                </td>
                <td class="style2" colspan="3">
                    <asp:Label ID="lblValor" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3" colspan="2">
                    <asp:Button ID="btnEditar" runat="server" Height="26px" Text="Editar" 
                        Visible="False" />
                </td>
                <td class="style7" colspan="2">
                    <asp:Button ID="btnVoltar" runat="server"
                        Text="Voltar" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
</asp:Content>
