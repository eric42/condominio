<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroAnimais.aspx.cs" Inherits="CondominioSite.ModuloMorador.CadastroAnimais"  MasterPageFile="~/ModuloMorador/Site1.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            InsertCommand="INSERT INTO Animais(IDUnit, Login, NomeDono, IDCond, IDBloco, AnimalNome, AnimalTipo, AnimalRaca, AnimalPeso, AnimalTamanho) VALUES (@IDUnit, @Login, @NomeDono, @IDCond, @IDBloco, @AnimalNome, @AnimalTipo, @AnimalRaca, @AnimalPeso, @AnimalTamanho)" 
            
            SelectCommand="SELECT IDUnit, Login, NomeDono, IDCond, IDBloco, AnimalNome, AnimalTipo, AnimalRaca, AnimalPeso, AnimalTamanho FROM Animais" 
            UpdateCommand="UPDATE Animais SET AnimalNome = @AnimalNome, AnimalTipo = @AnimalTipo, AnimalTamanho = @AnimalTamanho, AnimalPeso = @AnimalPeso, AnimalRaca = @AnimalRaca, NomeDono = @NomeDono WHERE (IDAnimal = @IDAnimal)">
            <UpdateParameters>
                <asp:FormParameter Name="AnimalNome" FormField="txtNome"/>
                <asp:FormParameter Name="AnimalTipo" FormField="txtTipo"/>
                <asp:FormParameter Name="AnimalTamanho" FormField="txtTamanho"/>
                <asp:FormParameter Name="AnimalPeso" FormField="txtPeso"/>
                <asp:FormParameter Name="AnimalRaca" FormField="txtRaca"/>
                <asp:FormParameter Name="NomeDono" FormField="txtMorador"/>
                <asp:Parameter Name="IDAnimal" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="IDUnit" />
                <asp:Parameter Name="Login" />
                <asp:FormParameter Name="NomeDono" FormField="txtMorador"/>
                <asp:Parameter Name="IDCond" />
                <asp:Parameter Name="IDBloco" />
                <asp:FormParameter Name="AnimalNome" FormField="txtNome"/>
                <asp:FormParameter Name="AnimalTipo"  FormField="txtTipo"/>
                <asp:FormParameter Name="AnimalRaca" FormField="txtRaca"/>
                <asp:FormParameter Name="AnimalPeso" FormField="txtPeso"/>
                <asp:FormParameter Name="AnimalTamanho" FormField="txtTamanho"/>
            </InsertParameters>
        </asp:SqlDataSource>
    
        <table style="width: 29%;">
            <tr>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label2" runat="server" Text="Tipo:"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtTipo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label3" runat="server" Text="Tamanho:"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtTamanho" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label4" runat="server" Text="Peso:"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtPeso" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label5" runat="server" Text="Raca:"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtRaca" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label6" runat="server" Text="Morador:"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtMorador" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" 
                        onclick="btnCadastrar_Click" />
                </td>
                <td class="style2">
                    <asp:Button ID="btnVoltar" runat="server" Text="Voltar" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
</asp:Content>
