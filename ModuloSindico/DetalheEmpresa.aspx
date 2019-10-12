<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetalheEmpresa.aspx.cs" Inherits="CondominioSite.ModuloSindico.DetalheEmpresa"  MasterPageFile="~/ModuloSindico/Site2.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            SelectCommand="SELECT Empresa.EmpNome, Empresa.EmpNomeFant, Empresa.EmpCnpjCpf, Empresa.EmpResp, Empresa.EmpTel, Empresa.EmpMobile, Empresa.EmpEmail, Empresa.EmpInscEst, Empresa.EmpInscMunicipal, Empresa.EmpEnd, Empresa.EmpComp, Empresa.EmpBairro, Empresa.EmpCep, Empresa.EmpCidade, Empresa.EmpEstado, Condominio.CondNome, Empresa.ServicoRealizado FROM Empresa INNER JOIN Condominio ON Empresa.IDCond = Condominio.IDCond WHERE (Empresa.IDEmpresa = @id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
                </td>
                <td class="style6">
                    <asp:Label ID="lblNome" runat="server"></asp:Label>
                </td>
                <td class="style5">
                    <asp:Label ID="Label7" runat="server" Text="CNPJ:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblCnpj" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label2" runat="server" Text="Nome Fantasia:"></asp:Label>
                </td>
                <td class="style3" colspan="3">
                    <asp:Label ID="lblFan" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label3" runat="server" Text="Responsavel:"></asp:Label>
                </td>
                <td class="style6">
                    <asp:Label ID="lblResp" runat="server"></asp:Label>
                </td>
                <td class="style5">
                    <asp:Label ID="Label4" runat="server" Text="Telefone para Contato:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblTelefone" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label5" runat="server" Text="Celular para Contato:"></asp:Label>
                </td>
                <td class="style6">
                    <asp:Label ID="lblCelular" runat="server"></asp:Label>
                </td>
                <td class="style5">
                    <asp:Label ID="Label6" runat="server" Text="Email para Contato:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblEmail" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label8" runat="server" Text="Inscricao Estadual:"></asp:Label>
                </td>
                <td class="style6">
                    <asp:Label ID="lblInsEst" runat="server"></asp:Label>
                </td>
                <td class="style5">
                    <asp:Label ID="Label9" runat="server" Text="Inscricao Municipal:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblInsMun" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label10" runat="server" Text="Endereco:"></asp:Label>
                </td>
                <td class="style6">
                    <asp:Label ID="lblEndereco" runat="server"></asp:Label>
                </td>
                <td class="style5">
                    <asp:Label ID="Label11" runat="server" Text="Complemento:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblComplemento" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label12" runat="server" Text="Bairro:"></asp:Label>
                </td>
                <td class="style6">
                    <asp:Label ID="lblBairro" runat="server"></asp:Label>
                </td>
                <td class="style5">
                    <asp:Label ID="Label13" runat="server" Text="CEP:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblCep" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label14" runat="server" Text="Cidade:"></asp:Label>
                </td>
                <td class="style6">
                    <asp:Label ID="lblCidade" runat="server"></asp:Label>
                </td>
                <td class="style5">
                    <asp:Label ID="Label15" runat="server" Text="Estado:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblEstado" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label17" runat="server" Text="Condominio Contratante:"></asp:Label>
                </td>
                <td class="style3" colspan="3">
                    <asp:Label ID="lblCondominio" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label16" runat="server" Text="Servico Prestado:"></asp:Label>
                </td>
                <td class="style2" colspan="3" rowspan="5">
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
