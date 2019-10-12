<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarClassificado.aspx.cs" Inherits="CondominioSite.ModuloMorador.ConsultarClassificado"  MasterPageFile="~/ModuloMorador/Site1.Master"%>

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
                    <asp:Label ID="Label1" runat="server" Text="Flags:"></asp:Label>
                    <asp:TextBox ID="txtPesquisa" runat="server"></asp:TextBox>
                    <asp:Button ID="btnPesquisar" runat="server" onclick="Button1_Click" 
                        style="margin-right: 0px" Text="Pesquisar" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                        
                        SelectCommand="SELECT [ClassiFoto], [ClassiTitulo], [ClassiData], [ClassiValor], [IDClassi] FROM [Classificado] WHERE ([ClassiFlag] = @ClassiFlag)">
                        <SelectParameters>
                            <asp:FormParameter FormField="txtPesquisar" Name="ClassiFlag" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="gdvClassificado" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged" 
                        DataKeyNames="IDClassi">
                        <Columns>
                            <asp:BoundField DataField="ClassiFoto" HeaderText="Foto" 
                                SortExpression="ClassiFoto" />
                            <asp:BoundField DataField="ClassiTitulo" HeaderText="Titulo" 
                                SortExpression="ClassiTitulo" />
                            <asp:BoundField DataField="ClassiData" HeaderText="Data" 
                                SortExpression="ClassiData" />
                            <asp:BoundField DataField="ClassiValor" HeaderText="Valor" 
                                SortExpression="ClassiValor" />
                            <asp:BoundField DataField="IDClassi" HeaderText="IDClassi" 
                                InsertVisible="False" ReadOnly="True" SortExpression="IDClassi" 
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
