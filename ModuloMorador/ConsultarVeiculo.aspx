﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarVeiculo.aspx.cs" Inherits="CondominioSite.ModuloMorador.ConsultarVeiculo"  MasterPageFile="~/ModuloMorador/Site1.Master"%>

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
                    <asp:Label ID="Label1" runat="server" Text="Modelo"></asp:Label>
                    <asp:TextBox ID="txtPesquisar" runat="server"></asp:TextBox>
                    <asp:Button ID="btnPesquisar" runat="server" onclick="btnPesquisar_Click" 
                        Text="Pesquisar" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                        
                        
                        SelectCommand="SELECT Veiculos.VeicProp AS Proprietario, Veiculos.VeicMarca, Veiculos.VeicModelo, Veiculos.VeicPlaca, Veiculos.VeicGaragem, Veiculos.IDVeic, Bloco.Nome, Unit.UnitNumber FROM Veiculos INNER JOIN Moradores ON Veiculos.Login = Moradores.Login INNER JOIN Bloco ON Veiculos.IDBloco = Bloco.IDBloco INNER JOIN Unit ON Veiculos.IDUnit = Unit.IDUnit AND Bloco.IDUnit = Unit.IDUnit AND Bloco.IDBloco = Unit.IDBloco WHERE (Veiculos.VeicModelo = @VeicModelo) AND (Veiculos.IDCond = @IDCond)">
                        <SelectParameters>
                            <asp:FormParameter FormField="txtPesquisar" Name="VeicModelo" Type="String" />
                            <asp:SessionParameter Name="IDCond" 
                                SessionField="Session[&quot;IDCond&quot;].toString()" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="gdvVeiculo" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" DataKeyNames="IDVeic" 
                        onselectedindexchanged="gdvVeiculo_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="Proprietario" HeaderText="Proprietario" 
                                SortExpression="Proprietario" />
                            <asp:BoundField DataField="Nome" HeaderText="Bloco" SortExpression="Nome" />
                            <asp:BoundField DataField="UnitNumber" HeaderText="Apartamento" 
                                SortExpression="UnitNumber" />
                            <asp:BoundField DataField="VeicMarca" HeaderText="Marca" 
                                SortExpression="VeicMarca" />
                            <asp:BoundField DataField="VeicModelo" HeaderText="Modelo" 
                                SortExpression="VeicModelo" />
                            <asp:BoundField DataField="VeicPlaca" HeaderText="Placa" 
                                SortExpression="VeicPlaca" />
                            <asp:BoundField DataField="VeicGaragem" HeaderText="Garagem" 
                                SortExpression="VeicGaragem" />
                            <asp:BoundField DataField="IDVeic" HeaderText="IDVeic" InsertVisible="False" 
                                ReadOnly="True" SortExpression="IDVeic" Visible="False" />
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
