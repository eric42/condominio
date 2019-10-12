<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TesteRicardo.aspx.cs" Inherits="CondominioSite.TesteRicardo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:InsertTeste %>" 
            InsertCommand="INSERT INTO Table_1(nome, numero) VALUES (@nome, @numero)" 
            SelectCommand="SELECT nome, numero FROM Table_1" 
            ProviderName="<%$ ConnectionStrings:InsertTeste.ProviderName %>">
            <InsertParameters>
                <asp:FormParameter Name="nome" FormField="txtNome" />
                <asp:FormParameter Name="numero" FormField="txtNumero" />
            </InsertParameters>
        </asp:SqlDataSource>
    
        <asp:Label ID="Label1" runat="server" Text="nome"></asp:Label>
        <asp:TextBox ID="txtNome" runat="server" ></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="numero"></asp:Label>
        <asp:TextBox ID="txtNumero" runat="server" Width="128px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" 
            style="height: 26px" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:testeConnectionString %>" 
            SelectCommand="SELECT * FROM [Table_1]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                <asp:BoundField DataField="numero" HeaderText="numero" 
                    SortExpression="numero" />
            </Columns>
        </asp:GridView>
        <br />
    
    </div>
    </form>
</body>
</html>
