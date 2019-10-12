 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarEmpresa.aspx.cs" Inherits="CondominioSite.ModuloSindico.ConsultarEmpresa"  MasterPageFile="~/ModuloSindico/Site2.Master"%>

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
                    <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
                    <asp:TextBox ID="txtPesquisar" runat="server"></asp:TextBox>
                    <asp:Button ID="btnPesquisar" runat="server" onclick="btnPesquisar_Click" 
                        Text="Pesquisar" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MoradorCadastro %>" 
                        
                        
                        SelectCommand="SELECT Empresa.EmpNome, Empresa.EmpResp, Empresa.EmpTel, Empresa.EmpMobile, Empresa.EmpEmail, Condominio.CondNome, Empresa.IDEmpresa FROM Empresa INNER JOIN Condominio ON Empresa.IDCond = Condominio.IDCond WHERE (Empresa.EmpNome = @EmpNome)">
                        <SelectParameters>
                            <asp:ProfileParameter Name="EmpNome" PropertyName="txtPesquisar" 
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="gdvEmpresa" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" DataKeyNames="IDEmpresa" >
                        <Columns>
                            <asp:BoundField DataField="EmpNome" HeaderText="Nome da Empresa" 
                                SortExpression="EmpNome" />
                            <asp:BoundField DataField="EmpResp" HeaderText="Responsavel" 
                                SortExpression="EmpResp" />
                            <asp:BoundField DataField="EmpTel" HeaderText="Telefone de Contato" 
                                SortExpression="EmpTel" />
                            <asp:BoundField DataField="EmpMobile" HeaderText="Celular de Contato" 
                                SortExpression="EmpMobile" />
                            <asp:BoundField DataField="EmpEmail" HeaderText="Email de Contato" 
                                SortExpression="EmpEmail" />
                            <asp:BoundField DataField="CondNome" HeaderText="Condominio Contratante" 
                                SortExpression="CondNome" />
                            <asp:BoundField DataField="IDEmpresa" HeaderText="IDEmpresa" 
                                InsertVisible="False" ReadOnly="True" SortExpression="IDEmpresa" 
                                Visible="False" />
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
