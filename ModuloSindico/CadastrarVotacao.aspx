<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarVotacao.aspx.cs" Inherits="CondominioSite.ModuloSindico.CadastrarVotacao"  MasterPageFile="~/ModuloSindico/Site2.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            InsertCommand="INSERT INTO Votacao(IDProjetos, Situacao, Periodo, DataAssembleia, IDAssembleia, Nome, IDCond) VALUES (@IDProjetos, @Situacao, @Periodo, @DataAssembleia, @IDAssembleia, @Nome, @IDCond)" 
            
            
            SelectCommand="SELECT IDProjetos, Situacao, Periodo, DataAssembleia, IDAssembleia, Nome, IDCond FROM Votacao">
            <InsertParameters>
                <asp:FormParameter Name="IDProjetos" FormField="ddlProjeto"/>
                <asp:FormParameter Name="Situacao" FormField="ddlSituacao"/>
                <asp:FormParameter Name="Periodo" FormField="txtEncerramento"/>
                <asp:FormParameter Name="DataAssembleia" FormField="txtDiaAssembleia"/>
                <asp:FormParameter Name="IDAssembleia" FormField="ddlAssembleia"/>
                <asp:FormParameter Name="Nome" FormField="txtNome"/>
                <asp:Parameter Name="IDCond" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            
            SelectCommand="SELECT [IDProjetos], [ProjNome] FROM [Projetos] WHERE ([IDCond] = @IDCond)">
            <SelectParameters>
                <asp:SessionParameter Name="IDCond" 
                    SessionField="Session[&quot;IDCond&quot;].toString()" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        <table style="width: 32%;">
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Dia da Assembleia:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDiaAssembleia" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label5" runat="server" Text="Nome do Projeto:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:DropDownList ID="ddlProjeto" runat="server" DataSourceID="SqlDataSource2" 
                        DataTextField="ProjNome" DataValueField="IDProjetos">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label11" runat="server" Text="Nome da Votacao:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Encerramento:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEncerramento" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Situacao:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlSituacao" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Aberto</asp:ListItem>
                        <asp:ListItem>Verificando</asp:ListItem>
                        <asp:ListItem>Cancelado</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" 
                        onclick="btnCadastrar_Click" />
                </td>
                <td>
                    <asp:Button ID="btnVoltar" runat="server" Text="Voltar" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
</asp:Content>
