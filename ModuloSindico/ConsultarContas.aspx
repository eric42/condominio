<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarContas.aspx.cs" Inherits="CondominioSite.ModuloSindico.ConsultarContas"  MasterPageFile="~/ModuloSindico/Site2.Master"%>

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
                    <asp:Label ID="Label1" runat="server" Text="Data de Criacao:"></asp:Label>
                    <asp:TextBox ID="txtPesquisar" runat="server"></asp:TextBox>
                    <asp:Button ID="btnPesquisar" runat="server" onclick="btnPesquisar_Click" 
                        Text="Pesquisar" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                        
                        
                        SelectCommand="SELECT EmpresaNome, NumeroNf, CtaBoletoNumero, CtaDtBoleto, CtaVencimentoBoleto, CtaValor, IDContas FROM Contas WHERE (CtaDtBoleto = @CtaDtBoleto) AND (IDCond = @IDCond)">
                        <SelectParameters>
                            <asp:FormParameter DbType="Date" FormField="txtPesquisar" Name="CtaDtBoleto" />
                            <asp:SessionParameter Name="IDCond" 
                                SessionField="Session[&quot;IDCond&quot;].toString()" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="gdvContas" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" DataKeyNames="IDContas" >
                        <Columns>
                            <asp:BoundField DataField="EmpresaNome" HeaderText="Empresa" 
                                SortExpression="EmpresaNome" />
                            <asp:BoundField DataField="NumeroNf" HeaderText="Nota Fiscal" 
                                SortExpression="NumeroNf" />
                            <asp:BoundField DataField="CtaBoletoNumero" HeaderText="Boleto" 
                                SortExpression="CtaBoletoNumero" />
                            <asp:BoundField DataField="CtaDtBoleto" HeaderText="Data de Criacao" 
                                SortExpression="CtaDtBoleto" />
                            <asp:BoundField DataField="CtaVencimentoBoleto" 
                                HeaderText="Vencimento" SortExpression="CtaVencimentoBoleto" />
                            <asp:BoundField DataField="CtaValor" HeaderText="Valor" 
                                SortExpression="CtaValor" />
                            <asp:BoundField DataField="IDContas" HeaderText="IDContas" 
                                InsertVisible="False" ReadOnly="True" SortExpression="IDContas" 
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
