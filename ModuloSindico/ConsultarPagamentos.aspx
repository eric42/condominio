<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarPagamentos.aspx.cs" Inherits="CondominioSite.ModuloSindico.ConsultarPagamentos"  MasterPageFile="~/ModuloSindico/Site2.Master"%>

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
                    <asp:Label ID="Label1" runat="server" Text="Data:"></asp:Label>
                    <asp:TextBox ID="txtPesquisar" runat="server"></asp:TextBox>
                    <asp:Button ID="btnPesquisar" runat="server" onclick="btnPesquisar_Click" 
                        Text="Pesquisar" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                        
                        
                        SelectCommand="SELECT Pagamentos.PagDataEntrada, Pagamentos.PagVencimento, Pagamentos.PagValor, Pagamentos.PagSituacao, Pagamentos.IDPagamento, Empresa.EmpNome FROM Pagamentos INNER JOIN Empresa ON Pagamentos.IDEmpresa = Empresa.IDEmpresa WHERE (Pagamentos.PagDataEntrada = @PagDataEntrada) AND (Pagamentos.IDCond = @IDCond)">
                        <SelectParameters>
                            <asp:FormParameter DbType="Date" FormField="txtPesquisar" 
                                Name="PagDataEntrada" />
                            <asp:SessionParameter Name="IDCond" 
                                SessionField="Session[&quot;IDCond&quot;].toString()" Type="Decimal" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="gdvPagamento" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" DataKeyNames="IDPagamento" ">
                        <Columns>
                            <asp:BoundField DataField="PagDataEntrada" HeaderText="Data de Entrada" 
                                SortExpression="PagDataEntrada" />
                            <asp:BoundField DataField="PagVencimento" HeaderText="Vencimento" 
                                SortExpression="PagVencimento" />
                            <asp:BoundField DataField="EmpNome" HeaderText="Empresa" 
                                SortExpression="EmpNome" />
                            <asp:BoundField DataField="PagValor" HeaderText="Valor" 
                                SortExpression="PagValor" />
                            <asp:BoundField DataField="PagSituacao" HeaderText="Situacao" 
                                SortExpression="PagSituacao" />
                            <asp:BoundField DataField="IDPagamento" HeaderText="IDPagamento" 
                                InsertVisible="False" ReadOnly="True" SortExpression="IDPagamento" 
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
