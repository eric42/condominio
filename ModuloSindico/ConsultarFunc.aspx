<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarFunc.aspx.cs" Inherits="CondominioSite.ModuloSindico.ConsultarFunc"  MasterPageFile="~/ModuloSindico/Site2.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form2" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Funcionario:"></asp:Label>
                    <asp:TextBox ID="txtPesquisar" runat="server"></asp:TextBox>
                    <asp:Button ID="btnPesquisar" runat="server" Text="Pesquisar" 
                        onclick="btnPesquisar_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                        
                        
                        
                        SelectCommand="SELECT CondFuncNome AS Funcionario, CondFuncSituacao, Funcao, Servico, IDCondFunc FROM Funcionarios WHERE (CondFuncNome LIKE '%' + @CondFuncNome + '%') AND (IDCond = @IDCond)">
                        <SelectParameters>
                            <asp:FormParameter FormField="txtPesquisa" Name="CondFuncNome" />
                            <asp:SessionParameter Name="IDCond" 
                                SessionField="Session[&quot;IDCond&quot;].toString()" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="gdvFuncionarios" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" DataKeyNames="IDCondFunc" >
                        <Columns>
                            <asp:BoundField DataField="Funcionario" HeaderText="Funcionario" 
                                SortExpression="Funcionario" />
                            <asp:BoundField DataField="CondFuncSituacao" HeaderText="CondFuncSituacao" 
                                SortExpression="CondFuncSituacao" />
                            <asp:BoundField DataField="Funcao" HeaderText="Funcao" 
                                SortExpression="Funcao" />
                            <asp:BoundField DataField="Servico" HeaderText="Servico" 
                                SortExpression="Servico" />
                            <asp:BoundField DataField="IDCondFunc" HeaderText="IDCondFunc" 
                                SortExpression="IDCondFunc" InsertVisible="False" ReadOnly="True" 
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
