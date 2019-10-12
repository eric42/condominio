<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarEmpregados.aspx.cs" Inherits="CondominioSite.ModuloMorador.ConsultarEmpregados"  MasterPageFile="~/ModuloMorador/Site1.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div style="width: 1269px">
    
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
                        
                        SelectCommand="SELECT EmpregadoApartamento.EmpregadoNome AS Nome, EmpregadoApartamento.EmpregadoMorador AS Patrao, EmpregadoApartamento.EmpregadoPeriodo AS [Periodo de Trabalho], EmpregadoApartamento.EmpregadoDiasSemana AS [Dias de Trabalho], Bloco.Nome AS Bloco, Unit.UnitNumber AS Apartamento, EmpregadoApartamento.IDCond FROM EmpregadoApartamento INNER JOIN Bloco ON EmpregadoApartamento.IDBloco = Bloco.IDBloco INNER JOIN Unit ON EmpregadoApartamento.IDUnit = Unit.IDUnit AND Bloco.IDUnit = Unit.IDUnit AND Bloco.IDBloco = Unit.IDBloco WHERE (EmpregadoApartamento.EmpregadoNome = @EmpregadoNome) AND (EmpregadoApartamento.IDCond = @IDCond)">
                        <SelectParameters>
                            <asp:FormParameter FormField="txtPesquisar" Name="EmpregadoNome" 
                                Type="String" />
                            <asp:SessionParameter Name="IDCond" 
                                SessionField="Session[&quot;IDCond&quot;].toString()" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="gdvEmpregados" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                            <asp:BoundField DataField="Patrao" HeaderText="Patrao" 
                                SortExpression="Patrao" />
                            <asp:BoundField DataField="Periodo de Trabalho" 
                                HeaderText="Periodo de Trabalho" SortExpression="Periodo de Trabalho" />
                            <asp:BoundField DataField="Dias de Trabalho" HeaderText="Dias de Trabalho" 
                                SortExpression="Dias de Trabalho" />
                            <asp:BoundField DataField="Bloco" 
                                HeaderText="Bloco" SortExpression="Bloco" />
                            <asp:BoundField DataField="Apartamento" HeaderText="Apartamento" 
                                SortExpression="Apartamento" />
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
