<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarAssembleia.aspx.cs" Inherits="CondominioSite.ModuloMorador.Assembleia"  MasterPageFile="~/ModuloMorador/Site1.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
    <table style="width:100%;">
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text="Data:"></asp:Label>
                <asp:TextBox ID="txtPesquisar" runat="server" Height="22px"></asp:TextBox>
                <asp:Button ID="btnPesquisar" runat="server" onclick="btnPesquisar_Click" 
                    Text="Pesquisar" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                    
                    SelectCommand="SELECT Assembleia.AssembleiaData, Assembleia.AssembleiaLocal, Assembleia.AssembleiaAta FROM Assembleia INNER JOIN Moradores ON Assembleia.Login = Moradores.Login WHERE (Assembleia.AssembleiaData = @AssembleiaData) AND (Moradores.IDCond = @IDCond)">
                    <SelectParameters>
                        <asp:FormParameter DbType="Date" FormField="txtData" Name="AssembleiaData" />
                        <asp:SessionParameter DefaultValue="" Name="IDCond" 
                            SessionField="Session[&quot;IDCond&quot;].toString()" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="gdvAssembleia" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="AssembleiaData" HeaderText="Data da Assembleia" 
                            SortExpression="AssembleiaData" />
                        <asp:BoundField DataField="AssembleiaLocal" HeaderText="Local da Assembleia" 
                            SortExpression="AssembleiaLocal" />
                        <asp:BoundField DataField="AssembleiaAta" HeaderText="Ata da Assemblia" 
                            SortExpression="AssembleiaAta" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnVoltar" runat="server" Text="Voltar" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    
    </div>
    </form>
</body>
</html>
</asp:Content>
