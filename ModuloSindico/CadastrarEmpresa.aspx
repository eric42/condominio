<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarEmpresa.aspx.cs" Inherits="CondominioSite.ModuloSindico.CadastrarEmpresa"  MasterPageFile="~/ModuloSindico/Site2.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            InsertCommand="INSERT INTO Empresa(EmpNome, EmpNomeFant, EmpResp, EmpTel, EmpMobile, EmpEmail, EmpCnpjCpf, EmpEnd, EmpComp, EmpBairro, EmpCep, EmpCidade, EmpEstado, EmpInscEst, EmpInscMunicipal, IDCond) VALUES (@EmpNome, @EmpNomeFant, @EmpResp, @EmpTel, @EmpMobile, @EmpEmail, @EmpCnpjCpf, @EmpEnd, @EmpComp, @EmpBairro, @EmpCep, @EmpCidade, @EmpEstado, @EmpInscEst, @EmpInscMunicipal, @IDCond)" 
            
            
            
            SelectCommand="SELECT EmpNome, EmpNomeFant, EmpResp, EmpTel, EmpMobile, EmpEmail, EmpCnpjCpf, EmpEnd, EmpComp, EmpBairro, EmpCep, EmpCidade, EmpEstado, EmpInscEst, EmpInscMunicipal, IDCond FROM Empresa" 
            UpdateCommand="UPDATE Empresa SET EmpNome = @EmpNome, EmpNomeFant = @EmpNomeFant, EmpResp = @EmpResp, EmpTel = @EmpTel, EmpMobile = @EmpMobile, EmpEmail = @EmpEmail, EmpCnpjCpf = @EmpCnpjCpf, EmpInscEst = @EmpInscEst, EmpInscMunicipal = @EmpInscMunicipal, EmpEstado = @EmpEstado, EmpCidade = @EmpCidade, EmpBairro = @EmpBairro, EmpEnd = @EmpEnd, EmpComp = @EmpComp, EmpCep = @EmpCep WHERE (IDEmpresa = @IDEmpresa)">
            <UpdateParameters>
                <asp:FormParameter Name="EmpNome" FormField="txtNome"/>
                <asp:FormParameter Name="EmpNomeFant" FormField="txtNomeFant"/>
                <asp:FormParameter Name="EmpResp" FormField="txtResponsavel"/>
                <asp:FormParameter Name="EmpTel" FormField="txtTelefone"/>
                <asp:FormParameter Name="EmpMobile" FormField="txtCelular"/>
                <asp:FormParameter Name="EmpEmail" FormField="txtEmail"/>
                <asp:FormParameter Name="EmpCnpjCpf" FormField="txtCnpj"/>
                <asp:FormParameter Name="EmpInscEst" FormField="txtInsEstadual"/>
                <asp:FormParameter Name="EmpInscMunicipal" FormField="txtInsMunic" />
                <asp:FormParameter Name="EmpEstado" FormField="txtEstado"/>
                <asp:FormParameter Name="EmpCidade" FormField="txtCidade"/>
                <asp:FormParameter Name="EmpBairro" FormField="txtBairro"/>
                <asp:FormParameter Name="EmpEnd" FormField="txtEndereco"/>
                <asp:FormParameter Name="EmpComp" FormField="txtComplemento"/>
                <asp:FormParameter Name="EmpCep" FormField="txtCep"/>
                <asp:Parameter Name="IDEmpresa" />
            </UpdateParameters>
            <InsertParameters>
                <asp:FormParameter Name="EmpNome" FormField="txtNome"/>
                <asp:FormParameter Name="EmpNomeFant" FormField="txtNomeFant"/>
                <asp:FormParameter Name="EmpResp" FormField="txtResponsavel"/>
                <asp:FormParameter Name="EmpTel" FormField="txtTelefone"/>
                <asp:FormParameter Name="EmpMobile" FormField="txtCelular"/>
                <asp:FormParameter Name="EmpEmail" FormField="txtEmail"/>
                <asp:FormParameter Name="EmpCnpjCpf" FormField="txtCnpj"/>
                <asp:FormParameter Name="EmpEnd" FormField="txtEndereco"/>
                <asp:FormParameter Name="EmpComp" FormField="txtComplemento"/>
                <asp:FormParameter Name="EmpBairro" FormField="txtBairro"/>
                <asp:FormParameter Name="EmpCep" FormField="txtCep"/>
                <asp:FormParameter Name="EmpCidade" FormField="txtCidade"/>
                <asp:FormParameter Name="EmpEstado" FormField="txtEstado"/>
                <asp:FormParameter Name="EmpInscEst" FormField="txtInsEstadual"/>
                <asp:FormParameter Name="EmpInscMunicipal" FormField="txtInsMunic"/>
                <asp:Parameter Name="IDCond" />
            </InsertParameters>
        </asp:SqlDataSource>
    
        <table style="width:34%;">
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
                    <asp:Label ID="Label3" runat="server" Text="Nome Fantasia:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNomeFant" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Responsavel:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtResponsavel" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Telefone:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTelefone" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Celular:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCelular" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="Email:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="CNPJ:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCnpj" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label15" runat="server" Text="Inscricao Estadual:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtInsEstadual" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label16" runat="server" Text="Inscricao Municipal:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtInsMunic" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Estado:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEstado" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Cidade:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCidade" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Bairro:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBairro" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Endereco:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEndereco" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Complemento:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtComplemento" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label14" runat="server" Text="CEP:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCep" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
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
