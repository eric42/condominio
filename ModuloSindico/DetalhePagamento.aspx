<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetalhePagamento.aspx.cs" Inherits="CondominioSite.ModuloSindico.DetalhePagamento"  MasterPageFile="~/ModuloSindico/Site2.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            SelectCommand="SELECT Pagamentos.PagDataEntrada, Pagamentos.PagVencimento, Pagamentos.PagForma, Pagamentos.PagSituacao, Empresa.EmpNome, NotaFiscal.NfNumero, Pagamentos.PagValor, Pagamentos.Banco, Pagamentos.Agencia, Pagamentos.Conta FROM Pagamentos INNER JOIN Empresa ON Pagamentos.IDEmpresa = Empresa.IDEmpresa INNER JOIN NotaFiscal ON Pagamentos.IDNotaFiscal = NotaFiscal.IDNF AND Empresa.IDEmpresa = NotaFiscal.IDEmpresa WHERE (Pagamentos.IDPagamento = @id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Data da Criacao:"></asp:Label>
                </td>
                <td class="style8">
                    <asp:Label ID="lblCriacao" runat="server"></asp:Label>
                </td>
                <td class="style9">
                    <asp:Label ID="Label2" runat="server" Text="Vencimento:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblVencimento" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label3" runat="server" Text="Forma do Pagamento:"></asp:Label>
                </td>
                <td class="style8">
                    <asp:Label ID="lblForma" runat="server"></asp:Label>
                </td>
                <td class="style9">
                    <asp:Label ID="Label5" runat="server" Text="Situacao:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblSituacao" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label4" runat="server" Text="Empresa:"></asp:Label>
                </td>
                <td class="style4" colspan="3">
                    <asp:Label ID="lblEmpresa" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label9" runat="server" Text="Nota Fiscal:"></asp:Label>
                </td>
                <td class="style2" colspan="3">
                    <asp:Label ID="lblNotaFiscal" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label6" runat="server" Text="Banco:"></asp:Label>
                </td>
                <td class="style2" colspan="3">
                    <asp:Label ID="lblBanco" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label7" runat="server" Text="Agencia:"></asp:Label>
                </td>
                <td class="style8">
                    <asp:Label ID="lblAgencia" runat="server"></asp:Label>
                </td>
                <td class="style9">
                    <asp:Label ID="Label8" runat="server" Text="Conta:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblConta" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Button ID="btnEditar" runat="server" Text="Editar" Visible="False" />
                </td>
                <td class="style8">
                    <asp:Button ID="btnVoltar" runat="server" Text="Voltar" />
                </td>
                <td class="style6" colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
</asp:Content>
