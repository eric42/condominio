<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarSindico.aspx.cs" Inherits="CondominioSite.ModuloSindico.CadastrarSindico" MasterPageFile="~/ModuloSindico/Site2.Master" %>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            SelectCommand="SELECT [IDBloco], [Nome] FROM [Bloco] WHERE ([IDCond] = @IDCond)">
            <SelectParameters>
                <asp:SessionParameter Name="IDCond" 
                    SessionField="Session[&quot;IDCond&quot;].ToString()" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            SelectCommand="SELECT [IDUnit], [UnitNumber] FROM [Unit] WHERE ([IDBloco] = @IDBloco)">
            <SelectParameters>
                <asp:FormParameter FormField="ddlBloco" Name="IDBloco" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            SelectCommand="SELECT [Login], [Nome] FROM [Usuario] WHERE (([IDBloco] = @IDBloco) AND ([IDUnit] = @IDUnit))">
            <SelectParameters>
                <asp:FormParameter FormField="ddlBloco" Name="IDBloco" Type="Decimal" />
                <asp:FormParameter FormField="ddlApartamento" Name="IDUnit" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            SelectCommand="SELECT TipoUser FROM Usuario WHERE (Nome = @Nome) AND (Bloco = @Bloco) AND (Apart = @Apart)" 
            UpdateCommand="UPDATE Usuario SET TipoUser = 'Sindico' WHERE (Nome = @Nome) AND (Bloco = @Bloco) AND (Apart = @Apart)">
            <SelectParameters>
                <asp:FormParameter FormField="ddlNome" Name="Nome" />
                <asp:FormParameter FormField="ddlBloco" Name="Bloco" />
                <asp:FormParameter FormField="ddlApartamento" Name="Apart" />
            </SelectParameters>
            <UpdateParameters>
                <asp:FormParameter Name="nome" FormField="ddlNome"/>
                <asp:FormParameter Name="bloco" FormField="ddlBloco"/>
                <asp:FormParameter Name="Apart" FormField="ddlApartamento"/>
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            SelectCommand="SELECT TipoUser FROM Usuario WHERE (Nome = @Nome) AND (Bloco = @Bloco) AND (Apart = @Apart)" 
            UpdateCommand="UPDATE Usuario SET TipoUser = 'SubSindico' WHERE (Nome = @Nome) AND (Bloco = @Bloco) AND (Apart = @Apart)">
            <SelectParameters>
                <asp:FormParameter FormField="ddlBloco0" Name="Nome" />
                <asp:FormParameter FormField="ddlBloco0" Name="Bloco" />
                <asp:FormParameter FormField="ddlApartamento0" Name="Apart" />
            </SelectParameters>
            <UpdateParameters>
                <asp:FormParameter Name="nome" FormField="ddlNome0"/>
                <asp:FormParameter Name="bloco" FormField="ddlBloco0"/>
                <asp:FormParameter Name="Apart" FormField="ddlNome0"/>
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            SelectCommand="SELECT TipoUser FROM Usuario WHERE (TipoUser = 'Sindico') OR (TipoUser = 'SubSindico')" 
            UpdateCommand="UPDATE Usuario SET TipoUser = 'Morador' WHERE (TipoUser = 'Sindico') OR (TipoUser = 'SubSindico')">
        </asp:SqlDataSource>
        <table style="width: 69%;">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Bloco:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:DropDownList ID="ddlBloco" runat="server" DataSourceID="SqlDataSource1" 
                        DataTextField="Nome" DataValueField="IDBloco" Width="179px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Text="Apartamento:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:DropDownList ID="ddlApartamento" runat="server" 
                        DataSourceID="SqlDataSource2" DataTextField="UnitNumber" 
                        DataValueField="IDUnit" Height="17px" Width="111px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Text="Novo Sindico:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:DropDownList ID="ddlNome" runat="server" DataSourceID="SqlDataSource3" 
                        DataTextField="Nome" DataValueField="Login" Height="16px" Width="410px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label4" runat="server" Text="Bloco:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:DropDownList ID="ddlBloco0" runat="server" DataSourceID="SqlDataSource1" 
                        DataTextField="Nome" DataValueField="IDBloco" Width="179px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label5" runat="server" Text="Apartamento:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:DropDownList ID="ddlApartamento0" runat="server" 
                        DataSourceID="SqlDataSource2" DataTextField="UnitNumber" 
                        DataValueField="IDUnit" Height="17px" Width="111px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label6" runat="server" Text="Novo Sub - Sindico:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:DropDownList ID="ddlNome0" runat="server" DataSourceID="SqlDataSource3" 
                        DataTextField="Nome" DataValueField="Login" Height="16px" Width="410px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" 
                        onclick="btnCadastrar_Click" />
                </td>
                <td class="style1">
                    <asp:Button ID="btnVoltar" runat="server" Text="Voltar" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
</asp:Content>
