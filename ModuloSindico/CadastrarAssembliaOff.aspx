<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarAssembliaOff.aspx.cs" Inherits="CondominioSite.ModuloSindico.CadastrarAssembliaOff" %>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <controles:sessao ID="sessao" runat="server" />
    <div style="width: 1025px">
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            InsertCommand="INSERT INTO AssembleiaOnline(IDIdea, Projeto, Assunto, Descricao, PalavraSindico, Votacao, PeriodoVotacao, ResultadoProjeto) VALUES (@Param1, @Param2, @Param3, @Param4, @Param5, @Param6, @Param7, @Param8)" 
            SelectCommand="SELECT IDIdea, Projeto, Assunto, Descricao, PalavraSindico, Votacao, PeriodoVotacao, ResultadoProjeto FROM AssembleiaOnline">
            <InsertParameters>
                <asp:FormParameter Name="Param1" FormField="ddlIdeia"/>
                <asp:FormParameter Name="Param2" FormField="txtProjeto"/>
                <asp:FormParameter Name="Param3" FormField="txtAssunto"/>
                <asp:FormParameter Name="Param4" FormField="txtDescricao"/>
                <asp:FormParameter Name="Param5" FormField="txtSindico"/>
                <asp:FormParameter Name="Param6" FormField="txtVotacao"/>
                <asp:FormParameter Name="Param7" FormField="txtPeriodoVotacao"/>
                <asp:FormParameter Name="Param8" FormField="txtResultado"/>
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            SelectCommand="SELECT [IDIdea], [IdeaNome] FROM [Ideas]">
        </asp:SqlDataSource>
    
        <table style="width:36%; height: 330px;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Ideia:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlIdeia" runat="server" DataSourceID="SqlDataSource2" 
                        DataTextField="IdeaNome" DataValueField="IDIdea">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Projeto:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtProjeto" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Assunto:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAssunto" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Descricao:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDescricao" runat="server" Height="56px" 
                        TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Palavra do Sindico:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtSindico" runat="server" Height="56px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Votacao:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtVotacao" runat="server" 
                        ontextchanged="TextBox6_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Perido para Votar:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPeriodoVotacao" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Resultado de Votacoes:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtResultado" runat="server" Height="53px" 
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
