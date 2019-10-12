<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetalheArea.aspx.cs" Inherits="CondominioSite.ModuloMorador.DetalheArea"  MasterPageFile="~/ModuloMorador/Site1.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            SelectCommand="SELECT Nome, Horario, Reserva, Capacidade, Utensilios, Descricao FROM Area WHERE (IDArea = @id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
                </td>
                <td class="style6" colspan="4">
                    <asp:Label ID="lblNome" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label2" runat="server" Text="Horario de Funcionamento:"></asp:Label>
                </td>
                <td class="style3" colspan="4">
                    <asp:Label ID="lblHorario" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label3" runat="server" Text="Capacidade Maxima:"></asp:Label>
                </td>
                <td class="style8">
                    <asp:Label ID="lblCapacidade" runat="server"></asp:Label>
                </td>
                <td class="style9" colspan="2">
                    <asp:Label ID="Label5" runat="server" Text="Necessidade de Reserva:"></asp:Label>
                </td>
                <td class="style6">
                    <asp:RadioButtonList ID="rblReserva" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem Value="1">Sim</asp:ListItem>
                        <asp:ListItem Value="0">Nao</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label8" runat="server" Text="Utencilios Disponiveis:"></asp:Label>
                </td>
                <td class="style6" colspan="4" rowspan="4">
                    <asp:ListBox ID="lsbUtencilios" runat="server" DataSourceID="SqlDataSource1" 
                        DataTextField="Utensilios" DataValueField="Utensilios" Enabled="False" 
                        Width="623px"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label10" runat="server" Text="Descricao:"></asp:Label>
                </td>
                <td class="style6" colspan="4" rowspan="4">
                    <asp:Label ID="lblDescricao" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Button ID="btnEditar" runat="server" Text="Editar" Visible="False" />
                </td>
                <td colspan="2">
                    <asp:Button ID="btnVoltar" runat="server" Text="Voltar" />
                </td>
                <td class="style5" colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
</asp:Content>
