<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarContas.aspx.cs" Inherits="CondominioSite.ModuloSindico.CadastrarContas"  MasterPageFile="~/ModuloSindico/Site2.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            InsertCommand="INSERT INTO Contas(CtaDescricao, CtaBoletoNumero, CtaDtBoleto, CtaVencimentoBoleto, CtaValor, IDCond, IDEmpresa, IDNF) VALUES (@CtaDescricao, @CtaBoletoNumero, @CtaDtBoleto, @CtaVencimentoBoleto, @CtaValor, @IDCond, @IDEmpresa, @IDNF)" 
            
            
            SelectCommand="SELECT CtaDescricao, CtaBoletoNumero, CtaDtBoleto, CtaVencimentoBoleto, CtaValor, IDCond, IDEmpresa, IDNF FROM Contas" 
            
            UpdateCommand="UPDATE Contas SET IDEmpresa = @IDEmpresa, CtaDescricao = @CtaDescricao, IDNF = @IDNF, CtaBoletoNumero = @CtaBoletoNumero, CtaDtBoleto = @CtaDtBoleto, CtaVencimentoBoleto = @CtaVencimentoBoleto, CtaValor = @CtaValor WHERE (IDContas = @IDContas)">
            <UpdateParameters>
                <asp:FormParameter Name="IDEmpresa" FormField="ddlEmpresa"/>
                <asp:FormParameter Name="CtaDescricao" FormField="txtDescricao"/>
                <asp:FormParameter Name="IDNF" FormField="ddlNf"/>
                <asp:FormParameter Name="CtaBoletoNumero" FormField="txtBoleto"/>
                <asp:FormParameter Name="CtaDtBoleto" FormField="txtRecebimento"/>
                <asp:FormParameter Name="CtaVencimentoBoleto" FormField="txtValidade"/>
                <asp:FormParameter Name="CtaValor" FormField="txtValor"/>
                <asp:Parameter Name="IDContas" />
            </UpdateParameters>
            <InsertParameters>
                <asp:FormParameter Name="CtaDescricao" FormField="txtDescricao"/>
                <asp:FormParameter Name="CtaBoletoNumero" FormField="txtBoleto"/>
                <asp:FormParameter Name="CtaDtBoleto" FormField="txtRecebimento"/>
                <asp:FormParameter Name="CtaVencimentoBoleto" FormField="txtValidade"/>
                <asp:FormParameter Name="CtaValor" FormField="txtValor"/>
                <asp:Parameter Name="IDCond" />
                <asp:FormParameter Name="IDEmpresa" FormField="ddlEmpresa"/>
                <asp:FormParameter Name="IDNF" FormField="ddlNf"/>
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            SelectCommand="SELECT [IDEmpresa], [EmpNome] FROM [Empresa] WHERE ([IDCond] = @IDCond)">
            <SelectParameters>
                <asp:SessionParameter Name="IDCond" 
                    SessionField="Session[&quot;IDCond&quot;].ToString();" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            SelectCommand="SELECT [IDNF], [NfNumero] FROM [NotaFiscal] WHERE ([IDEmpresa] = @IDEmpresa)">
            <SelectParameters>
                <asp:FormParameter FormField="ddlEmpresa" Name="IDEmpresa" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        <table style="width: 34%;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Empresa:"></asp:Label>
                    &nbsp;
                </td>
                <td>
                    <asp:DropDownList ID="ddlEmpresa" runat="server" DataSourceID="SqlDataSource2" 
                        DataTextField="EmpNome" DataValueField="IDEmpresa">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Descricao:"></asp:Label>
                    &nbsp;
                </td>
                <td>
                    <asp:TextBox ID="txtDescricao" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Nota Fiscal:"></asp:Label>
                    &nbsp;
                </td>
                <td>
                    <asp:DropDownList ID="ddlNf" runat="server" DataSourceID="SqlDataSource3" 
                        DataTextField="NfNumero" DataValueField="IDNF">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Boleto Numero:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBoleto" runat="server" style="margin-bottom: 0px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Data de Recebimento:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtRecebimento" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Data de Vencimento:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtVencimento" runat="server" style="margin-bottom: 0px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Valor:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtValor" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" 
                        onclick="btnCadastrar_Click" />
                </td>
                <td>
                    <asp:Button ID="btnVoltar" runat="server" 
                    Text="Voltar" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
</asp:Content>