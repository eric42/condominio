<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarEmpregados.aspx.cs" Inherits="CondominioSite.ModuloMorador.CadastrarEmpregados"  MasterPageFile="~/ModuloMorador/Site1.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            
            SelectCommand="SELECT EmpregadoNome, IDUnit, IDBloco, IDCond, EmpregadoMorador, EmpregadoPeriodo, EmpregadoDiasSemana, EmpregadoCpf, EmpregadoRg, EmpregadoCarteiraTrab, EmpregadoComprResi, EmpregadoTelefone, EmpregadoCelular, EmpregadoTelefoneReferencia FROM EmpregadoApartamento" 
            UpdateCommand="UPDATE EmpregadoApartamento SET EmpregadoNome = @EmpregadoNome, EmpregadoCpf = @EmpregadoCpf, EmpregadoRg = @EmpregadoRg, EmpregadoCarteiraTrab = @EmpregadoCarteiraTrab, EmpregadoComprResi = @EmpregadoComprResi, EmpregadoTelefone = @EmpregadoTelefone, EmpregadoCelular = @EmpregadoCelular, EmpregadoPeriodo = @EmpregadoPeriodo, EmpregadoDiasSemana = @EmpregadoDiasSemana, EmpregadoTelefoneReferencia = @EmpregadoTelefoneReferencia WHERE (EmpregadoID = @EmpregadoID)" InsertCommand="INSERT INTO EmpregadoApartamento(EmpregadoNome, EmpregadoCpf, EmpregadoRg, EmpregadoCarteiraTrab, EmpregadoComprResi, EmpregadoTelefone, EmpregadoCelular, EmpregadoPeriodo, EmpregadoDiasSemana, EmpregadoTelefoneReferencia, EmpregadoMorador, IDUnit, IDBloco, IDCond, Login) VALUES (@EmpregadoNome, @EmpregadoCpf, @EmpregadoRg, @EmpregadoCarteiraTrab, @EmpregadoComprResi, @EmpregadoTelefone, @EmpregadoCelular, @EmpregadoPeriodo, @EmpregadoDiasSemana, @EmpregadoTelefoneReferencia, @EmpregadoMorador, @IDUnit, @IDBloco, @IDCond, @Login)">
            <InsertParameters>
                <asp:FormParameter Name="EmpregadoNome" FormField="txtNome"/>
                <asp:FormParameter Name="EmpregadoCpf" FormField="txtCpf" />
                <asp:FormParameter Name="EmpregadoRg" FormField="txtRg" />
                <asp:FormParameter Name="EmpregadoCarteiraTrab" FormField="txtCartTrab"/>
                <asp:FormParameter Name="EmpregadoComprResi" FormField="txtResidecia"/>
                <asp:FormParameter Name="EmpregadoTelefone" FormField="txtTel"/>
                <asp:FormParameter Name="EmpregadoCelular" FormField="txtCelular"/>
                <asp:FormParameter Name="EmpregadoPeriodo" FormField="ddlPeriodo"/>
                <asp:FormParameter Name="EmpregadoDiasSemana" FormField="txtSemana"/>
                <asp:FormParameter Name="EmpregadoTelefoneReferencia" FormField="txtReferencia"/>
                <asp:Parameter Name="EmpregadoMorador"/>
                <asp:Parameter Name="IDUnit" />
                <asp:Parameter Name="IDBloco" />
                <asp:Parameter Name="IDCond" />
                <asp:Parameter Name="Login" />
            </InsertParameters>
            <UpdateParameters>
                <asp:FormParameter Name="EmpregadoNome" FormField="txtNome"/>
                <asp:FormParameter Name="EmpregadoCpf" FormField="txtCpf"/>
                <asp:FormParameter Name="EmpregadoRg" FormField="txtRg"/>
                <asp:FormParameter Name="EmpregadoCarteiraTrab" FormField="txtCartTrab"/>
                <asp:FormParameter Name="EmpregadoComprResi" FormField="txtResidecia"/>
                <asp:FormParameter Name="EmpregadoTelefone" FormField="txtTel"/>
                <asp:FormParameter Name="EmpregadoCelular" FormField="txtCelular"/>
                <asp:FormParameter Name="EmpregadoPeriodo" FormField="ddlPeriodo"/>
                <asp:FormParameter Name="EmpregadoDiasSemana" FormField="txtSemana"/>
                <asp:FormParameter Name="EmpregadoTelefoneReferencia" FormField="txtReferencia"/>
                <asp:Parameter Name="EmpregadoID" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <table style="width: 39%;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="CPF:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCpf" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="RG:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtRg" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Carteira de Trabalho:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCartTrab" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Residencia:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtResidencia" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Telefone:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label7" runat="server" Text="Celular:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="txtCelular" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Periodo de Trabalho:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlPeriodo" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Matutino</asp:ListItem>
                        <asp:ListItem>Vespertino</asp:ListItem>
                        <asp:ListItem>Noturno</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="Dias da Semana:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtSemana" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label14" runat="server" Text="Telefone para Refencia:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtReferencia" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnCadastrar" runat="server" onclick="btnCadastrar_Click"  Text="Cadastrar" />

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

