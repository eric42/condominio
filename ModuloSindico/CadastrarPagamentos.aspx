<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarPagamentos.aspx.cs" Inherits="CondominioSite.ModuloSindico.CadastrarPagamentos"  MasterPageFile="~/ModuloSindico/Site2.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            InsertCommand="INSERT INTO Pagamentos(IDNotaFiscal, IDEmpresa, PagValor, PagDataEntrada, PagVencimento, PagForma, PagSituacao, Banco, Agencia, Conta, IDCond) VALUES (@IDNotaFiscal, @IDEmpresa, @PagValor, @PagDataEntrada, @PagVencimento, @PagForma, @PagSituacao, @Banco, @Agencia, @Conta, @IDCond)" 
            
            
            
            SelectCommand="SELECT IDNotaFiscal, IDEmpresa, PagValor, PagDataEntrada, PagVencimento, PagForma, PagSituacao, Banco, Agencia, Conta, IDCond FROM Pagamentos" 
            UpdateCommand="UPDATE Pagamentos SET IDEmpresa = @IDEmpresa, IDNotaFiscal = @IDNotaFiscal, PagValor = @PagValor, PagDataEntrada = @PagDataEntrada, PagVencimento = @PagVencimento, PagForma = @PagForma, Banco = @Banco, Agencia = @Agencia, Conta = @Conta, PagSituacao = @PagSituacao WHERE (IDPagamento = @IDPagamento)">
            <UpdateParameters>
                <asp:FormParameter Name="IDEmpresa" FormField="ddlEmpresa"/>
                <asp:FormParameter Name="IDNotaFiscal" FormField="ddlNotaFiscal"/>
                <asp:FormParameter Name="PagValor" FormField="txtValor"/>
                <asp:FormParameter Name="PagDataEntrada" FormField="txtData"/>
                <asp:FormParameter Name="PagVencimento" FormField="txtVencimento"/>
                <asp:FormParameter Name="PagForma" FormField="ddlTipo"/>
                <asp:FormParameter Name="banco" FormField="txtBanco"/>
                <asp:FormParameter Name="agencia" FormField="txtAgencia"/>
                <asp:FormParameter Name="conta" FormField="txtConta"/>
                <asp:FormParameter Name="PagSituacao" FormField="ddlSituacao"/>
                <asp:Parameter Name="IDPagamento" />
            </UpdateParameters>
            <InsertParameters>
                <asp:FormParameter Name="IDNotaFiscal" FormField="ddlNotaFiscal"/>
                <asp:FormParameter Name="IDEmpresa" FormField="ddlEmpresa"/>
                <asp:FormParameter Name="PagValor" FormField="txtValor"/>
                <asp:FormParameter Name="PagDataEntrada" FormField="txtData"/>
                <asp:FormParameter Name="PagVencimento" FormField="txtVencimento"/>
                <asp:FormParameter Name="PagForma" FormField="ddlTipo"/>
                <asp:FormParameter Name="PagSituacao" FormField="ddlSituacao"/>
                <asp:FormParameter Name="Banco" FormField="txtBanco"/>
                <asp:FormParameter Name="Agencia" FormField="txtAgencia"/>
                <asp:FormParameter Name="Conta" FormField="txtConta"/>
                <asp:Parameter Name="IDCond" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            SelectCommand="SELECT [IDEmpresa], [EmpNome] FROM [Empresa]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            SelectCommand="SELECT [IDNF], [NfNumero] FROM [NotaFiscal] WHERE ([IDEmpresa] = @IDEmpresa)">
            <SelectParameters>
                <asp:FormParameter FormField="ddlEmpresa" Name="IDEmpresa" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <table style="width:34%;">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Empresa:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlEmpresa" runat="server" DataSourceID="SqlDataSource2" 
                        DataTextField="NfNumero" DataValueField="IDNF">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Nota Fiscal:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlNotaFiscal" runat="server" 
                        DataSourceID="SqlDataSource3" DataTextField="EmpNome" 
                        DataValueField="IDEmpresa">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Valor:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtValor" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Data:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtData" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Vencimento:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtVencimento" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Tipo de Pagamento:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlTipo" runat="server" >
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Boleto</asp:ListItem>
                        <asp:ListItem>Deposito Bancario</asp:ListItem>
                        <asp:ListItem>A Vista</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Banco:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBanco" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Agencia:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAgencia" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Conta:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtConta" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Situacao:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlSituacao" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Vencido</asp:ListItem>
                        <asp:ListItem>Pago</asp:ListItem>
                        <asp:ListItem>Pendente</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" 
                        onclick="btnCadastrar_Click" Height="26px" />
                </td>
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
