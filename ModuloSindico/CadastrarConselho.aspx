<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarConselho.aspx.cs" Inherits="CondominioSite.ModuloSindico.CadastrarConselho"  MasterPageFile="~/ModuloSindico/Site2.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            InsertCommand="INSERT INTO Conselho(IDUnit, IDCond, ConsNome, ConsTelefone, ConsGestao, ConsEmail, IDBloco) VALUES (@IDUnit, @IDCond, @ConsNome, @ConsTelefone, @ConsGestao, @ConsEmail, @IDBloco)" 
            
            
            SelectCommand="SELECT IDCond, ConsNome, ConsTelefone, ConsGestao, ConsEmail, IDBloco, IDUnit FROM Conselho" 
            UpdateCommand="UPDATE Conselho SET ConsNome = @ConsNome, IDBloco = @IDBloco, IDUnit = @IDUnit, ConsTelefone = @ConsTelefone, ConsEmail = @ConsEmail, ConsGestao = @ConsGestao WHERE (IDConselho = @IDConselho)">
            <UpdateParameters>
                <asp:FormParameter Name="ConsNome" FormField="txtNome"/>
                <asp:FormParameter Name="IDBloco" FormField="ddlBloco" />
                <asp:FormParameter Name="IDUnit" FormField="ddlApart"/>
                <asp:FormParameter Name="ConsTelefone" FormField="txtTelefone"/>
                <asp:FormParameter Name="ConsEmail" FormField="txtEmail"/>
                <asp:FormParameter Name="ConsGestao" FormField="txtGestao" />
                <asp:Parameter Name="IDConselho" />
            </UpdateParameters>
            <InsertParameters>
                <asp:FormParameter Name="IDUnit" FormField="ddlApart"/>
                <asp:FormParameter Name="IDCond" FormField="ddlApart"/>
                <asp:FormParameter Name="ConsNome" FormField="txtNome"/>
                <asp:FormParameter Name="ConsTelefone" FormField="txtTelefone"/>
                <asp:FormParameter Name="ConsGestao" FormField="txtGestao" />
                <asp:FormParameter Name="ConsEmail" FormField="txtEmail"/>
                <asp:FormParameter Name="IDBloco" FormField="ddlBloco"/>
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            
            SelectCommand="SELECT [IDBloco], [Nome] FROM [Bloco] WHERE ([IDCond] = @IDCond2)">
            <SelectParameters>
                <asp:SessionParameter Name="IDCond2" 
                    SessionField="Session[&quot;IDCond&quot;].toString" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            
            SelectCommand="SELECT [IDUnit], [UnitNumber] FROM [Unit] WHERE ([IDBloco] = @IDBloco)">
            <SelectParameters>
                <asp:FormParameter FormField="ddlBloco" Name="IDBloco" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        <table style="width: 23%;">
            <tr>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Bloco:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlBloco" runat="server" DataSourceID="SqlDataSource3" 
                        DataTextField="Nome" DataValueField="IDBloco">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Apartamento:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlApart" runat="server" DataSourceID="SqlDataSource4" 
                        DataTextField="UnitNumber" DataValueField="IDUnit" >
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Telefone:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTelefone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Email:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Gestão:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtGestao" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
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
    <p>
        &nbsp;</p>
</body>
</html>
</asp:Content>
