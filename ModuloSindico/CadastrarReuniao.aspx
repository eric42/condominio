<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarReuniao.aspx.cs" Inherits="CondominioSite.ModuloSindico.CadastarReuniao" MasterPageFile="~/ModuloSindico/Site2.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            InsertCommand="INSERT INTO Reuniao(Data, Local, Hora, Assunto, IDCond) VALUES (@Data, @Local, @Hora, @Assunto, @IDCond)" 
            SelectCommand="SELECT Data, Local, Hora, Assunto, IDCond FROM Reuniao" 
            UpdateCommand="UPDATE Reuniao SET Local = @Local, Data = @Data, Hora = @Hora, Assunto = @Assunto WHERE (IDReuniao = @IDReuniao)">
            <UpdateParameters>
                <asp:FormParameter Name="local" FormField="txtLocal"/>
                <asp:FormParameter Name="data" FormField="txtData"/>
                <asp:FormParameter Name="hora" FormField="txtHora"/>
                <asp:FormParameter Name="assunto" FormField="txtAssunto"/>
                <asp:Parameter Name="IDReuniao" />
            </UpdateParameters>
            <InsertParameters>
                <asp:FormParameter Name="Data" FormField="txtData"/>
                <asp:FormParameter Name="Local" FormField="txtLocal" />
                <asp:FormParameter Name="Hora" FormField="txtHora"/>
                <asp:FormParameter Name="Assunto" FormField="txtAssunto"/>
                <asp:Parameter Name="IDCond" />
            </InsertParameters>
        </asp:SqlDataSource>
        <table style="width: 35%;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Local:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLocal" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Data:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtData" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Hora:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtHora" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Assunto:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAssunto" runat="server" TextMode="MultiLine"></asp:TextBox>
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
