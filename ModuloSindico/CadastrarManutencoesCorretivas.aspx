<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarManutencoesCorretivas.aspx.cs" Inherits="CondominioSite.ModuloSindico.CadastrarManutencoesCorretivas"  MasterPageFile="~/ModuloSindico/Site2.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            InsertCommand="INSERT INTO HistoricoManutencaoCorretiva(ManutDescSimples, ManutDataFim, ManutDataInicio, ManutDescricao, ManutSolucao, ManutMaterialUtiliz, ManuGarantia, Login, IDCond, IDEstrutura) VALUES (@ManutDescSimples, @ManutDataFim, @ManutDataInicio, @ManutDescricao, @ManutSolucao, @ManutMaterialUtiliz, @ManuGarantia, @Login, @IDCond, @IDEstrutura)" 
            
            
            
            SelectCommand="SELECT ManutDescSimples, ManutDataInicio, ManutDataFim, ManutDescricao, ManutMaterialUtiliz, ManutSolucao, ManuGarantia, Login, IDCond, IDEstrutura FROM HistoricoManutencaoCorretiva" 
            UpdateCommand="UPDATE HistoricoManutencaoCorretiva SET ManutDescSimples = @ManutDescSimples, ManutDataInicio = @ManutDataInicio, ManutDataFim = @ManutDataFim, ManuGarantia = @ManuGarantia, ManutDescricao = @ManutDescricao, IDEstrutura = @IDEstrutura, ManutSolucao = @ManutSolucao, ManutMaterialUtiliz = @ManutMaterialUtiliz WHERE (IDRelManut = @IDRelManut)">
            <UpdateParameters>
                <asp:FormParameter Name="ManutDescSimples" FormField="txtDescSimples"/>
                <asp:FormParameter Name="ManutDataInicio" FormField="txtDtIni"/>
                <asp:FormParameter Name="ManutDataFim" FormField="txtDtFim"/>
                <asp:FormParameter Name="ManuGarantia" FormField="txtGarantia"/>
                <asp:FormParameter Name="ManutDescricao" FormField="txtDescricao"/>
                <asp:FormParameter Name="IDEstrutura" FormField="ddlArea"/>
                <asp:FormParameter Name="ManutSolucao" FormField="txtSolucao"/>
                <asp:FormParameter Name="ManutMaterialUtiliz" FormField="txtMatUti"/>
                <asp:Parameter Name="IDRelManut" />
            </UpdateParameters>
            <InsertParameters>
                <asp:FormParameter Name="ManutDescSimples" FormField="txtDescSimples"/>
                <asp:FormParameter Name="ManutDataFim" FormField="txtDtFim"/>
                <asp:FormParameter Name="ManutDataInicio" FormField="txtDtIni"/>
                <asp:FormParameter Name="ManutDescricao" FormField="txtDescricao"/>
                <asp:FormParameter Name="ManutSolucao" FormField="txtSolucao"/>
                <asp:FormParameter Name="ManutMaterialUtiliz" FormField="txtMatUti"/>
                <asp:FormParameter Name="ManuGarantia" FormField="txtGarantia"/>
                <asp:Parameter Name="Login" />
                <asp:Parameter Name="IDCond" />
                <asp:FormParameter Name="IDEstrutura" FormField="ddlArea"/>
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            SelectCommand="SELECT [IDArea], [Nome] FROM [Area] WHERE ([IDCond] = @IDCond)">
            <SelectParameters>
                <asp:SessionParameter Name="IDCond" 
                    SessionField="Sessio[&quot;IDCond&quot;].ToString" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        <table style="width: 37%;">
            <tr>
                <td class="style7">
                    <asp:Label ID="Label1" runat="server" Text="Descricao Simples:"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtDescSimples" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Label ID="Label2" runat="server" Text="Data de Inicio:"></asp:Label>
                </td>
                <td class="style6">
                    <asp:TextBox ID="txtDtIni" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <asp:Label ID="Label3" runat="server" Text="Data de Fim:"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtDtFim" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <asp:Label ID="Label7" runat="server" Text="Garantia:"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtGarantia" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    <asp:Label ID="Label4" runat="server" Text="Descricao:"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtDescricao" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    <asp:Label ID="Label8" runat="server" Text="Area:"></asp:Label>
                </td>
                <td class="style4">
                    <asp:DropDownList ID="ddlArea" runat="server" DataSourceID="SqlDataSource2" 
                        DataTextField="Nome" DataValueField="IDArea">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <asp:Label ID="Label5" runat="server" Text="Solucao:"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtSolucao" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <asp:Label ID="Label6" runat="server" Text="Materiais Utilizados:"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtMatUti" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" 
                        onclick="btnCadastrar_Click" />
                </td>
                <td class="style2">
                    <asp:Button ID="btnVoltar" runat="server" Text="Voltar" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
</asp:Content>
