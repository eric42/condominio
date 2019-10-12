<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarReservas.aspx.cs" Inherits="CondominioSite.ModuloMorador.ConsultarReservas"  MasterPageFile="~/ModuloMorador/Site1.Master"%>

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
                    <asp:Label ID="Label1" runat="server" Text="Pesquisar por Reserva"></asp:Label>
                    <asp:TextBox ID="txtReserva" runat="server"></asp:TextBox>
                    <asp:Button ID="btnPesquisar" runat="server" Text="Pesquisar" 
                        onclick="btnPesquisar_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                        
                        
                        
                        SelectCommand="SELECT [DonoFesta], [NomeFesta], [DataReserva], [HoraIni], [HoraFim], [IDReservas] FROM [Reservas] WHERE (([DonoFesta] LIKE '%' + @DonoFesta + '%') AND ([IDCond] = @IDCond))">
                        <SelectParameters>
                            <asp:FormParameter FormField="txtReserva" Name="DonoFesta" Type="String" />
                            <asp:SessionParameter Name="IDCond" 
                                SessionField="Session[&quot;IDCond&quot;].toString()" Type="Decimal" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="gdvReservas" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" DataKeyNames="IDReservas" 
                        onselectedindexchanged="gdvReservas_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="DonoFesta" HeaderText="Dono da Festa" 
                                SortExpression="DonoFesta" />
                            <asp:BoundField DataField="NomeFesta" HeaderText="Nome da Festa" 
                                SortExpression="NomeFesta" />
                            <asp:BoundField DataField="DataReserva" HeaderText="Data da Reserva" 
                                SortExpression="DataReserva" />
                            <asp:BoundField DataField="HoraIni" HeaderText="Inicio" 
                                SortExpression="HoraIni" />
                            <asp:BoundField DataField="HoraFim" HeaderText="Fim" 
                                SortExpression="HoraFim" />
                            <asp:BoundField DataField="IDReservas" HeaderText="IDReservas" 
                                InsertVisible="False" ReadOnly="True" SortExpression="IDReservas" 
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
