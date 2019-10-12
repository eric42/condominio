<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarReclamacao.aspx.cs" Inherits="CondominioSite.ModuloMorador.CadastrarReclamacao" %>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            InsertCommand="INSERT INTO Reclamacao(IDCond, Tipo, HoraAcontecimento, Morador, Apartamento, Telefone, Email, DataAcontecimento, Descrico, Bloco) VALUES (@IDCond, @Tipo, @HoraAcontecimento, @Morador, @Apartamento, @Telefone, @Email, @DataAcontecimento, @Descrico, @Bloco)" 
            
            SelectCommand="SELECT Tipo, IDCond, HoraAcontecimento, Morador, Apartamento, Telefone, Email, DataAcontecimento, Descrico, Bloco FROM Reclamacao" 
            UpdateCommand="UPDATE Reclamacao SET DataAcontecimento = @DataAcontecimento, HoraAcontecimento = @HoraAcontecimento, Tipo = @Tipo, Descrico = @Descrico, Morador = @Morador, Telefone = @Telefone, Email = @Email WHERE (IDReclamacao = @IDReclamacao)">
            <UpdateParameters>
                <asp:FormParameter Name="DataAcontecimento"  FormField="txtData"/>
                <asp:FormParameter Name="HoraAcontecimento" FormField="txtHora"/>
                <asp:FormParameter Name="tipo" FormField="txtTipo"/>
                <asp:FormParameter Name="Descrico" FormField="txtDescricao"/>
                <asp:FormParameter Name="morador" FormField="txtMorador"/>
                <asp:FormParameter Name="telefone" FormField="txtTelefone"/>
                <asp:FormParameter Name="email" FormField="txtEmail"/>
                <asp:Parameter Name="IDReclamacao" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="IDCond" />
                <asp:FormParameter Name="Tipo" FormField="txtTipo"/>
                <asp:FormParameter Name="HoraAcontecimento" FormField="txtHora"/>
                <asp:FormParameter Name="Morador" FormField="txtMorador"/>
                <asp:Parameter Name="Apartamento" />
                <asp:FormParameter Name="Telefone" FormField="txtTelefone"/>
                <asp:FormParameter Name="Email" FormField="txtEmail"/>
                <asp:FormParameter Name="DataAcontecimento"  FormField="txtData"/>
                <asp:FormParameter Name="Descrico" FormField="txtDescricao"/>
                <asp:Parameter Name="Bloco" />
            </InsertParameters>
        </asp:SqlDataSource>
        <table style="width:43%;">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Data:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtData" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Hora do Acontecimento:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtHora" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Tipo da Reclamacao:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTipo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Descricao:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDescricao" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Nome:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Telefone:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTelefone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Email:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
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

