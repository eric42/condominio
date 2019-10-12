<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarMorador.aspx.cs" Inherits="CondominioSite.ModuloMorador.CadastrarMorador" MasterPageFile="~/ModuloMorador/Site1.Master" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
        <form id="form2" runat="server">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            InsertCommand="INSERT INTO Usuario(Login, Senha, TipoUser, Nome, Cond, Bloco, Apart, Ativo) VALUES (@login, @senha, 'Morador', @nome, @cond, @bloco, @apart, 0)" 
            
            SelectCommand="SELECT Login, Senha, Nome, Apart, Bloco, Cond, TipoUser FROM Usuario">
                <InsertParameters>
                    <asp:FormParameter Name="login" FormField="txtLogin"/>
                    <asp:FormParameter Name="senha" FormField="txtSenha"/>
                    <asp:FormParameter Name="nome" FormField="txtNome"/>
                    <asp:ControlParameter Name="cond" ControlID="ddlCond"/>
                    <asp:ControlParameter Name="bloco" ControlID="ddlBloco"/>
                    <asp:ControlParameter Name="apart" ControlID="ddlApart"/>
                </InsertParameters>
        </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                InsertCommand="INSERT INTO Moradores(MorName, MorSexo, MorBirth, MorTel, MorMobile, MorEmail, MorCpf, MorRg, MorProf, MorEmpresa, MorTelEmer, MorEmerContato, Login) VALUES (@nome, @sexo, @birth, @tel, @mobile, @email, @cpf, @rg, @prof, @emp, @telemer, @contato, @login)" 
                
                
            
            
            
                SelectCommand="SELECT MorName, MorSexo, MorBirth, MorTel, MorMobile, MorEmail, MorCpf, MorRg, MorProf, MorEmpresa, MorTelEmer, MorEmerContato, Login FROM Moradores">
                <InsertParameters>
                    <asp:FormParameter Name="nome" FormField="txtNome"/>
                    <asp:FormParameter Name="sexo" FormField="rblSexo"/>
                    <asp:FormParameter Name="birth" FormField="cldNasc"/>
                    <asp:FormParameter Name="tel" FormField="txtTelefone"/>
                    <asp:FormParameter Name="mobile" FormField="txtCelular"/>
                    <asp:FormParameter Name="email" FormField="txtEmail"/>
                    <asp:FormParameter Name="cpf" FormField="txtCpf"/>
                    <asp:FormParameter Name="rg" FormField="txtRg"/>
                    <asp:FormParameter Name="prof" FormField="txtProfissao"/>
                    <asp:FormParameter Name="emp" FormField="txtEmpresa"/>
                    <asp:FormParameter Name="telemer" FormField="txtTelEmer"/>
                    <asp:FormParameter Name="contato" FormField="txtContato"/>
                    <asp:FormParameter Name="login" FormField="txtLogin"/>
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            SelectCommand="SELECT [IDCond], [CondNome] FROM [Condominio]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            
            
                SelectCommand="SELECT [IDBloco], [Nome] FROM [Bloco] WHERE ([IDCond] = @IDCond2)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlCond" Name="IDCond2" 
                    PropertyName="SelectedValue" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            
                SelectCommand="SELECT [IDUnit], [UnitNumber] FROM [Unit] WHERE ([IDBloco] = @IDBloco)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlBloco" Name="IDBloco" 
                    PropertyName="SelectedValue" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label19" runat="server" Text="Login:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLogin" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label20" runat="server" Text="Senha:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSenha" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label21" runat="server" Text="Confirmar a Senha:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtConfSenha" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;<asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label22" runat="server" Text="Condominio:"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlCond" runat="server" DataSourceID="SqlDataSource3" 
                            DataTextField="CondNome" DataValueField="IDCond">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label23" runat="server" Text="Bloco:"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlBloco" runat="server" DataSourceID="SqlDataSource4" 
                            DataTextField="Nome" DataValueField="IDBloco">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label24" runat="server" Text="Apartamento:"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlApart" runat="server" DataSourceID="SqlDataSource5" 
                            DataTextField="UnitNumber" DataValueField="IDUnit">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;<asp:Label ID="Label5" runat="server" Text="Telefone:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTelefone" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;<asp:Label ID="Label6" runat="server" Text="Celular:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCelular" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;<asp:Label ID="Label7" runat="server" Text="Nome:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;<asp:Label ID="Label8" runat="server" Text="Sexo:"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="rblSexo" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Text="Feminino" Value="1" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="Masculino" Value="2"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label13" runat="server" Text="CPF:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCPF" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label14" runat="server" Text="RG"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtRG" runat="server"></asp:TextBox>
                    </td>
                </tr>
              <!--  <tr>
                    <td>&nbsp;<asp:Label ID="Label9" runat="server" Text="Data de Nascimento:"></asp:Label>
                    </td>
                    <td>
                        <asp:Calendar ID="cldNasc" runat="server"></asp:Calendar>
                    </td>
                </tr>-->
                <tr>
                    <td>
                        <asp:Label ID="Label15" runat="server" Text="Telefone de Emergencia:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTelEmer" runat="server" style="margin-top: 0px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label16" runat="server" Text="Contato de Emergencia:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtContEmer" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label17" runat="server" Text="Profissao:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtProfissao" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label18" runat="server" Text="Empresa:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmpresa" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" 
                            onclick="btnCadastrar_Click" style="height: 26px" />
                    </td>
                    <td><a href="../Index.aspx">
                        <asp:Button ID="btnVoltar" runat="server" Text="Voltar" />
                        </a></td>
                </tr>
            </table>
        </form>
    </body>
</html>
</asp:Content>

