<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarClassificado.aspx.cs" Inherits="ModuloMorador.CadastrarClassificado"  %>

<%@ Register Src="~/_sessao.ascx" TagName="sessao" TagPrefix="controles" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
        InsertCommand="INSERT INTO Classificado(ClassiFlag, ClassiTitulo, ClassiDesc, ClassiValor, ClassiValidade, ClassiData, ClassiFoto, ClassiNegociado, Login, IDCond) VALUES (@ClassiFlag, @ClassiTitulo, @ClassiDesc, @ClassiValor, @ClassiValidade, @ClassiData, @ClassiFoto, @ClassiNegociado, @Login, @IDCond)" 
        
        SelectCommand="SELECT ClassiFlag, ClassiTitulo, ClassiDesc, ClassiValor, ClassiValidade, ClassiFoto, ClassiData, ClassiNegociado FROM Classificado" 
        UpdateCommand="UPDATE Classificado SET ClassiTitulo = @ClassiTitulo, ClassiDesc = @ClassiDesc, ClassiValor = @ClassiValor, ClassiData = @ClassiData, ClassiValidade = @ClassiValidade, ClassiFoto = @ClassiFoto, ClassiNegociado = @ClassiNegociado, ClassiFlag = @ClassiFlag WHERE (IDClassi = @IDClassi)">
        <UpdateParameters>
            <asp:FormParameter Name="ClassiTitulo" FormField="txtTitulo"/>
            <asp:FormParameter Name="ClassiDesc" FormField="txtDescricao"/>
            <asp:FormParameter Name="ClassiValor" FormField="txtValor"/>
            <asp:FormParameter Name="ClassiData" FormField="txtDataOferta"/>
            <asp:FormParameter Name="ClassiValidade" FormField="txtValidade"/>
            <asp:FormParameter Name="ClassiFoto" FormField="txtFoto"/>
            <asp:FormParameter Name="ClassiNegociado" FormField="rblNegocio" />
            <asp:FormParameter Name="ClassiFlag" FormField="txtFlag"/>
            <asp:Parameter Name="IDClassi" />
        </UpdateParameters>
        <InsertParameters>
            <asp:FormParameter Name="ClassiFlag" FormField="txtFlag"/>
            <asp:FormParameter Name="ClassiTitulo" FormField="txtTitulo"/>
            <asp:FormParameter Name="ClassiDesc" FormField="txtDescricao"/>
            <asp:FormParameter Name="ClassiValor" FormField="txtValor"/>
            <asp:FormParameter Name="ClassiValidade" FormField="txtValidade"/>
            <asp:FormParameter Name="ClassiData" FormField="txtDataOferta"/>
            <asp:FormParameter Name="ClassiFoto" FormField="txtFoto"/>
            <asp:FormParameter Name="ClassiNegociado" FormField="rblNegocio"/>
            <asp:Parameter Name="Login" />
            <asp:Parameter Name="IDCond" />
        </InsertParameters>
    </asp:SqlDataSource>
    <table style="width:37%;">
        <tr>
            <td class="style1">
                <asp:Label ID="Label1" runat="server" Text="Titulo:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtTitulo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label2" runat="server" Text="Descricao:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDescricao" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label3" runat="server" Text="Valor:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtValor" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label5" runat="server" Text="Data da Oferta:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDataOferta" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label4" runat="server" Text="Validade da Oferta:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtValidade" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label6" runat="server" Text="Foto:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFoto" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label8" runat="server" Text="Pode Negociar?"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="rblNegocio" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="1">Sim</asp:ListItem>
                    <asp:ListItem Value="0">Nao</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label9" runat="server" Text="Flags:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFlag" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" 
                    onclick="btnCadastrar_Click" style="height: 26px" />
            </td>
            <td>
                <asp:Button ID="btnVoltar" runat="server" Text="Voltar" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

