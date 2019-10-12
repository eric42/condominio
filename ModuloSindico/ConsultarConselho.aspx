<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarConselho.aspx.cs" Inherits="CondominioSite.ModuloSindico.ConsultarConselho"  MasterPageFile="~/ModuloSindico/Site2.Master"%>

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
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                        
                        
                        SelectCommand="SELECT Conselho.ConsNome, Bloco.Nome, Unit.UnitNumber, Conselho.ConsGestao, Conselho.ConsTelefone, Conselho.ConsEmail FROM Conselho INNER JOIN Bloco ON Conselho.IDBloco = Bloco.IDBloco INNER JOIN Unit ON Conselho.IDUnit = Unit.IDUnit AND Bloco.IDUnit = Unit.IDUnit AND Bloco.IDBloco = Unit.IDBloco WHERE (Conselho.ConsNome = @ConsNome) AND (Conselho.IDCond = @IDCond)">
                        <SelectParameters>
                            <asp:FormParameter FormField="txtPesquisar" Name="ConsNome" Type="String" />
                            <asp:SessionParameter Name="IDCond" 
                                SessionField="Session[&quot;IDCond&quot;].toString()" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="gdvConselho" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="ConsNome" HeaderText="Nome" 
                                SortExpression="ConsNome" />
                            <asp:BoundField DataField="Nome" HeaderText="Bloco" SortExpression="Nome" />
                            <asp:BoundField DataField="UnitNumber" HeaderText="Apartamento" 
                                SortExpression="UnitNumber" />
                            <asp:BoundField DataField="ConsTelefone" HeaderText="Telefone" 
                                SortExpression="ConsTelefone" />
                            <asp:BoundField DataField="ConsEmail" HeaderText="Email" 
                                SortExpression="ConsEmail" />
                            <asp:BoundField DataField="ConsGestao" HeaderText="Gestao" 
                                SortExpression="ConsGestao" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
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
