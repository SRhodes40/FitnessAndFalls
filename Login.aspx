<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fitness and Falls Login</title>
</head>
<body style="height: 267px">
    <form id="form1" runat="server">
        <asp:Label ID="lblPrompt" runat="server" Text=" Login to Fitness and Falls"></asp:Label>
        <br /><br />
        <asp:Label ID="lblUsername" runat="server" Text="Username:     "></asp:Label>
        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblPassword" runat="server" Text="Password:     "></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Button ID="btnLogin" runat="server" Text="Login" />
    </form>
</body>
</html>
