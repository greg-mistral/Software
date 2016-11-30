<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Test This STUFF</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        SomeFING<br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="TIMESTAMP" HeaderText="TIME" SortExpression="TIMESTAMP">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" />
                </asp:BoundField>
                <asp:BoundField DataField="UserName" HeaderText="User Name" SortExpression="UserName">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" />
                </asp:BoundField>
                <asp:BoundField DataField="PostText" HeaderText="Post" SortExpression="PostText">
                <ItemStyle HorizontalAlign="Justify" VerticalAlign="Top" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Mistral_BLOGConnectionString %>" ProviderName="<%$ ConnectionStrings:Mistral_BLOGConnectionString.ProviderName %>" SelectCommand="SELECT Users.`TIMESTAMP`, Users.UserName, Post_Details.PostText FROM Users INNER JOIN Post_Details ON Users.UserID = Post_Details.PostID"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
