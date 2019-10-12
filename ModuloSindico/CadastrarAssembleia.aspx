<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarAssembleia.aspx.cs" Inherits="CondominioSite.ModuloSindico.CadastrarAssembleia" MasterPageFile="~/ModuloSindico/Site2.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            InsertCommand="INSERT INTO Assembleia(AssembleiaData, AssembleiaLocal, AssembleiaAta, Login) VALUES (@AssembleiaData, @AssembleiaLocal, @AssembleiaAta, @Login)" 
            
            
            
            SelectCommand="SELECT AssembleiaData, AssembleiaLocal, AssembleiaAta, Login FROM Assembleia" 
            UpdateCommand="UPDATE Assembleia SET AssembleiaData = @AssembleiaData, AssembleiaLocal = @AssembleiaLocal, AssembleiaAta = @AssembleiaAta WHERE (IDAssembleia = @IDAssembleia)">
            <UpdateParameters>
                <asp:FormParameter Name="AssembleiaData" FormField="txtData"/>
                <asp:FormParameter Name="AssembleiaLocal" FormField="txtLocal"/>
                <asp:FormParameter Name="AssembleiaAta" FormField="txtAta"/>
                <asp:Parameter Name="IDAssembleia" />
            </UpdateParameters>
            <InsertParameters>
                <asp:FormParameter Name="AssembleiaData" FormField="txtData"/>
                <asp:FormParameter Name="AssembleiaLocal" FormField="txtLocal"/>
                <asp:FormParameter Name="AssembleiaAta" FormField="txtAta"/>
                <asp:Parameter Name="Login" />
            </InsertParameters>
        </asp:SqlDataSource>
        <table style="width: 49%;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Data/Hora:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtData" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Local:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLocal" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Ata:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAta" runat="server" Height="162px" TextMode="MultiLine" 
                        Width="192px"></asp:TextBox>
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
