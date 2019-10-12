<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroCondominio.aspx.cs" Inherits="CondominioSite.ModuloSindico.CadastroCondominio" MasterPageFile="~/ModuloSindico/Site2.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            InsertCommand="INSERT INTO Condominio(CondNome, CondEnd, CondNumero, CondBairro, CondCidade, CondEstado, CondCep, CondAdministrador, CondBanco, CondEmail) VALUES (@CondNome, @CondEnd, @CondNumero, @CondBairro, @CondCidade, @CondEstado, @CondCep, @CondAdministrador, @CondBanco, @CondEmail)" 
            
            SelectCommand="SELECT CondNome, CondEnd, CondNumero, CondBairro, CondCidade, CondEstado, CondCep, CondAdministrador, CondBanco, CondEmail FROM Condominio" 
            
            UpdateCommand="UPDATE Condominio SET CondNome = @CondNome, CondEnd = @CondEnd, CondNumero = @CondNumero, CondBairro = @CondBairro, CondCidade = @CondCidade, CondEstado = @CondEstado, CondCep = @CondCep, CondBanco = @CondBanco, CondEmail = @CondEmail, CondAdministrador = @CondAdministrador WHERE (IDCond = @IDCond)">
            <UpdateParameters>
                <asp:FormParameter Name="CondNome" FormField="txtNome"/>
                <asp:FormParameter Name="CondEnd" FormField="txtEndereco"/>
                <asp:FormParameter Name="CondNumero" FormField="txtNumero"/>
                <asp:FormParameter Name="CondBairro" FormField="txtBairro"/>
                <asp:FormParameter Name="CondCidade" FormField="txtCidade"/>
                <asp:FormParameter Name="CondEstado" FormField="txtEstado"/>
                <asp:FormParameter Name="CondCep" FormField="txtCep"/>
                <asp:FormParameter Name="CondBanco" FormField="txtBanco"/>
                <asp:FormParameter Name="CondEmail" FormField="txtEmail"/>
                <asp:FormParameter Name="CondAdministrador" FormField="txtSindico"/>
                <asp:Parameter Name="IDCond" />
            </UpdateParameters>
            <InsertParameters>
                <asp:FormParameter Name="CondNome" FormField="txtNome"/>
                <asp:FormParameter Name="CondEnd" FormField="txtEndereco"/>
                <asp:FormParameter Name="CondNumero" FormField="txtNumero"/>
                <asp:FormParameter Name="CondBairro" FormField="txtBairro"/>
                <asp:FormParameter Name="CondCidade" FormField="txtCidade"/>
                <asp:FormParameter Name="CondEstado" FormField="txtEstado"/>
                <asp:FormParameter Name="CondCep" FormField="txtCep"/>
                <asp:FormParameter Name="CondAdministrador" FormField="txtSindico"/>
                <asp:FormParameter Name="CondBanco" FormField="txtBanco"/>
                <asp:FormParameter Name="CondEmail" FormField="txtEmail"/>
            </InsertParameters>
        </asp:SqlDataSource>
        <table style="width: 39%;">
            <tr>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label2" runat="server" Text="Endereco:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEndereco" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label3" runat="server" Text="Numero:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNumero" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label4" runat="server" Text="Bairro:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBairro" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label5" runat="server" Text="Cidade:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCidade" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label6" runat="server" Text="Estado:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEstado" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label7" runat="server" Text="CEP:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCep" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label8" runat="server" Text="Sindico:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtSindico" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label9" runat="server" Text="Quantidade de Apartamentos:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtQtdApart" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label10" runat="server" Text="Banco:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBanco" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label11" runat="server" Text="Email:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
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
