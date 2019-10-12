<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarApartamentos.aspx.cs" Inherits="CondominioSite.ModuloSindico.CadastrarApartamentos"  MasterPageFile="~/ModuloSindico/Site2.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            InsertCommand="INSERT INTO Unit(IDCond, IDBloco, UnitNumber, UnitNumGaragem, UnitGaragem, Login, Descricao, Tamanho, UnitVaga) VALUES (@IDCond, @IDBloco, @UnitNumber, @UnitNumGaragem, @UnitGaragem, @Login, @Descricao, @Tamanho, @UnitVaga)" 
            
            
            
            
            SelectCommand="SELECT IDCond, IDBloco, UnitNumber, UnitGaragem, UnitNumGaragem, Login, Descricao, Tamanho, UnitVaga FROM Unit" 
            UpdateCommand="UPDATE Unit SET IDBloco = @IDBloco, UnitNumber = @UnitNumber, UnitNumGaragem = @UnitNumGaragem, UnitGaragem = @UnitGaragem, UnitVenda = @UnitVenda, Tamanho = @Tamanho, Descricao = @Descricao WHERE (IDUnit = @IDUnit)">
            <UpdateParameters>
                <asp:FormParameter Name="IDBloco" FormField="ddlBloco"/>
                <asp:FormParameter Name="UnitNumber" FormField="txtNum"/>
                <asp:FormParameter Name="UnitNumGaragem" FormField="txtQtdGaragem"/>
                <asp:FormParameter Name="UnitGaragem" FormField="txtGaragem"/>
                <asp:FormParameter Name="UnitVenda" FormField="rblAlugada"/>
                <asp:FormParameter Name="Tamanho" FormField="txtTamanho"/>
                <asp:FormParameter Name="Descricao" FormField="txtDescricao"/>
                <asp:Parameter Name="IDUnit" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="IDCond" />
                <asp:FormParameter Name="IDBloco" FormField="ddlBloco"/>
                <asp:FormParameter Name="UnitNumber" FormField="txtNum"/>
                <asp:FormParameter Name="UnitNumGaragem" FormField="txtQtdGaragem"/>
                <asp:FormParameter Name="UnitGaragem" FormField="txtGaragem"/>
                <asp:Parameter Name="Login" />
                <asp:FormParameter Name="Descricao" FormField="txtDescricao"/>
                <asp:FormParameter Name="Tamanho" FormField="txtTamanho"/>
                <asp:FormParameter Name="UnitVaga" FormField="rblAlugada"/>
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            SelectCommand="SELECT [IDBloco], [Nome] FROM [Bloco] WHERE ([IDCond] = @IDCond)">
            <SelectParameters>
                <asp:SessionParameter Name="IDCond" 
                    SessionField="Session[&quot;IDCond&quot;].toString" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        <table style="width: 38%;">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Bloco:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlBloco" runat="server" DataSourceID="SqlDataSource3" 
                        DataTextField="Nome" DataValueField="IDBloco">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Numero:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNum" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Numero de Garagens:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtQtdGaragem" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Garagem:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtGaragem" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Disponivel:"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="rblAlugada" runat="server" 
                        RepeatDirection="Horizontal" >
                        <asp:ListItem Value="1">Sim</asp:ListItem>
                        <asp:ListItem Value="0">Nao</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Tamanho:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTamanho" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Descricao:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDescricao" runat="server" Enabled="False" 
                        TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" 
                        onclick="btnCadastrar_Click" style="width: 84px" />
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
