<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarProjetos.aspx.cs" Inherits="CondominioSite.ModuloSindico.ConsultarProjetos"  MasterPageFile="~/ModuloSindico/Site2.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
   
    <body>
        <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Obra:"></asp:Label>
                    <asp:TextBox ID="txtPesquisa" runat="server"></asp:TextBox>
                    <asp:Button ID="btnPequisar" runat="server" Text="Pesquisar" 
                        onclick="btnPequisar_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                        
                        
                        SelectCommand="SELECT [ProjNome], [ProjDataIni], [ProjDataPrev], [ProjTipo], [IDProjetos] FROM [Projetos] WHERE (([ProjNome] LIKE '%' + @ProjNome + '%') AND ([IDCond] = @IDCond))">
                        <SelectParameters>
                            <asp:FormParameter FormField="txtPesquisa" Name="ProjNome" Type="String" />
                            <asp:SessionParameter Name="IDCond" 
                                SessionField="Session[&quot;IDCond&quot;].toString()" Type="Decimal" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="gdvProjetos" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" DataKeyNames="IDProjetos" >
                        <Columns>
                            <asp:BoundField DataField="ProjDataIni" HeaderText="Data de Inicio" 
                                SortExpression="ProjDataIni" />
                            <asp:BoundField DataField="ProjDataPrev" HeaderText="Data Prevista" 
                                SortExpression="ProjDataPrev" />
                            <asp:BoundField DataField="ProjTipo" HeaderText="Tipo do Projeto" 
                                SortExpression="ProjTipo" />
                            <asp:BoundField DataField="IDProjetos" HeaderText="IDProjetos" 
                                SortExpression="IDProjetos" InsertVisible="False" ReadOnly="True" 
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
        </form>
    </body>
</html>
</asp:Content>
