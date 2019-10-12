<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarVisitantes.aspx.cs" Inherits="CondominioSite.ModuloMorador.CadastrarVisitantes" MasterPageFile="~/ModuloMorador/Site1.Master" %>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            InsertCommand="INSERT INTO Visitantes(VisitNome, VisitRg, VisitCpf, VisitTelefone, VisitMobile, VisitEmail, IDBloco, IDUnit, Login) VALUES (@VisitNome, @VisitRg, @VisitCpf, @VisitTelefone, @VisitMobile, @VisitEmail, @IDBloco, @IDUnit, @Login)" 
            
            
            SelectCommand="SELECT VisitNome, VisitRg,  VisitCpf, VisitTelefone, VisitMobile, VisitEmail, IDBloco, IDUnit, Login FROM Visitantes" 
            UpdateCommand="UPDATE Visitantes SET VisitNome = @VisitNome, VisitRg = @VisitRg, VisitCpf = @VisitCpf, VisitTelefone = @VisitTelefone, VisitMobile = @VisitMobile, VisitEmail = @VisitEmail">
            <UpdateParameters>
                <asp:FormParameter Name="VisitNome" FormField="txtNome"/>
                <asp:FormParameter Name="VisitRg" FormField="txtRg"/>
                <asp:FormParameter Name="VisitCpf" FormField="txtCpf"/>
                <asp:FormParameter Name="VisitTelefone"  FormField="txtTelefone"/>
                <asp:FormParameter Name="VisitMobile" FormField="txtCelular"/>
                <asp:FormParameter Name="VisitEmail" FormField="txtEmail"/>
            </UpdateParameters>
            <InsertParameters>
                <asp:FormParameter Name="VisitNome" FormField="txtNome"/>
                <asp:FormParameter Name="VisitRg" FormField="txtRg"/>
                <asp:FormParameter Name="VisitCpf" FormField="txtCpf"/>
                <asp:FormParameter Name="VisitTelefone"  FormField="txtTelefone"/>
                <asp:FormParameter Name="VisitMobile" FormField="txtCelular"/>
                <asp:FormParameter Name="VisitEmail" FormField="txtEmail"/>
                <asp:Parameter Name="IDBloco" />
                <asp:Parameter Name="IDUnit" />
                <asp:Parameter Name="Login" />
            </InsertParameters>
        </asp:SqlDataSource>
        <table style="width: 30%;">
            <tr>
                <td class="style3">
                    <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label2" runat="server" Text="Rg:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtRg" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label3" runat="server" Text="Orgao Emissor:"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtRgOrgao" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label4" runat="server" Text="Cpf:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCpf" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label5" runat="server" Text="Telefone:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTelefone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label6" runat="server" Text="Celular:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCelular" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label9" runat="server" Text="Email:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar:" 
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
