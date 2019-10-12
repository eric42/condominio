<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarAssembleiaOn.aspx.cs" Inherits="CondominioSite.ModuloSindico.CadastrarAssembliaOff"  MasterPageFile="~/ModuloSindico/Site2.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div style="width: 1025px">
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            InsertCommand="INSERT INTO AssembleiaOnline(IDIdea, Assunto, Descricao, PalavraSindico, Votacao, PeriodoVotacao, ResultadoProjeto, IDCond) VALUES (@IDIdea, @Assunto, @Descricao, @PalavraSindico, @Votacao, @PeriodoVotacao, @ResultadoProjeto, @IDCond)" 
            
            
            SelectCommand="SELECT IDIdea, Assunto, Descricao, PalavraSindico, Votacao, PeriodoVotacao, ResultadoProjeto, IDCond FROM AssembleiaOnline" 
            
            UpdateCommand="UPDATE AssembleiaOnline SET IDIdea = @IDIdea, Assunto = @Assunto, Descricao = @Descricao, PalavraSindico = @PalavraSindico, Votacao = @Votacao, PeriodoVotacao = @PeriodoVotacao, ResultadoProjeto = @ResultadoProjeto WHERE (IDAssembleiaOn = @IDAssembleiaOn)">
            <UpdateParameters>
                <asp:FormParameter Name="IDIdea" FormField="ddlIdeia"/>
                <asp:FormParameter Name="assunto" FormField="txtAssunto"/>
                <asp:FormParameter Name="descricao" FormField="txtDescricao"/>
                <asp:FormParameter Name="PalavraSindico" FormField="txtSindico"/>
                <asp:FormParameter Name="votacao" FormField="txtVotacao"/>
                <asp:FormParameter Name="PeriodoVotacao" FormField="txtPeriodoVotacao"/>
                <asp:FormParameter Name="ResultadoProjeto" FormField="txtResultado"/>
                <asp:Parameter Name="IDAssembleiaOn" />
            </UpdateParameters>
            <InsertParameters>
                <asp:FormParameter Name="IDIdea" FormField="ddlIdeia"/>
                <asp:FormParameter Name="Assunto" FormField="txtAssunto"/>
                <asp:FormParameter Name="Descricao" FormField="txtDescricao"/>
                <asp:FormParameter Name="PalavraSindico" FormField="txtSindico"/>
                <asp:FormParameter Name="Votacao" FormField="txtVotacao"/>
                <asp:FormParameter Name="PeriodoVotacao" FormField="txtPeriodoVotacao"/>
                <asp:FormParameter Name="ResultadoProjeto" FormField="txtResultado"/>
                <asp:Parameter Name="IDCond" />
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
                    <asp:TextBox ID="txtVotacao" runat="server"></asp:TextBox>
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
</asp:Content>
