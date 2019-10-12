<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarReformas.aspx.cs" Inherits="CondominioSite.ModuloSindico.ConsultarReformas"  MasterPageFile="~/ModuloSindico/Site2.Master"%>

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
                    <asp:Button ID="btnPesquisar" runat="server" onclick="Button1_Click" 
                        Text="Pesquisar" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                        SelectCommand="SELECT Usuario.Nome, Bloco.Nome AS Bloco, Unit.UnitNumber, Reforma.DataIni, Reforma.DataFim, Reforma.IDReforma FROM Reforma INNER JOIN Bloco ON Reforma.IDBloco = Bloco.IDBloco INNER JOIN Unit ON Bloco.IDUnit = Unit.IDUnit AND Bloco.IDBloco = Unit.IDBloco INNER JOIN Usuario ON Bloco.IDBloco = Usuario.IDBloco AND Unit.Login = Usuario.Login AND Unit.IDUnit = Usuario.IDUnit">
                    </asp:SqlDataSource>
                    <asp:GridView ID="gdvReforma" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="IDReforma" DataSourceID="SqlDataSource1" style="width: 476px">
                        <Columns>
                            <asp:BoundField DataField="Nome" HeaderText="Morador" SortExpression="Nome" />
                            <asp:BoundField DataField="Bloco" HeaderText="Bloco" SortExpression="Bloco" />
                            <asp:BoundField DataField="UnitNumber" HeaderText="Apartamento" 
                                SortExpression="UnitNumber" />
                            <asp:BoundField DataField="DataIni" HeaderText="Data de Inicio" 
                                SortExpression="DataIni" />
                            <asp:BoundField DataField="DataFim" HeaderText="Data Prevista" 
                                SortExpression="DataFim" />
                            <asp:BoundField DataField="IDReforma" HeaderText="IDReforma" 
                                InsertVisible="False" ReadOnly="True" SortExpression="IDReforma" 
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
