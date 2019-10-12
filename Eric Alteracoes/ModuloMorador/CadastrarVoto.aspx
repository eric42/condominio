<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarVoto.aspx.cs" Inherits="CondominioSite.ModuloMorador.CadastrarVoto"  MasterPageFile="~/ModuloMorador/Site1.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            InsertCommand="INSERT INTO Voto(IDVotacao, Login, IDCond, IDBloco, IDUnit, Voto) VALUES (@IDVotacao, @Login, @IDCond, @IDBloco, @IDUnit, @Voto)" 
            
            
            SelectCommand="SELECT IDBloco, IDUnit, IDVotacao, Login, IDCond, Voto FROM Voto">
            <InsertParameters>
                <asp:Parameter Name="IDVotacao" />
                <asp:Parameter Name="Login" />
                <asp:Parameter Name="IDCond" />
                <asp:Parameter Name="IDBloco" />
                <asp:Parameter Name="IDUnit" />
                <asp:FormParameter Name="Voto" FormField="rblVoto"/>
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            
            
            SelectCommand="SELECT Usuario.Nome, Bloco.Nome AS bloco, Unit.UnitNumber, Votacao.Nome AS Expr1, Projetos.ProjNome, Projetos.ProjDetalhe, Votacao.Periodo, COUNT(Voto.Voto) AS Voto FROM Voto INNER JOIN Usuario ON Voto.Login = Usuario.Login INNER JOIN Bloco ON Usuario.IDBloco = Bloco.IDBloco INNER JOIN Unit ON Usuario.IDUnit = Unit.IDUnit AND Usuario.Login = Unit.Login AND Bloco.IDUnit = Unit.IDUnit AND Bloco.IDBloco = Unit.IDBloco INNER JOIN Projetos ON Usuario.Login = Projetos.Login INNER JOIN Votacao ON Usuario.Login = Votacao.Login AND Projetos.IDProjetos = Votacao.IDProjetos GROUP BY Votacao.Nome, Usuario.Nome, Bloco.Nome, Unit.UnitNumber, Projetos.ProjNome, Projetos.ProjDetalhe, Votacao.Periodo HAVING (COUNT(Voto.Voto) = 1)">
        </asp:SqlDataSource>
    
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            SelectCommand="SELECT Usuario.Nome, Bloco.Nome AS bloco, Unit.UnitNumber, Votacao.Nome AS Expr1, Projetos.ProjNome, Projetos.ProjDetalhe, Votacao.Periodo, COUNT(Voto.Voto) AS Voto FROM Voto INNER JOIN Usuario ON Voto.Login = Usuario.Login INNER JOIN Bloco ON Usuario.IDBloco = Bloco.IDBloco INNER JOIN Unit ON Usuario.IDUnit = Unit.IDUnit AND Usuario.Login = Unit.Login AND Bloco.IDUnit = Unit.IDUnit AND Bloco.IDBloco = Unit.IDBloco INNER JOIN Projetos ON Usuario.Login = Projetos.Login INNER JOIN Votacao ON Usuario.Login = Votacao.Login AND Projetos.IDProjetos = Votacao.IDProjetos GROUP BY Votacao.Nome, Usuario.Nome, Bloco.Nome, Unit.UnitNumber, Projetos.ProjNome, Projetos.ProjDetalhe, Votacao.Periodo HAVING (COUNT(Voto.Voto) = 0)">
        </asp:SqlDataSource>
    
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            SelectCommand="SELECT Usuario.Login, Usuario.Nome, Bloco.IDBloco, Bloco.Nome AS Bloco, Unit.IDUnit, Unit.UnitNumber, Votacao.IDVotacao, Votacao.Nome AS Votacao, Projetos.IDProjetos, Projetos.ProjNome, Projetos.ProjDetalhe, Votacao.Periodo FROM Votacao INNER JOIN Usuario ON Votacao.Login = Usuario.Login INNER JOIN Projetos ON Votacao.IDProjetos = Projetos.IDProjetos INNER JOIN Unit ON Usuario.IDUnit = Unit.IDUnit AND Usuario.Login = Unit.Login INNER JOIN Bloco ON Usuario.IDBloco = Bloco.IDBloco AND Unit.IDBloco = Bloco.IDBloco AND Unit.IDUnit = Bloco.IDUnit INNER JOIN Voto ON Votacao.IDVotacao = Voto.IDVotacao WHERE (Voto.Voto = 1) OR (Voto.Voto = 0)"></asp:SqlDataSource>
    
        <table style="width: 40%;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Morador:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblMorador" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Bloco:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblBloco" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Apartamento:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblApartamento" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Nome da Votacao:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblVotacao" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Projeto:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblProjeto" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Descricao:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblDescricao" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Data de Encerramento:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblEncerramento" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Voto:"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="rblVoto" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">Sim</asp:ListItem>
                        <asp:ListItem>Nao</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="Label9" runat="server" Text="Sim: " Visible="False"></asp:Label>
                    <asp:Label ID="lblPerc1" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="Label11" runat="server" Text="Nao: " Visible="False"></asp:Label>
                    <asp:Label ID="lblPerc0" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnCadastrar" runat="server" onclick="Button1_Click" 
                        Text="Cadastrar" />
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
