<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarVisitantes.aspx.cs" Inherits="CondominioSite.ModuloMorador.ConsultarVisitantes"  MasterPageFile="~/ModuloMorador/Site1.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
                    <asp:TextBox ID="txtPesquisar" runat="server"></asp:TextBox>
                    <asp:Button ID="btnPesquisar" runat="server" onclick="btnPesquisar_Click" 
                        Text="Pesquisar" />
                    <asp:GridView ID="gdvVisitantes" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" DataKeyNames="IDVisitante" 
                        onselectedindexchanged="gdvVisitantes_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="Visitante" HeaderText="Visitante" 
                                SortExpression="Visitante" />
                            <asp:BoundField DataField="Celular" HeaderText="Celular" 
                                SortExpression="Celular" />
                            <asp:BoundField DataField="Morador" HeaderText="Morador" 
                                SortExpression="Morador" />
                            <asp:BoundField DataField="Bloco" HeaderText="Bloco" SortExpression="Bloco" />
                            <asp:BoundField DataField="Apartamento" HeaderText="Apartamento" 
                                SortExpression="Apartamento" />
                            <asp:BoundField DataField="IDVisitante" HeaderText="IDVisitante" 
                                InsertVisible="False" ReadOnly="True" SortExpression="IDVisitante" 
                                Visible="False" />
                            <asp:CommandField ShowSelectButton="True" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                        
                        
                        SelectCommand="SELECT Visitantes.VisitNome AS Visitante, Visitantes.VisitMobile AS Celular, Moradores.MorName AS Morador, Bloco.Nome AS Bloco, Unit.UnitNumber AS Apartamento, Visitantes.IDVisitante FROM Visitantes INNER JOIN Bloco ON Visitantes.IDBloco = Bloco.IDBloco INNER JOIN Moradores ON Visitantes.Login = Moradores.Login INNER JOIN Unit ON Visitantes.IDUnit = Unit.IDUnit AND Bloco.IDUnit = Unit.IDUnit AND Bloco.IDBloco = Unit.IDBloco AND Moradores.Login = Unit.Login WHERE (Visitantes.VisitNome = @VisitNome) AND (Bloco.IDCond = @IDCond)">
                        <SelectParameters>
                            <asp:FormParameter FormField="txtPesquisar" Name="VisitNome" Type="String" />
                            <asp:SessionParameter Name="IDCond" 
                                SessionField="Session[&quot;IDCond&quot;].toString()" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnVoltar" runat="server" style="height: 26px" Text="Voltar" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
</asp:Content>
