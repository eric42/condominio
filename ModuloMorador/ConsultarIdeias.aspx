<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarProjetosAprovados.aspx.cs" Inherits="CondominioSite.ModuloMorador.ConsultarProjetosAprovados"  MasterPageFile="~/ModuloMorador/Site1.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Projeto"></asp:Label>
&nbsp;<asp:TextBox ID="txtPesquisa" runat="server"></asp:TextBox>
                    <asp:Button ID="btnPesquisar" runat="server" Text="Pesquisar" 
                        onclick="btnPesquisar_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                        
                        
                        SelectCommand="SELECT Ideas.IdeaNome, Ideas.IdeaData, Ideas.IdeaDescricao FROM Ideas INNER JOIN Moradores ON Ideas.Login = Moradores.Login WHERE (Ideas.IdeaNome LIKE '%' + @IdeaNome + '%') AND (Moradores.IDCond = @IDCond)">
                        <SelectParameters>
                            <asp:FormParameter FormField="txtPesquisa" Name="IdeaNome" Type="String" />
                            <asp:SessionParameter Name="IDCond" 
                                SessionField="Session[&quot;IDCond&quot;].toString()" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="gdvProjetosAprovados" runat="server" 
                         AutoGenerateColumns="False" DataSourceID="SqlDataSource1" >
                        <Columns>
                            <asp:BoundField DataField="IdeaNome" HeaderText="Nome" 
                                SortExpression="IdeaNome" />
                            <asp:BoundField DataField="IdeaData" HeaderText="Data" 
                                SortExpression="IdeaData" />
                            <asp:BoundField DataField="IdeaDescricao" HeaderText="Descricao" 
                                SortExpression="IdeaDescricao" />
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
    
    </div>
    </form>
</body>
</html>
</asp:Content>
