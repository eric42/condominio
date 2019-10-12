<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarProjeto.aspx.cs" Inherits="CondominioSite.ModuloSindico.CadastrarProjeto" MasterPageFile="~/ModuloSindico/Site2.Master" %>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
   
    <body>
        <form id="form1" runat="server">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                InsertCommand="INSERT INTO Projetos(IDCond, IDEmpresa, ProjNome, ProjDataIni, ProjDataPrev, ProjCusto, ProjDetalhe, ProjSindico, ProjResponsavel, ProjTipo, Login) VALUES (@IDCond, @IDEmpresa, @ProjNome, @ProjDataIni, @ProjDataPrev, @ProjCusto, @ProjDetalhe, @ProjSindico, @ProjResponsavel, @ProjTipo, @Login)" 
                
            
            
            SelectCommand="SELECT IDCond, IDEmpresa, ProjNome, ProjDataIni, ProjDataPrev, ProjCusto, ProjDetalhe, ProjSindico, ProjResponsavel, ProjTipo, Login FROM Projetos" 
            UpdateCommand="UPDATE Projetos SET ProjNome = @ProjNome, IDEmpresa = @IDEmpresa, ProjResponsavel = @ProjResponsavel, ProjTipo = @ProjTipo, ProjCustoEstimado = @ProjCustoEstimado, ProjDataIni = @ProjDataIni, ProjDataPrev = @ProjDataPrev, ProjDetalhe = @ProjDetalhe WHERE (IDProjetos = @IDProjetos)">
                <UpdateParameters>
                    <asp:FormParameter Name="ProjNome" FormField="txtObra"/>
                    <asp:FormParameter Name="IDEmpresa" FormField="ddlEmpresa"/>
                    <asp:FormParameter Name="ProjResponsavel" FormField="txtResponsavel"/>
                    <asp:FormParameter Name="ProjTipo" FormField="txtTipo"/>
                    <asp:FormParameter Name="ProjCustoEstimado" FormField="txtOrcamento"/>
                    <asp:FormParameter Name="ProjDataIni" FormField="txtDtInicio"/>
                    <asp:FormParameter Name="ProjDataPrev" FormField="txtPrevicao"/>
                    <asp:FormParameter Name="ProjDetalhe" FormField="txtDetalhes"/>
                    <asp:Parameter Name="IDProjetos" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="IDCond"/>
                    <asp:FormParameter Name="IDEmpresa" FormField="ddlEmpresa"/>
                    <asp:FormParameter Name="ProjNome" FormField="txtObra"/>
                    <asp:FormParameter Name="ProjDataIni" FormField="txtDtInicio"/>
                    <asp:FormParameter Name="ProjDataPrev" FormField="txtPrevicao"/>
                    <asp:FormParameter Name="ProjCusto" FormField="txtOrcamento"/>
                    <asp:FormParameter Name="ProjDetalhe" FormField="txtDetalhes"/>
                    <asp:Parameter Name="ProjSindico" />
                    <asp:FormParameter Name="ProjResponsavel" FormField="txtResponsavel"/>
                    <asp:FormParameter Name="ProjTipo" FormField="txtTipo"/>
                    <asp:Parameter Name="Login" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                
            SelectCommand="SELECT [IDEmpresa], [EmpNome] FROM [Empresa] WHERE ([IDCond] = @IDCond)">
                <SelectParameters>
                    <asp:SessionParameter Name="IDCond" 
                        SessionField="Session[&quot;IDCond&quot;].toString" Type="Decimal" />
                </SelectParameters>
            </asp:SqlDataSource>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Projeto/Obra:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtObra" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Empresa:"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlEmpresa" runat="server" 
                            DataSourceID="SqlDataSource2" DataTextField="EmpNome" 
                            DataValueField="IDEmpresa">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;<asp:Label ID="Label3" runat="server" Text="Responsavel:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtResponsavel" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;<asp:Label ID="Label4" runat="server" Text="Tipo:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTipo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;<asp:Label ID="Label5" runat="server" Text="Custo Estimado:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtOrcamento" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Data de Inicio:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDtInicio" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Previcao:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPrevicao" runat="server" Height="22px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Detalhes:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDetalhes" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" 
                            onclick="btnCadastrar_Click" />
                    </td>
                    <td><a href="">
                        <asp:Button ID="btnVoltar" runat="server" Text="Voltar" />
                        </a></td>
                </tr>
            </table>
        </form>
    </body>
</html>
</asp:Content>