<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarAreas.aspx.cs" Inherits="CondominioSite.ModuloSindico.CadastrarAreas"  MasterPageFile="~/ModuloSindico/Site2.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            InsertCommand="INSERT INTO Area(Nome, Horario, Reserva, Descricao, Utensilios, Capacidade, IDCond) VALUES (@Nome, @Horario, @Reserva, @Descricao, @Utensilios, @Capacidade, @IDCond)" 
            
            SelectCommand="SELECT Nome, Horario, Reserva, Descricao, Utensilios, Capacidade, IDCond FROM Area" 
            
            
            UpdateCommand="UPDATE Area SET Nome = @Nome, Descricao = @Descricao, Capacidade = @Capacidade, Horario = @Horario, Reserva = @Reserva, Utensilios = @Utensilios WHERE (IDArea = @IDArea)">
            <UpdateParameters>
                <asp:FormParameter Name="nome" FormField="txtNome"/>
                <asp:FormParameter Name="descricao" FormField="txtDescricao"/>
                <asp:FormParameter Name="capacidade" FormField="txtCapacidade"/>
                <asp:FormParameter Name="horario" FormField="txtHorario"/>
                <asp:FormParameter Name="reserva" FormField="rbltReserva"/>
                <asp:FormParameter Name="utensilios" FormField="txtUtensilios"/>
                <asp:Parameter Name="IDArea" />
            </UpdateParameters>
            <InsertParameters>
                <asp:FormParameter Name="Nome" FormField="txtNome"/>
                <asp:FormParameter Name="Horario" FormField="txtHorario"/>
                <asp:FormParameter Name="Reserva" FormField="rbltReserva"/>
                <asp:FormParameter Name="Descricao" FormField="txtDescricao"/>
                <asp:FormParameter Name="Utensilios" FormField="txtUtensilios"/>
                <asp:FormParameter Name="Capacidade" FormField="txtCapacidade"/>
                <asp:Parameter Name="IDCond" />
            </InsertParameters>
        </asp:SqlDataSource>
        <table style="width: 56%; height: 299px;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Descricao:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDescricao" runat="server" Height="72px" 
                        TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Capacidade:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCapacidade" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Horario de Funcionamento:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtHorario" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Necessidade de Reserva:"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="rblReserva" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem>Sim</asp:ListItem>
                        <asp:ListItem>Nao</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Utensilios:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtUtensilios" runat="server" Height="82px" 
                        TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" 
                        onclick="btnCadastrar_Click" />
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
