<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarMorador.aspx.cs" Inherits="CondominioSite.ModuloMorador.ConsultarMorador"  MasterPageFile="~/ModuloMorador/Site1.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    
    <body>
        <form id="form1" runat="server">
        <table style="width:22%; margin-right: 21px;">
            <tr>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
                     <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                    <asp:Button ID="btnBuscar" runat="server" Text="Pesquisar" 
                        onclick="btnBuscar_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                        
                        
                        SelectCommand="SELECT Moradores.MorName AS Nome, Bloco.Nome AS Expr1, Unit.UnitNumber, Moradores.MorBirth AS [Data de Nascimento], Moradores.MorTelEmer AS [Telefone de Emergencia], Moradores.MorMobile AS Celular, Moradores.MorTel AS Telefone, Moradores.MorEmail AS Email, Moradores.IDMorador FROM Moradores INNER JOIN Usuario ON Moradores.Login = Usuario.Login INNER JOIN Bloco ON Usuario.IDBloco = Bloco.IDBloco INNER JOIN Unit ON Usuario.IDUnit = Unit.IDUnit AND Usuario.Login = Unit.Login AND Bloco.IDUnit = Unit.IDUnit AND Bloco.IDBloco = Unit.IDBloco WHERE (Moradores.MorName LIKE '%' + @MorName + '%') AND (Usuario.IDCond = @IDCond) AND (Usuario.IDUnit = @IDUnit) AND (Usuario.IDBloco = @IDBloco)">
                        <SelectParameters>
                            <asp:FormParameter FormField="txtNome" Name="MorName" Type="String" />
                            <asp:SessionParameter Name="IDCond" 
                                SessionField="Session[&quot;IDCond&quot;].toString" />
                            <asp:SessionParameter Name="IDUnit" 
                                SessionField="Session[&quot;IDUnit&quot;].toString()" />
                            <asp:SessionParameter Name="IDBloco" 
                                SessionField="Session[&quot;IDBloco&quot;].toString()" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="gdvMoradores" runat="server" 
                        AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
                        onselectedindexchanged="gdvMoradores_SelectedIndexChanged" 
                        DataKeyNames="IDMorador">
                        <Columns>
                            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                            <asp:BoundField DataField="Expr1" HeaderText="Bloco" 
                                SortExpression="Expr1" />
                            <asp:BoundField DataField="UnitNumber" HeaderText="Apartamento" 
                                SortExpression="UnitNumber" />
                            <asp:BoundField DataField="Data de Nascimento" HeaderText="Data de Nascimento" 
                                SortExpression="Data de Nascimento" />
                            <asp:BoundField DataField="Telefone de Emergencia" HeaderText="Telefone de Emergencia" 
                                SortExpression="Telefone de Emergencia" />
                            <asp:BoundField DataField="Celular" HeaderText="Celular" 
                                SortExpression="Celular" />
                            <asp:BoundField DataField="Telefone" 
                                HeaderText="Telefone" SortExpression="Telefone" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="IDMorador" HeaderText="IDMorador" 
                                InsertVisible="False" ReadOnly="True" SortExpression="IDMorador" 
                                Visible="False" />
                            <asp:CommandField ShowSelectButton="True" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Button ID="btnVoltar" runat="server" Text="Voltar" />
                </td>
            </tr>
        </table>
        </form>
    </body>
</html>
</asp:Content>