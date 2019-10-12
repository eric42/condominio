<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetalheCondominio.aspx.cs" Inherits="CondominioSite.ModuloSindico.DetalheCondominio" MasterPageFile="~/ModuloSindico/Site2.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            SelectCommand="SELECT Condominio.CondNome, Condominio.CondEnd, Condominio.CondNumero, Condominio.CondBairro, Condominio.CondCidade, Condominio.CondEstado, Condominio.CondCep, Condominio.CondMap, Condominio.CondMatricula, Condominio.CondAdministrador, Condominio.CondBanco, Condominio.CondEmail, Condominio.Descricao, Condominio.Telefone, COUNT(Bloco.IDBloco) AS Bloco, COUNT(Unit.IDUnit) AS Apartamento, Condominio.IDCond FROM Condominio INNER JOIN Bloco ON Condominio.IDCond = Bloco.IDCond INNER JOIN Unit ON Condominio.IDCond = Unit.IDCond AND Bloco.IDUnit = Unit.IDUnit AND Bloco.IDBloco = Unit.IDBloco WHERE (Condominio.IDCond = @id) GROUP BY Condominio.CondNome, Condominio.CondEnd, Condominio.CondNumero, Condominio.CondBairro, Condominio.CondCidade, Condominio.CondEstado, Condominio.CondCep, Condominio.CondMap, Condominio.CondMatricula, Condominio.CondAdministrador, Condominio.CondBanco, Condominio.CondEmail, Condominio.Descricao, Condominio.Telefone, Condominio.IDCond">
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
                </td>
                <td class="style2" colspan="3">
                    <asp:Label ID="lblNome" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label2" runat="server" Text="Endereco:"></asp:Label>
                </td>
                <td class="style2">
                    <asp:Label ID="lblEndereco" runat="server"></asp:Label>
                </td>
                <td class="style3">
                    <asp:Label ID="Label3" runat="server" Text="Numero:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblNumero" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label4" runat="server" Text="Bairro:"></asp:Label>
                </td>
                <td class="style2">
                    <asp:Label ID="lblBairro" runat="server"></asp:Label>
                </td>
                <td class="style3">
                    <asp:Label ID="Label7" runat="server" Text="CEP:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblCep" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label5" runat="server" Text="Cidade:"></asp:Label>
                </td>
                <td class="style2">
                    <asp:Label ID="lblCidade" runat="server"></asp:Label>
                </td>
                <td class="style3">
                    <asp:Label ID="Label6" runat="server" Text="Estado:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblEstado" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label8" runat="server" Text="Matricula:"></asp:Label>
                </td>
                <td class="style2">
                    <asp:Label ID="lblMatricula" runat="server"></asp:Label>
                </td>
                <td class="style3">
                    <asp:Label ID="Label9" runat="server" Text="Administrador:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblAdmin" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label13" runat="server" Text="Telefone de Contato:"></asp:Label>
                </td>
                <td class="style2">
                    <asp:Label ID="lblTelefone" runat="server"></asp:Label>
                </td>
                <td class="style3">
                    <asp:Label ID="Label12" runat="server" Text="Email de Contato:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblEmail" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label15" runat="server" Text="Quantidade de Blocos:"></asp:Label>
                </td>
                <td class="style2">
                    <asp:Label ID="lblBlocos" runat="server"></asp:Label>
                </td>
                <td class="style3">
                    <asp:Label ID="Label11" runat="server" Text="Quantidade de Apartamentos:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblApart" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label10" runat="server" Text="Banco:"></asp:Label>
                </td>
                <td class="style2" colspan="3">
                    <asp:Label ID="lblBanco" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label14" runat="server" Text="Descricao:"></asp:Label>
                </td>
                <td class="style2" colspan="3" rowspan="3">
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
                    <asp:Label ID="Label16" runat="server" Text="Mapa:"></asp:Label>
                </td>
                <td class="style2" colspan="3" rowspan="3">
                    <asp:Label ID="lblMapa" runat="server"></asp:Label>
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
                <td class="style2" colspan="3">
                    <asp:Button ID="btnVoltar" runat="server" Text="Voltar" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
</asp:Content>
