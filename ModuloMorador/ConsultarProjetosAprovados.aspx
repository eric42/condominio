<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarProjetosAprovados.aspx.cs" Inherits="CondominioSite.ModuloMorador.ConsultarProjetosAprovados1"  MasterPageFile="~/ModuloMorador/Site1.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form2" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Projeto"></asp:Label>
&nbsp;<asp:TextBox ID="txtPesquisar" runat="server"></asp:TextBox>
                    <asp:Button ID="btnPesquisar" runat="server" Text="Pesquisar" 
                        onclick="btnPesquisar_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                        
                        
                        
                        SelectCommand="SELECT ProjNome, ProjDataIni, ProjDetalhe, ProjStatus, IDProjetos FROM Projetos WHERE (ProjStatus = 'Aprovado') AND (ProjNome = @Nome)">
                        <SelectParameters>
                            <asp:FormParameter FormField="txtPesquisar" Name="Nome" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="gdvProjetosAprovados" runat="server" 
                        AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
                        onselectedindexchanged="gdvProjetosAprovados_SelectedIndexChanged" 
                        DataKeyNames="IDProjetos">
                        <Columns>
                            <asp:BoundField DataField="ProjNome" HeaderText="Projeto" 
                                SortExpression="ProjNome" />
                            <asp:BoundField DataField="ProjDataIni" HeaderText="Inicio" 
                                SortExpression="ProjDataIni" />
                            <asp:BoundField DataField="ProjDetalhe" HeaderText="Detalhe" 
                                SortExpression="ProjDetalhe" />
                            <asp:BoundField DataField="ProjStatus" HeaderText="Status" 
                                SortExpression="ProjStatus" />
                            <asp:BoundField DataField="IDProjetos" HeaderText="IDProjetos" 
                                InsertVisible="False" ReadOnly="True" SortExpression="IDProjetos" 
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
    
    </div>
    </form>
</body>
</html>
</asp:Content>
