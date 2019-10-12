<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarReservas.aspx.cs" Inherits="CondominioSite.ModuloMorador.CadastrarReservas" MasterPageFile="~/ModuloMorador/Site1.Master" %>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head>
        <title>Cadastro de Reservas</title>
    </head>
    
    <body>
        <form id="form1" runat="server">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                InsertCommand="INSERT INTO Reservas(IDEstrutura, IDLista, IDUnit, Login, DonoFesta, DataReserva, HoraIni, HoraFim, NomeFesta, IDCond, IDBloco) VALUES (@IDEstrutura, @IDLista, @IDUnit, @Login, @DonoFesta, @DataReserva, @HoraIni, @HoraFim, @NomeFesta, @IDCond, @IDBloco)" 
                
            SelectCommand="SELECT IDLista, IDEstrutura, IDUnit, Login, DonoFesta, DataReserva, HoraIni, HoraFim, NomeFesta, IDBloco FROM Reservas WHERE (IDCond = @IDCond) AND (IDReservas = @id)" 
            UpdateCommand="UPDATE Reservas SET NomeFesta = @NomeFesta, IDEstrutura = @IDEstrutura, DataReserva = @DataReserva, HoraIni = @HoraIni, HoraFim = @HoraFim WHERE (IDReservas = @IDReservas)">
                <SelectParameters>
                    <asp:FormParameter FormField="ddlCondominio" Name="IDCond" Type="Decimal" />
                    <asp:QueryStringParameter Name="id" QueryStringField="id" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:FormParameter Name="NomeFesta" FormField="txtNome"/>
                    <asp:FormParameter Name="IDEstrutura" FormField="ddlArea"/>
                    <asp:FormParameter Name="DataReserva" FormField="txtDiaReserva"/>
                    <asp:FormParameter Name="HoraIni" FormField="txtInicio"/>
                    <asp:FormParameter Name="HoraFim" FormField="txtFim"/>
                    <asp:Parameter Name="IDReservas" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:FormParameter Name="IDEstrutura" FormField="ddlArea"/>
                    <asp:Parameter Name="IDLista" />
                    <asp:Parameter Name="IDUnit" />
                    <asp:Parameter Name="Login" />
                    <asp:Parameter Name="DonoFesta" />
                    <asp:FormParameter Name="DataReserva" FormField="txtDiaReserva"/>
                    <asp:FormParameter Name="HoraIni" FormField="txtInicio"/>
                    <asp:FormParameter Name="HoraFim" FormField="txtFim"/>
                    <asp:FormParameter Name="NomeFesta" FormField="txtNome"/>
                    <asp:Parameter Name="IDCond" />
                    <asp:Parameter Name="IDBloco" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                SelectCommand="SELECT [IDEstrutura], [EstNome] FROM [EstruturaCond] WHERE ([IDCond] = @IDCond)">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="" Name="IDCond" 
                        SessionField="session[&quot;IDCond&quot;]" Type="Decimal" />
                </SelectParameters>
            </asp:SqlDataSource>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Nome do Evento:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Area da Reserva:"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlArea" runat="server" DataSourceID="SqlDataSource5" 
                            DataTextField="EstNome" DataValueField="IDEstrutura" Height="16px" Width="87px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Dia da Reserva:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDiaReserva" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Inicio:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtInicio" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Fim:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFim" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Convidados:</td>
                    <td>
                        <asp:LinkButton ID="LinkButton1" runat="server">Convidados</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" 
                            onclick="btnCadastrar_Click" />
                    </td>
                    <td><a href="IndexMorador.aspx">
                        <asp:Button ID="btnVoltar" runat="server" Text="Voltar" />
                        </a></td>
                </tr>
            </table>
        </form>
    </body>
</html>
</asp:Content>