<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarReceitas.aspx.cs" Inherits="CondominioSite.ModuloMorador.ConsultarReceitas"  MasterPageFile="~/ModuloMorador/Site1.Master"%>

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
                    <asp:Label ID="Label1" runat="server" Text="Flag:"></asp:Label>
                    <asp:TextBox ID="txtPesquisar" runat="server"></asp:TextBox>
                    <asp:Button ID="btnPesquisar" runat="server" Text="Pesquisar" 
                        onclick="btnPesquisar_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                        
                        SelectCommand="SELECT [ReceitaFoto], [ReceitaTItulo], [ReceitaDificudade], [ReceitaTempo], [ReceitaFonte], [IDReceita] FROM [Receitas] WHERE ([ReceitaFlag] = @ReceitaFlag)">
                        <SelectParameters>
                            <asp:FormParameter FormField="txtPesquisar" Name="ReceitaFlag" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="gdvReceita" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" DataKeyNames="IDReceita" 
                        onselectedindexchanged="gdvReceita_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="ReceitaFoto" HeaderText="Foto" 
                                SortExpression="ReceitaFoto" />
                            <asp:BoundField DataField="ReceitaTItulo" HeaderText="Titulo" 
                                SortExpression="ReceitaTItulo" />
                            <asp:BoundField DataField="ReceitaDificudade" HeaderText="Dificudade" 
                                SortExpression="ReceitaDificudade" />
                            <asp:BoundField DataField="ReceitaTempo" HeaderText="Tempo" 
                                SortExpression="ReceitaTempo" />
                            <asp:BoundField DataField="ReceitaFonte" HeaderText="Fonte" 
                                SortExpression="ReceitaFonte" />
                            <asp:BoundField DataField="IDReceita" HeaderText="IDReceita" 
                                InsertVisible="False" ReadOnly="True" SortExpression="IDReceita" 
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
