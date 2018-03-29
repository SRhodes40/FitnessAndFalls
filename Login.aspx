<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fitness and Falls Login</title>
</head>
<body style="background-color: thistle">
    <form id="form1" runat="server">
        <h2 style="margin-top; text-align:center">Login to Fitness and Falls</h2>
        <table style="margin:auto; border:5px solid white">
            <tr>
                <td><asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
                <td><asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></td></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label></td>
                <td><asp:TextBox ID="txtPassword" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td align="right"><asp:Button ID="btnLogin" runat="server" Text="Login" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
