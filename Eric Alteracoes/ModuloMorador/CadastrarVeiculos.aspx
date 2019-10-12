<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarVeiculos.aspx.cs" Inherits="CondominioSite.ModuloMorador.CadastrarVeiculos"  MasterPageFile="~/ModuloMorador/Site1.Master"%>

<%@ Register src="../_sessao.ascx" tagname="sessao" tagprefix="controles" %>

<asp:Content ContentPlaceHolderID="main" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
            InsertCommand="INSERT INTO Veiculos(IDUnit, Login, VeicProp, VeicTipo, VeicMarca, VeicModelo, VeicPlaca, VeicCor, VeicObs, VeicAno, VeicGaragem, IDCond, IDBloco) VALUES (@IDUnit, @Login, @VeicProp, @VeicTipo, @VeicMarca, @VeicModelo, @VeicPlaca, @VeicCor, @VeicObs, @VeicAno, @VeicGaragem, @IDCond, @IDBloco)" 
            
            
            
            SelectCommand="SELECT VeicCor, VeicPlaca, VeicModelo, VeicObs, VeicMarca, VeicTipo, VeicProp, Login, IDUnit, VeicAno, VeicGaragem, IDCond, IDBloco FROM Veiculos" 
            UpdateCommand="UPDATE Veiculos SET VeicTipo = @VeicTipo, VeicModelo = @VeicModelo, VeicMarca = @VeicMarca, VeicAno = @VeicAno, VeicPlaca = @VeicPlaca, VeicCor = @VeicCor, VeicGaragem = @VeicGaragem, VeicProp = @VeicProp, VeicObs = @VeicObs WHERE (IDVeic = @IDVeic)">
            <UpdateParameters>
                <asp:FormParameter Name="VeicTipo" FormField="txtTipoVeic"/>
                <asp:FormParameter Name="VeicModelo" FormField="txtModelo"/>
                <asp:FormParameter Name="VeicMarca" FormField="txtMarca"/>
                <asp:FormParameter Name="VeicAno" FormField="txtAno"/>
                <asp:FormParameter Name="VeicPlaca" FormField="txtPlaca"/>
                <asp:FormParameter Name="VeicCor" FormField="txtCor"/>
                <asp:FormParameter Name="VeicGaragem" FormField="txtGaragem"/>
                <asp:FormParameter Name="VeicProp" FormField="txtProprietario"/>
                <asp:FormParameter Name="VeicObs" FormField="txtObs"/>
                <asp:Parameter Name="IDVeic" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="IDUnit" />
                <asp:Parameter Name="Login" />
                <asp:FormParameter Name="VeicProp" FormField="txtProprietario"/>
                <asp:FormParameter Name="VeicTipo" FormField="txtTipoVeic"/>
                <asp:FormParameter Name="VeicMarca" FormField="txtMarca"/>
                <asp:FormParameter Name="VeicModelo" FormField="txtModelo"/>
                <asp:FormParameter Name="VeicPlaca" FormField="txtPlaca"/>
                <asp:FormParameter Name="VeicCor" FormField="txtCor"/>
                <asp:FormParameter Name="VeicObs" FormField="txtObs"/>
                <asp:FormParameter Name="VeicAno" FormField="txtAno"/>
                <asp:FormParameter Name="VeicGaragem" FormField="txtGaragem"/>
                <asp:Parameter Name="IDCond" />
                <asp:Parameter Name="IDBloco" />
            </InsertParameters>
        </asp:SqlDataSource>
    
        <table style="width: 31%;">
            <tr>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Tipo de Veiculo:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTipoVeic" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label2" runat="server" Text="Modelo:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtModelo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label11" runat="server" Text="Marca:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtMarca" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label3" runat="server" Text="Ano:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAno" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label4" runat="server" Text="Placa:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPlaca" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label5" runat="server" Text="Cor:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCor" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label6" runat="server" Text="Garagem:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtGaragem" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label7" runat="server" Text="Proprietario:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtProprietario" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label12" runat="server" Text="Observacoes:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtObs" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
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
</body>
</html>
</asp:Content>
