<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarAssembleiaOn.aspx.cs" Inherits="CondominioSite.ModuloMorador.ConsultarAssembliaOff" MasterPageFile="~/ModuloMorador/Site1.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Assunto:"></asp:Label>
                    <asp:TextBox ID="txtPesquisar" runat="server"></asp:TextBox>
                    <asp:Button ID="btnPesquisar" runat="server" onclick="btnPesquisar_Click" 
                        Text="Pesquisar" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                        
                        
                        SelectCommand="SELECT Assunto, Projeto, PeriodoVotacao, PeriodoAssembleia, ResultadoProjeto, IDAssembleiaOn FROM AssembleiaOnline WHERE (Assunto = @Assunto) AND (IDCond = @IDCond)">
                        <SelectParameters>
                            <asp:FormParameter FormField="txtPesquisar" Name="Assunto" Type="String" />
                            <asp:SessionParameter Name="IDCond" 
                                SessionField="Session[&quot;IDCond&quot;].toString()" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="gdvAssembleia" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="IDAssembleiaOn" DataSourceID="SqlDataSource1" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="Assunto" HeaderText="Assunto" 
                                SortExpression="Assunto" />
                            <asp:BoundField DataField="Projeto" HeaderText="Projeto Apresentado" 
                                SortExpression="Projeto" />
                            <asp:BoundField DataField="PeriodoVotacao" HeaderText="Periodo de Votacao" 
                                SortExpression="PeriodoVotacao" />
                            <asp:BoundField DataField="PeriodoAssembleia" 
                                HeaderText="Periodo da Assembleia" SortExpression="PeriodoAssembleia" />
                            <asp:BoundField DataField="ResultadoProjeto" HeaderText="Resultado do Projeto" 
                                SortExpression="ResultadoProjeto" />
                            <asp:BoundField DataField="IDAssembleiaOn" HeaderText="IDAssembleiaOn" 
                                InsertVisible="False" ReadOnly="True" SortExpression="IDAssembleiaOn" 
                                Visible="False" />
                            <asp:CommandField ShowSelectButton="True" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
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
