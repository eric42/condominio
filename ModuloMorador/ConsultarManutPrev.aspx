<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarManutPrev.aspx.cs" Inherits="CondominioSite.ModuloMorador.ConsultarManutPrev"  MasterPageFile="~/ModuloMorador/Site1.Master"%>

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
                    <asp:Label ID="Label1" runat="server" Text="Area:"></asp:Label>
                    <asp:TextBox ID="txtPesquisar" runat="server"></asp:TextBox>
                    <asp:Button ID="btnPesquisar" runat="server" onclick="btnPesquisar_Click" 
                        Text="Pesquisar" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                        
                        
                        SelectCommand="SELECT HistoricoMantencaoPrev.ManutPrevData, HistoricoMantencaoPrev.ManutPrevItemVerif, HistoricoMantencaoPrev.ManutPrevFormaVerif, HistoricoMantencaoPrev.ManutPrevProx, HistoricoMantencaoPrev.IDManutPrev, EstruturaCond.EstNome FROM HistoricoMantencaoPrev INNER JOIN EstruturaCond ON HistoricoMantencaoPrev.IDEstrutura = EstruturaCond.IDEstrutura WHERE (HistoricoMantencaoPrev.IDCond = @IDCond) AND (EstruturaCond.EstNome = @Nome)">
                        <SelectParameters>
                            <asp:SessionParameter Name="IDCond" 
                                SessionField="Session[&quot;IDCond&quot;].toString()" Type="Decimal" />
                            <asp:FormParameter FormField="txtPesquisar" Name="Nome" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="gdvManut" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" DataKeyNames="IDManutPrev" 
                        onselectedindexchanged="gdvManut_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="ManutPrevData" HeaderText="Data" 
                                SortExpression="ManutPrevData" />
                            <asp:BoundField DataField="ManutPrevItemVerif" HeaderText="Item Verificado" 
                                SortExpression="ManutPrevItemVerif" />
                            <asp:BoundField DataField="ManutPrevFormaVerif" HeaderText="Forma para Verificar" 
                                SortExpression="ManutPrevFormaVerif" />
                            <asp:BoundField DataField="ManutPrevProx" 
                                HeaderText="Proxima Etapa" SortExpression="ManutPrevProx" />
                            <asp:BoundField DataField="EstNome" HeaderText="Area" 
                                SortExpression="EstNome" />
                            <asp:BoundField DataField="IDManutPrev" HeaderText="IDManutPrev" 
                                SortExpression="IDManutPrev" InsertVisible="False" ReadOnly="True" 
                                Visible="False" />
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
