<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainMenu.aspx.cs" Inherits="MainMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fitness And Falls</title>
    <link rel="stylesheet" href="mainMenu.css" />
</head>
    <body>
        <form id="form1" runat="server">
            <div id="logout">
                <asp:Button class="button" ID="btnLogout" runat="server" Text="Logout" />
            </div>
            <div class="container">
                <div id="header">
                    Fitness and Falls<br />&nbsp;&nbsp;Main Menu
                </div>
                <div id="navBar">
                    <ul>
                      <li><a href="Participant.aspx">New Participant</a></li>
                      <li><a href="FallDiary.aspx">Fall Diary</a></li>
                      <li><a href="AnnualDataCollectionForm.aspx">Annual Data Collection</a></li>
                      <li><a href="Results.aspx">Results</a></li>
                    </ul>
                </div>
            </div>
         </form>
    </body>
</html>
