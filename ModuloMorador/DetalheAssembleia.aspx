<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetalheAssembleia.aspx.cs" Inherits="CondominioSite.ModuloMorador.DetalheVotacao"  MasterPageFile="~/ModuloMorador/Site1.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            SelectCommand="SELECT Assunto, Descricao, PalavraSindico, Votacao, PeriodoVotacao, PeriodoAssembleia FROM AssembleiaOnline">
        </asp:SqlDataSource>
    
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    <asp:Label ID="Label7" runat="server" Text="Assunto:"></asp:Label>
                </td>
                <td class="style1" colspan="2">
                    <asp:Label ID="lblAssunto" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label2" runat="server" Text="Descricao:"></asp:Label>
                </td>
                <td class="style3" colspan="3" rowspan="4">
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
                    <asp:Label ID="Label3" runat="server" Text="Periodo da Assembleia:"></asp:Label>
                </td>
                <td class="style6" colspan="3" rowspan="4">
                    <asp:Label ID="lblAssembleia" runat="server"></asp:Label>
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
                    <asp:Label ID="Label5" runat="server" Text="Palavras do Sindico:"></asp:Label>
                </td>
                <td class="style6" colspan="3" rowspan="4">
                    <asp:Label ID="lblSindico" runat="server"></asp:Label>
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
                    <asp:Label ID="Label8" runat="server" Text="Periodo de Votacao:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblPeriodo" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Situacao da Votacao:"></asp:Label>
                </td>
                <td class="style6">
                    <asp:Label ID="lblSituacao" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Button ID="btnEditar" runat="server" Text="Editar" Visible="False" />
                </td>
                <td>
                    <asp:Button ID="btnVoltar" runat="server" Text="Voltar" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
</asp:Content>
