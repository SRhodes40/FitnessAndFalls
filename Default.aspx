<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fitness and Falls Login</title>
  <link rel="stylesheet" href="Default.css" />
  <link rel="shortcut icon" href="images/faviconFinal.png" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">
        <h1>Login to Fitness and Falls</h1>
        <table style="margin:auto; border:5px solid white">
            <tr>
                <td><asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
                <td><asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></td></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label></td>
                <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="btnLoginPage" runat="server" Text="Login" OnClick="btnLoginPage_Click" />
                    <asp:Label ID="lblLogin" runat="server" EnableViewState="False"></asp:Label>
                </td>
           
            </tr>
        </table>
    </form>
</body>
</html>
