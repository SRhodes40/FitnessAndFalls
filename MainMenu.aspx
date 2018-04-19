<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainMenu.aspx.cs" Inherits="MainMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Main Menu</div>
        <asp:Button ID="partBtn" runat="server" Text="New Participant" OnClick="partBtn_Click" />
        <br />
        <br />
        <asp:Button ID="callBtn" runat="server"  Text="Fall Calls" OnClick="callBtn_Click" />
        <br />
        <br />
        <asp:Button ID="annualBtn" runat="server" Text="Annual Data Collection" OnClick="annualBtn_Click" />
        <br />
        <br />
        <asp:Button ID="resultsBtn" runat="server" Text="Results" OnClick="resultsBtn_Click" />
    </form>
</body>
</html>
