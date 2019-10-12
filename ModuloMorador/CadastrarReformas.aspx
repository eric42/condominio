<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarReformas.aspx.cs" Inherits="CondominioSite.ModuloSindico.CadastrarReformas"  MasterPageFile="~/ModuloMorador/Site1.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            InsertCommand="INSERT INTO Reforma(IDCond, IDBloco, IDUnit, Login, EngenheiroNome, EngCpf, Empresa, EmpCnpj, EngCrea, DataIni, Descricao, DataFim, Aprovado, Motivo) VALUES (@IDCond, @IDBloco, @IDUnit, @Login, @EngenheiroNome, @EngCpf, @Empresa, @EmpCnpj, @EngCrea, @DataIni, @Descricao, @DataFim, @Aprovado, @Motivo)" 
            
            
            SelectCommand="SELECT IDCond, IDBloco, IDUnit, Login, EngenheiroNome, EngCpf, Empresa, EmpCnpj, EngCrea, DataIni, Descricao, DataFim, Aprovado, Motivo FROM Reforma" 
            UpdateCommand="UPDATE Reforma SET DataIni = @DataIni, DataFim = @DataFim, Empresa = @Empresa, EmpCnpj = @EmpCnpj, EngenheiroNome = @EngenheiroNome, EngCrea = @EngCrea, EngCpf = @EngCpf, Descricao = @Descricao, Aprovado = 0, Motivo = 'O cadastro foi alterado.' WHERE (IDReforma = @IDReforma)">
            <UpdateParameters>
                <asp:FormParameter Name="DataIni" FormField="txtDataIni"/>
                <asp:FormParameter Name="DataFim" FormField="txtDataFim"/>
                <asp:FormParameter Name="Empresa" FormField="txtEmp"/>
                <asp:FormParameter Name="EmpCnpj" FormField="txtCnpj"/>
                <asp:FormParameter Name="EngenheiroNome" FormField="txtNome"/>
                <asp:FormParameter Name="EngCrea" FormField="txtCrea"/>
                <asp:FormParameter Name="EngCpf" FormField="txtCpf"/>
                <asp:FormParameter Name="Descricao" FormField="txtDescricao"/>
                <asp:Parameter Name="IDReforma" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="IDCond" />
                <asp:Parameter Name="IDBloco" />
                <asp:Parameter Name="IDUnit" />
                <asp:Parameter Name="Login" />
                <asp:FormParameter Name="EngenheiroNome" FormField="txtNome"/>
                <asp:FormParameter Name="EngCpf" FormField="txtCpf"/>
                <asp:FormParameter Name="Empresa" FormField="txtEmp"/>
                <asp:FormParameter Name="EmpCnpj" FormField="txtCnpj"/>
                <asp:FormParameter Name="EngCrea" FormField="txtCrea"/>
                <asp:FormParameter Name="DataIni" FormField="txtDataIni"/>
                <asp:FormParameter Name="Descricao"  FormField="txtDescricao"/>
                <asp:FormParameter Name="DataFim" FormField="txtDataFim"/>
                <asp:Parameter Name="Aprovado" />
                <asp:Parameter Name="Motivo" />
            </InsertParameters>
        </asp:SqlDataSource>
        <table style="width: 38%; height: 294px;">
            <tr>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Data de Inicio:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDataIni" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label7" runat="server" Text="Data prevista do Termino :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDataFim" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label3" runat="server" Text="Empresa do Engenheiro:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmp" runat="server" Height="22px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label6" runat="server" Text="CNPJ da Empresa:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCNPJ" runat="server" style="margin-left: 0px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label2" runat="server" Text="Nome do Engenheiro:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label4" runat="server" Text="Crea do Engenheiro:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCrea" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label5" runat="server" Text="CPF do Engenheiro:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCpf" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label8" runat="server" Text="Descricao:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDescricao" runat="server" Height="58px" 
                        TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
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
