<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastraSugestaoProjeto.aspx.cs" Inherits="CondominioSite.ModuloMorador.CadastraSugestaoProjeto" MasterPageFile="~/ModuloMorador/Site1.Master" %>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    
    <body>
        <form id="form1" runat="server">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                InsertCommand="INSERT INTO Sugestao(IDCond, Responsavel, Tipo, Orcamento, Periodo, Descricao, Nome, Login) VALUES (@IDCond, @Responsavel, @Tipo, @Orcamento, @Periodo, @Descricao, @Nome, @Login)" 
                
                
            
            SelectCommand="SELECT IDCond, Responsavel, Tipo, Orcamento, Periodo, Descricao, Nome, Login FROM Sugestao" 
            UpdateCommand="UPDATE Sugestao SET Nome = @Nome, Responsavel = @Responsavel, Tipo = @Tipo, Orcamento = @Orcamento, Periodo = @Periodo, Descricao = @Descricao WHERE (IDSugest = @IDSugest)">
                <UpdateParameters>
                    <asp:FormParameter Name="Nome" FormField="txtProjeto"/>
                    <asp:FormParameter Name="Responsavel" FormField="txtResponsavel"/>
                    <asp:FormParameter Name="Tipo" FormField="txtTipo"/>
                    <asp:FormParameter Name="Orcamento" FormField="txtOrcamento"/>
                    <asp:FormParameter Name="Periodo" FormField="txtDias"/>
                    <asp:FormParameter Name="Descricao" FormField="txtDescricao"/>
                    <asp:Parameter Name="IDSugest" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="IDCond" />
                    <asp:FormParameter Name="Responsavel" FormField="txtResponsavel"/>
                    <asp:FormParameter Name="Tipo" FormField="txtTipo"/>
                    <asp:FormParameter Name="Orcamento" FormField="txtOrcamento"/>
                    <asp:FormParameter Name="Periodo" FormField="txtDias"/>
                    <asp:FormParameter Name="Descricao" FormField="txtDescricao"/>
                    <asp:FormParameter Name="Nome" FormField="txtProjeto"/>
                    <asp:Parameter Name="Login" />
                </InsertParameters>
            </asp:SqlDataSource>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Nome do Projeto:"></asp:Label>
&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtProjeto" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;<asp:Label ID="Label2" runat="server" Text="Responsavel:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtResponsavel" runat="server" Width="127px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;<asp:Label ID="Label3" runat="server" Text="Tipo:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTipo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;<asp:Label ID="Label4" runat="server" Text="Orcamento:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtOrcamento" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Periodo de Dias:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDias" runat="server" Height="22px" Width="128px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Descricao:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDescricao" runat="server" TextMode="MultiLine"></asp:TextBox>
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
        </form>
    </body>
</html>
</asp:Content>
