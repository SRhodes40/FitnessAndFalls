﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainMenu.aspx.cs" Inherits="MainMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<<<<<<< HEAD
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
=======
    <title>Main Menu</title>
     <link rel="stylesheet" href="mainmenu.css" />
</head>
<body>
    <form id="form1" runat="server">
        <h1>Main Menu</h1>
        
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
>>>>>>> 78d46961c774da9d81d9c86c98b26f7d9f967f57
    </form>
</body>
</html>