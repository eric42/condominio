<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarApartamentos.aspx.cs" Inherits="CondominioSite.ModuloMorador.ConsultarApartamentos"  MasterPageFile="~/ModuloMorador/Site1.Master"%>

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
                    <asp:Label ID="Label1" runat="server" Text="Numero:"></asp:Label>
                    <asp:TextBox ID="txtPesquisar" runat="server"></asp:TextBox>
                    <asp:Button ID="btnPesquisar" runat="server" onclick="btnPesquisar_Click" 
                        Text="Pesquisar" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                        
                        
                        SelectCommand="SELECT Unit.IDUnit, Unit.UnitNumber, Unit.UnitVaga, Bloco.Nome FROM Unit INNER JOIN Bloco ON Unit.IDBloco = Bloco.IDBloco AND Unit.IDUnit = Bloco.IDUnit WHERE (Unit.IDCond = @IDCond) AND (Unit.UnitNumber = @Number)">
                        <SelectParameters>
                            <asp:SessionParameter Name="IDCond" 
                                SessionField="Session[&quot;IDCond&quot;].toString()" Type="Decimal" />
                            <asp:FormParameter FormField="txtPesquisar" Name="Number" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="gdvApartamento" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" DataKeyNames="IDUnit" 
                        onselectedindexchanged="gdvApartamento_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="Nome" HeaderText="Bloco" 
                                SortExpression="Nome" />
                            <asp:BoundField DataField="UnitNumber" HeaderText="Numero do Apartamento" 
                                SortExpression="UnitNumber" />
                            <asp:CheckBoxField DataField="UnitVaga" HeaderText="Ocupada" 
                                SortExpression="UnitVaga" />
                            <asp:BoundField DataField="IDUnit" HeaderText="IDUnit" 
                                SortExpression="IDUnit" ReadOnly="True" Visible="False" />
                            <asp:CommandField ShowSelectButton="True" />
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
