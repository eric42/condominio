<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarBlocos.aspx.cs" Inherits="CondominioSite.ModuloSindico.CadastrarBlocos"  MasterPageFile="~/ModuloSindico/Site2.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            InsertCommand="INSERT INTO Bloco(IDCond, Nome, NumeroAndares, QtdApartamento) VALUES (@IDCond, @Nome, @NumeroAndares, @QtdApartamento)" 
            
            SelectCommand="SELECT IDCond, Nome, NumeroAndares, QtdApartamento FROM Bloco" 
            UpdateCommand="UPDATE Bloco SET Nome = @Nome, NumeroAndares = @NumeroAndares, QtdApartamento = @QtdApartamento WHERE (IDBloco = @IDBloco)">
            <UpdateParameters>
                <asp:FormParameter Name="nome" FormField="txtNome"/>
                <asp:FormParameter Name="NumeroAndares" FormField="txtNumAndar"/>
                <asp:FormParameter Name="QtdApartamento" FormField="txtNumApart"/>
                <asp:Parameter Name="IDBloco" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="IDCond" />
                <asp:FormParameter Name="Nome" FormField="txtNome"/>
                <asp:FormParameter Name="NumeroAndares" FormField="txtNumAndar"/>
                <asp:FormParameter Name="QtdApartamento" FormField="txtNumApart" />
            </InsertParameters>
        </asp:SqlDataSource>
        <table style="width: 38%;">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Nome:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Numero de Andares:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNumAndar" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Numero de Apartamentos:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNumApart" runat="server"></asp:TextBox>
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
