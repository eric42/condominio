<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarVotacao.aspx.cs" Inherits="CondominioSite.ModuloMorador.ConsultarVotacao"  MasterPageFile="~/ModuloMorador/Site1.Master"%>

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
                    <asp:Label ID="Label1" runat="server" Text="Titulo"></asp:Label>
                    <asp:TextBox ID="txtPesquisar" runat="server"></asp:TextBox>
                    <asp:Button ID="btnPesquisar" runat="server" onclick="btnPesquisar_Click" 
                        Text="Pesquisar" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                        
                        SelectCommand="SELECT [Nome], [DataAssembleia], [Periodo], [Situacao], [Aprovacao] FROM [Votacao] WHERE (([Nome] = @Nome) AND ([IDCond] = @IDCond))">
                        <SelectParameters>
                            <asp:FormParameter FormField="txtPesquisar" Name="Nome" Type="String" />
                            <asp:SessionParameter Name="IDCond" 
                                SessionField="Session[&quot;IDCond&quot;].toString()" Type="Decimal" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="gdvVotacao" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                            <asp:BoundField DataField="DataAssembleia" HeaderText="Data da Assembleia" 
                                SortExpression="DataAssembleia" />
                            <asp:BoundField DataField="Periodo" HeaderText="Periodo de Votacao" 
                                SortExpression="Periodo" />
                            <asp:BoundField DataField="Situacao" HeaderText="Situacao" 
                                SortExpression="Situacao" />
                            <asp:BoundField DataField="Aprovacao" HeaderText="Resultado" 
                                SortExpression="Aprovacao" />
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