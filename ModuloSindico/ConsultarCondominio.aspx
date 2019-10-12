<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarCondominio.aspx.cs" Inherits="CondominioSite.ModuloSindico.ConsultarCondominio"  MasterPageFile="~/ModuloSindico/Site2.Master"%>

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
                    <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
                    <asp:TextBox ID="txtPesquisar" runat="server"></asp:TextBox>
                    <asp:Button ID="btnPesquisar" runat="server" onclick="btnPesquisar_Click" 
                        Text="Pesquisar" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                        
                        SelectCommand="SELECT [CondNome], [CondEnd], [CondNumero], [CondBairro], [CondCep], [IDCond] FROM [Condominio] WHERE ([CondNome] = @CondNome)">
                        <SelectParameters>
                            <asp:FormParameter FormField="txtPesquisar" Name="CondNome" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="gdvCondominio" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" DataKeyNames="IDCond" 
                        onselectedindexchanged="gdvCondominio_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="CondNome" HeaderText="Condominio" 
                                SortExpression="CondNome" />
                            <asp:BoundField DataField="CondEnd" HeaderText="Endereco" 
                                SortExpression="CondEnd" />
                            <asp:BoundField DataField="CondNumero" HeaderText="Numero" 
                                SortExpression="CondNumero" />
                            <asp:BoundField DataField="CondBairro" HeaderText="Bairro" 
                                SortExpression="CondBairro" />
                            <asp:BoundField DataField="CondCep" HeaderText="CEP" SortExpression="CondCep" />
                            <asp:BoundField DataField="IDCond" HeaderText="IDCond" InsertVisible="False" 
                                ReadOnly="True" SortExpression="IDCond" Visible="False" />
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
