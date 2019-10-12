<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarReuniao.aspx.cs" Inherits="CondominioSite.ModuloMorador.ConsultarReuniao"  MasterPageFile="~/ModuloMorador/Site1.Master"%>

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
                        Text="Pesquisar" style="height: 26px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                        
                        SelectCommand="SELECT Reuniao.Data, Reuniao.Hora, Reuniao.Local, Reuniao.Assunto FROM Reuniao INNER JOIN Sindico ON Reuniao.IDSindico = Sindico.IDSindico WHERE (Reuniao.Data = @Data) AND (Sindico.IDCond = @IDCond)">
                        <SelectParameters>
                            <asp:FormParameter DbType="Date" FormField="txtPesquisar" Name="Data" />
                            <asp:SessionParameter Name="IDCond" 
                                SessionField="Session[&quot;IDCond&quot;].toString()" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="gdvReuniao" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Data" HeaderText="Data" SortExpression="Data" />
                            <asp:BoundField DataField="Hora" HeaderText="Hora" SortExpression="Hora" />
                            <asp:BoundField DataField="Local" HeaderText="Local" SortExpression="Local" />
                            <asp:BoundField DataField="Assunto" HeaderText="Assunto" 
                                SortExpression="Assunto" />
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
