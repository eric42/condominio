<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarAreas.aspx.cs" Inherits="CondominioSite.ModuloMorador.ConsultarAreas"  MasterPageFile="~/ModuloMorador/Site1.Master"%>

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
                    <asp:Label ID="Label1" runat="server" Text="Nome"></asp:Label>
                    <asp:TextBox ID="txtPesquisar" runat="server"></asp:TextBox>
                    <asp:Button ID="btnPesquisar" runat="server" onclick="btnPesquisar_Click" 
                        Text="Pesquisar" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                        
                        
                        SelectCommand="SELECT [Nome], [Horario], [Capacidade], [Reserva], [IDArea] FROM [Area] WHERE (([Nome] = @Nome) AND ([IDCond] = @IDCond))">
                        <SelectParameters>
                            <asp:FormParameter FormField="txtPesquisar" Name="Nome" Type="String" />
                            <asp:SessionParameter Name="IDCond" 
                                SessionField="Session[&quot;IDCond&quot;].toString()" Type="Decimal" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="gdvArea" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" DataKeyNames="IDArea" 
                        onselectedindexchanged="gdvArea_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="Nome" HeaderText="Nome da Area" 
                                SortExpression="Nome" />
                            <asp:BoundField DataField="Horario" HeaderText="Horario de Funcionamento" 
                                SortExpression="Horario" />
                            <asp:BoundField DataField="Capacidade" HeaderText="Capacidade Maxima" 
                                SortExpression="Capacidade" />
                            <asp:CheckBoxField DataField="Reserva" HeaderText="Necessita de Reserva" 
                                SortExpression="Reserva" />
                            <asp:BoundField DataField="IDArea" HeaderText="IDArea" InsertVisible="False" 
                                ReadOnly="True" SortExpression="IDArea" Visible="False" />
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
