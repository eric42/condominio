<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarManutencoesPreventivas.aspx.cs" Inherits="CondominioSite.ModuloSindico.CadastrarManutencoes" MasterPageFile="~/ModuloSindico/Site2.Master" %>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            InsertCommand="INSERT INTO HistoricoMantencaoPrev(ManutPrevDesc, ManutPrevData, ManutPrevPeriodo, ManutPrevItemVerif, ManutPrevFormaVerif, ManutPrevEstado, ManutPrevTroca, ManutPrevDtAgendaTroca, ManutPrevRelatorio, MantPrevMaterialUtiliz, ManutPrevProx, IDCond, Login, IDEstrutura) VALUES (@ManutPrevDesc, @ManutPrevData, @ManutPrevPeriodo, @ManutPrevItemVerif, @ManutPrevFormaVerif, @ManutPrevEstado, @ManutPrevTroca, @ManutPrevDtAgendaTroca, @ManutPrevRelatorio, @MantPrevMaterialUtiliz, @ManutPrevProx, @IDCond, @Login, @IDEstrutura)" 
            
            
            
            SelectCommand="SELECT ManutPrevDesc, ManutPrevData, ManutPrevItemVerif, ManutPrevPeriodo, ManutPrevFormaVerif, ManutPrevEstado, ManutPrevTroca, ManutPrevDtAgendaTroca, ManutPrevRelatorio, MantPrevMaterialUtiliz, ManutPrevProx, IDCond, Login, IDEstrutura FROM HistoricoMantencaoPrev" 
            UpdateCommand="UPDATE HistoricoMantencaoPrev SET ManutPrevDesc = @ManutPrevDesc, ManutPrevData = @ManutPrevData, ManutPrevPeriodo = @ManutPrevPeriodo, ManutPrevFormaVerif = @ManutPrevFormaVerif, ManutPrevEstado = @ManutPrevEstado, ManutPrevDtAgendaTroca = @ManutPrevDtAgendaTroca, ManutPrevTroca = @ManutPrevTroca, ManutPrevProx = @ManutPrevProx, ManutPrevRelatorio = @ManutPrevRelatorio, MantPrevMaterialUtiliz = @MantPrevMaterialUtiliz, IDEstrutura = @IDEstrutura, ManutPrevItemVerif = @ManutPrevItemVerif WHERE (IDManutPrev = @IDManutPrev)">
            <UpdateParameters>
                <asp:FormParameter Name="ManutPrevDesc" FormField="txtDescricao"/>
                <asp:FormParameter Name="ManutPrevData" FormField="txtDataFinal"/>
                <asp:FormParameter Name="ManutPrevPeriodo" FormField="txtPeriodo"/>
                <asp:FormParameter Name="ManutPrevFormaVerif" FormField="txtForma"/>
                <asp:FormParameter Name="ManutPrevEstado" FormField="txtEstado"/>
                <asp:FormParameter Name="ManutPrevDtAgendaTroca" FormField="txtDiaTroca"/>
                <asp:FormParameter Name="ManutPrevTroca" FormField="txtTroca"/>
                <asp:FormParameter Name="ManutPrevProx" FormField="txtProximo"/>
                <asp:FormParameter Name="ManutPrevRelatorio" FormField="txtRelatorio"/>
                <asp:FormParameter Name="MantPrevMaterialUtiliz" FormField="txtMaterial"/>
                <asp:FormParameter Name="IDEstrutura" FormField="ddlArea" />
                <asp:FormParameter Name="ManutPrevItemVerif" FormField="txtItem"/>
                <asp:Parameter Name="IDManutPrev" />
            </UpdateParameters>
            <InsertParameters>
                <asp:FormParameter Name="ManutPrevDesc" FormField="txtDescricao"/>
                <asp:FormParameter Name="ManutPrevData" FormField="txtDataFinal"/>
                <asp:FormParameter Name="ManutPrevPeriodo" FormField="txtPeriodo"/>
                <asp:FormParameter Name="ManutPrevItemVerif" FormField="txtItem"/>
                <asp:FormParameter Name="ManutPrevFormaVerif" FormField="txtForma"/>
                <asp:FormParameter Name="ManutPrevEstado" FormField="txtEstado"/>
                <asp:FormParameter Name="ManutPrevTroca" FormField="txtTroca"/>
                <asp:FormParameter Name="ManutPrevDtAgendaTroca" FormField="txtDiaTroca"/>
                <asp:FormParameter Name="ManutPrevRelatorio" FormField="txtRelatorio"/>
                <asp:FormParameter Name="MantPrevMaterialUtiliz" FormField="txtMaterial"/>
                <asp:FormParameter Name="ManutPrevProx" FormField="txtProximo"/>
                <asp:Parameter Name="IDCond" />
                <asp:Parameter Name="Login" />
                <asp:FormParameter Name="IDEstrutura" FormField="ddlArea" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            SelectCommand="SELECT [IDEstrutura], [EstNome] FROM [EstruturaCond] WHERE ([IDCond] = @IDCond)">
            <SelectParameters>
                <asp:SessionParameter Name="IDCond" 
                    SessionField="Session[&quot;IDCond&quot;].toString()" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        <table style="width: 40%;">
            <tr>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Descricao:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDescricao" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label2" runat="server" Text="Data de Finalizacao::"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDataFinal" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label3" runat="server" Text="Periodo:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPeriodo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label12" runat="server" Text="Area:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlArea" runat="server" DataSourceID="SqlDataSource2" 
                        DataTextField="EstNome" DataValueField="IDEstrutura">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label5" runat="server" Text="Item a Ser Verificado:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtItem" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label6" runat="server" Text="Forma de Verificacao:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtForma" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label7" runat="server" Text="Estado do Item:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEstadoItem" runat="server" Height="22px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label8" runat="server" Text="Troca do Item:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTroca" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label9" runat="server" Text="Dia para a Troca:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDiaTroca" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label13" runat="server" Text="Proxima Etapa:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtProxima" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label10" runat="server" Text="Relatorio da Operacao:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtRelatorio" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label11" runat="server" Text="Materiais Utilizados:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtMaterial" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Button ID="btnCadastrar" runat="server" onclick="btnCadastrar_Click" 
                        Text="Cadastrar" Height="23px" style="height: 26px" />
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
