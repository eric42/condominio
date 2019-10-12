<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarManutCor.aspx.cs" Inherits="CondominioSite.ModuloMorador.ConsultarManutCor"  MasterPageFile="~/ModuloMorador/Site1.Master"%>

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
                <td class="style1">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                        
                        
                        SelectCommand="SELECT HistoricoManutencaoCorretiva.ManutDescSimples, HistoricoManutencaoCorretiva.ManutDataInicio, HistoricoManutencaoCorretiva.ManutDataFim, HistoricoManutencaoCorretiva.IDRelManut, EstruturaCond.EstNome FROM HistoricoManutencaoCorretiva INNER JOIN EstruturaCond ON HistoricoManutencaoCorretiva.IDEstrutura = EstruturaCond.IDEstrutura WHERE (HistoricoManutencaoCorretiva.IDCond = @IDCond) AND (EstruturaCond.EstNome = @nome)">
                        <SelectParameters>
                            <asp:SessionParameter Name="IDCond" 
                                SessionField="Session[&quot;IDCond&quot;].toString()" Type="Decimal" />
                            <asp:FormParameter FormField="txtPesquisar" Name="nome" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="gdvManut" runat="server" AutoGenerateColumns="False" 
                         DataKeyNames="IDRelManut" DataSourceID="SqlDataSource1" >
                        <Columns>
                            <asp:BoundField DataField="ManutDescSimples" HeaderText="Descricao Simples" 
                                SortExpression="ManutDescSimples" />
                            <asp:BoundField DataField="ManutDataInicio" HeaderText="Data de Inicio" 
                                SortExpression="ManutDataInicio" />
                            <asp:BoundField DataField="ManutDataFim" HeaderText="Fim" 
                                SortExpression="ManutDataFim" />
                            <asp:BoundField DataField="EstNome" HeaderText="Area" 
                                SortExpression="EstNome" />
                            <asp:BoundField DataField="IDRelManut" HeaderText="IDRelManut" 
                                InsertVisible="False" ReadOnly="True" SortExpression="IDRelManut" 
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
