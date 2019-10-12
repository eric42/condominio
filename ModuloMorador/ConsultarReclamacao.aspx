<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarReclamacao.aspx.cs" Inherits="CondominioSite.ModuloMorador.ConsultarReclamacao"  MasterPageFile="~/ModuloMorador/Site1.Master"%>

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
                    <asp:Label ID="Label1" runat="server" Text="Tipo"></asp:Label>
                    <asp:TextBox ID="txtPesquisar" runat="server"></asp:TextBox>
                    <asp:Button ID="btnPesquisar" runat="server" onclick="btnPesquisar_Click" 
                        Text="Pesquisar" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                        
                        
                        SelectCommand="SELECT [Tipo], [DataAcontecimento], [HoraAcontecimento], [Bloco], [Apartamento], [Morador], [IDReclamacao] FROM [Reclamacao] WHERE (([Tipo] = @Tipo) AND ([IDCond] = @IDCond))">
                        <SelectParameters>
                            <asp:FormParameter FormField="txtPesquisar" Name="Tipo" Type="String" />
                            <asp:SessionParameter Name="IDCond" 
                                SessionField="Session[&quot;IDCond&quot;].toString()" Type="Decimal" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="gdvReclamacao" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" DataKeyNames="IDReclamacao" 
                        onselectedindexchanged="gdvReclamacao_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
                            <asp:BoundField DataField="DataAcontecimento" 
                                HeaderText="Data do Acontecimento" SortExpression="DataAcontecimento" />
                            <asp:BoundField DataField="HoraAcontecimento" 
                                HeaderText="Hora do Acontecimento" SortExpression="HoraAcontecimento" />
                            <asp:BoundField DataField="Morador" HeaderText="Morador" 
                                SortExpression="Morador" />
                            <asp:BoundField DataField="Bloco" HeaderText="Bloco" SortExpression="Bloco" />
                            <asp:BoundField DataField="Apartamento" HeaderText="Apartamento" 
                                SortExpression="Apartamento" />
                            <asp:BoundField DataField="IDReclamacao" HeaderText="IDReclamacao" 
                                ReadOnly="True" SortExpression="IDReclamacao" Visible="False" />
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
