<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarReceita.aspx.cs" Inherits="CondominioSite.ModuloMorador.CadastrarReceita"  MasterPageFile="~/ModuloMorador/Site1.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            InsertCommand="INSERT INTO Receitas(ReceitaFlag, ReceitaFoto, ReceitaDesc, ReceitaTItulo, ReceitaIngrediente, ReceitaModoPrep, ReceitoRendimento, ReceitaTempo, ReceitaDificudade, ReceitaFonte, ReceitaData, Login) VALUES (@ReceitaFlag, @ReceitaFoto, @ReceitaDesc, @ReceitaTItulo, @ReceitaIngrediente, @ReceitaModoPrep, @ReceitoRendimento, @ReceitaTempo, @ReceitaDificudade, @ReceitaFonte, @ReceitaData, @Login)" 
            
            SelectCommand="SELECT ReceitaFlag, ReceitaFoto, ReceitaDesc, ReceitaTItulo, ReceitaIngrediente, ReceitaModoPrep, ReceitoRendimento, ReceitaDificudade, ReceitaTempo, ReceitaFonte, ReceitaData FROM Receitas" 
            
            UpdateCommand="UPDATE Receitas SET ReceitaTItulo = @ReceitaTItulo, ReceitaFoto = @ReceitaFoto, ReceitaDesc = @ReceitaDesc, ReceitaIngrediente = @ReceitaIngrediente, ReceitaModoPrep = @ReceitaModoPrep, ReceitoRendimento = @ReceitoRendimento, ReceitaDificudade = @ReceitaDificudade, ReceitaTempo = @ReceitaTempo, ReceitaFonte = @ReceitaFonte, ReceitaData = @ReceitaData, ReceitaFlag = @ReceitaFlag WHERE (IDReceita = @IDReceita)">
            <UpdateParameters>
                <asp:FormParameter Name="ReceitaTItulo" FormField="txtTitulo"/>
                <asp:FormParameter Name="ReceitaFoto" FormField="txtFoto"/>
                <asp:FormParameter Name="ReceitaDesc" FormField="txtDescricao"/>
                <asp:FormParameter Name="ReceitaIngrediente" FormField="txtIngredientes"/>
                <asp:FormParameter Name="ReceitaModoPrep" FormField="txtModoPrep"/>
                <asp:FormParameter Name="ReceitoRendimento" FormField="txtRendimento"/>
                <asp:FormParameter Name="ReceitaDificudade" FormField="txtDificuldade"/>
                <asp:FormParameter Name="ReceitaTempo" FormField="txtTempoPrep"/>
                <asp:FormParameter Name="ReceitaFonte" FormField="txtFonte"/>
                <asp:FormParameter Name="ReceitaData" FormField="txtData"/>
                <asp:FormParameter Name="ReceitaFlag" FormField="txtFlag" />
                <asp:Parameter Name="IDReceita" />
            </UpdateParameters>
            <InsertParameters>
                <asp:FormParameter Name="ReceitaFlag" FormField="txtFlag" />
                <asp:FormParameter Name="ReceitaFoto" FormField="txtFoto"/>
                <asp:FormParameter Name="ReceitaDesc" FormField="txtDescricao"/>
                <asp:FormParameter Name="ReceitaTItulo" FormField="txtTitulo"/>
                <asp:FormParameter Name="ReceitaIngrediente" FormField="txtIngredientes"/>
                <asp:FormParameter Name="ReceitaModoPrep" FormField="txtModoPrep" />
                <asp:FormParameter Name="ReceitoRendimento" FormField="txtRendimento"/>
                <asp:FormParameter Name="ReceitaTempo" FormField="txtTempoPrep"/>
                <asp:FormParameter Name="ReceitaDificudade" FormField="txtDificuldade"/>
                <asp:FormParameter Name="ReceitaFonte" FormField="txtFonte"/>
                <asp:FormParameter Name="ReceitaData" FormField="txtData"/>
                <asp:Parameter Name="Login" />
            </InsertParameters>
        </asp:SqlDataSource>
        <table style="width: 38%;">
            <tr>
                <td class="style1">
                    <asp:Label ID="Label2" runat="server" Text="Titulo:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTitulo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Foto:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFoto" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label3" runat="server" Text="Descricao:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDescricao" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label4" runat="server" Text="Lista de Ingredientes:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtIngredientes" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label5" runat="server" Text="Modo de Preparo:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtModoPrep" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label6" runat="server" Text="Rendimento:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtRendimento" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label7" runat="server" Text="Nivel de Dificuldade:"></asp:Label>
                </td>
                <td>
                   <asp:TextBox ID="txtDificuldade" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label8" runat="server" Text="Tempo de Preparo:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTempoPrep" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label9" runat="server" Text="Fonte:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFonte" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label10" runat="server" Text="Data:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtData" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label11" runat="server" Text="Flags:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFlag" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" 
                        onclick="btnCadastrar_Click" style="height: 26px" />
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
