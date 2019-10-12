<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarBanco.aspx.cs" Inherits="CondominioSite.ModuloSindico.CadastrarBanco" MasterPageFile="~/ModuloSindico/Site2.Master" %>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            InsertCommand="INSERT INTO Bancos(BancoNome, BancoAgencia, BancoConta, BancoTel, BancoGerente, BancoEmail, BancoResponsavel, BancoCartDeb, BancoCartCre, IDCond) VALUES (@BancoNome, @BancoAgencia, @BancoConta, @BancoTel, @BancoGerente, @BancoEmail, @BancoResponsavel, @BancoCartDeb, @BancoCartCre, @IDCond)" 
            
            
            
            SelectCommand="SELECT BancoNome, BancoAgencia, BancoConta, BancoGerente, BancoTel, BancoEmail, BancoResponsavel, BancoCartDeb, BancoCartCre, IDCond FROM Bancos" 
            UpdateCommand="UPDATE Bancos SET BancoNome = @BancoNome, BancoAgencia = @BancoAgencia, BancoConta = @BancoConta, BancoCartDeb = @BancoCartDeb, BancoCartCre = @BancoCartCre, BancoGerente = @BancoGerente, BancoTel = @BancoTel, BancoEmail = @BancoEmail, BancoResponsavel = @BancoResponsavel WHERE (IDBanco = @IDBanco)">
            <UpdateParameters>
                <asp:FormParameter Name="BancoNome" FormField="txtBanco"/>
                <asp:FormParameter Name="BancoAgencia" FormField="txtAgencia"/>
                <asp:FormParameter Name="BancoConta" FormField="txtConta"/>
                <asp:FormParameter Name="BancoCartDeb" FormField="txtCartDeb"/>
                <asp:FormParameter Name="BancoCartCre" FormField="txtCartCred"/>
                <asp:FormParameter Name="BancoGerente" FormField="txtGerente"/>
                <asp:FormParameter Name="BancoTel" FormField="txtTelefone"/>
                <asp:FormParameter Name="BancoEmail" FormField="txtEmail"/>
                <asp:FormParameter Name="BancoResponsavel" FormField="txtResponsavel"/>
                <asp:Parameter Name="IDBanco" />
            </UpdateParameters>
            <InsertParameters>
                <asp:FormParameter Name="BancoNome" FormField="txtBanco"/>
                <asp:FormParameter Name="BancoAgencia"FormField="txtAgencia" />
                <asp:FormParameter Name="BancoConta" FormField="txtConta"/>
                <asp:FormParameter Name="BancoTel" FormField="txtTelefone"/>
                <asp:FormParameter Name="BancoGerente" FormField="txtGerente"/>
                <asp:FormParameter Name="BancoEmail" FormField="txtEmail"/>
                <asp:FormParameter Name="BancoResponsavel" FormField="txtResponsavel"/>
                <asp:FormParameter Name="BancoCartDeb" FormField="txtCartDeb"/>
                <asp:FormParameter Name="BancoCartCre" FormField="txtCartCred"/>
                <asp:Parameter Name="IDCond" />
            </InsertParameters>
        </asp:SqlDataSource>
        <table style="width: 37%;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Banco:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBanco" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Agencia:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAgencia" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Conta:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtConta" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Cartao de Debito:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCartDeb" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Cartao de Credito:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCartCred" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Gerente do Banco:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtGerente" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Telefone do Banco:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTelefone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Email do Banco:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Responsavel pela Conta:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtResponsavel" runat="server"></asp:TextBox>
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
