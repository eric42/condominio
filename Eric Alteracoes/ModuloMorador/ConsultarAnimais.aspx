<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarAnimais.aspx.cs" Inherits="CondominioSite.ModuloMorador.ConsultarAnimais"  MasterPageFile="~/ModuloMorador/Site1.Master"%>

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
                    <asp:Label ID="Label1" runat="server" Text="Nome: "></asp:Label>
                    <asp:TextBox ID="txtNome" runat="server" Height="21px"></asp:TextBox>
                    <asp:Button ID="btnPesquisar" runat="server" Text="Pesquisar" 
                        onclick="btnPesquisar_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                        
                        
                        SelectCommand="SELECT Animais.AnimalNome AS Animal, Animais.AnimalTipo AS Tipo, Animais.AnimalRaca AS Raca, Animais.AnimalPeso AS Peso, Animais.AnimalTamanho AS Tamanho, Moradores.MorName AS Morador, Unit.UnitNumber AS Apartamento, Bloco.Nome AS Bloco, Animais.IDCond FROM Animais INNER JOIN Moradores ON Animais.Login = Moradores.Login INNER JOIN Unit ON Animais.IDUnit = Unit.IDUnit AND Moradores.Login = Unit.Login INNER JOIN Bloco ON Animais.IDBloco = Bloco.IDBloco AND Unit.IDBloco = Bloco.IDBloco AND Unit.IDUnit = Bloco.IDUnit INNER JOIN Condominio ON Animais.IDCond = Condominio.IDCond AND Moradores.IDCond = Condominio.IDCond AND Unit.IDCond = Condominio.IDCond AND Bloco.IDCond = Condominio.IDCond WHERE (Animais.AnimalNome LIKE '%' + @AnimalNome + '%') AND (Animais.IDCond = @IDCond)">
                        <SelectParameters>
                            <asp:FormParameter FormField="txtNome" Name="AnimalNome" />
                            <asp:SessionParameter Name="IDCond" 
                                SessionField="Session[&quot;IDCond&quot;].toString()" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="gdvAnimais" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Animal" HeaderText="Animal" 
                                SortExpression="Animal" />
                            <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
                            <asp:BoundField DataField="Raca" HeaderText="Raca" SortExpression="Raca" />
                            <asp:BoundField DataField="Peso" HeaderText="Peso" SortExpression="Peso" />
                            <asp:BoundField DataField="Tamanho" HeaderText="Tamanho" 
                                SortExpression="Tamanho" />
                            <asp:BoundField DataField="Morador" HeaderText="Morador" 
                                SortExpression="Morador" />
                            <asp:BoundField DataField="Apartamento" HeaderText="Apartamento" 
                                SortExpression="Apartamento" />
                            <asp:BoundField DataField="Bloco" HeaderText="Bloco" SortExpression="Bloco" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
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
