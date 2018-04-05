<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FallCalls.aspx.cs" Inherits="FallCalls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fall Calls</title>
    <link rel="stylesheet" href="fallCalls.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="confirmation">
                <p class="txtTitle">Fall Calls</p>

                <p class="txtQuestions">Participant ID <span style="color: rgb(219, 79, 73)">*</span></p><br />
                <asp:TextBox ID="txtFallCallsParticipantID" runat="server" class="txtMargin"></asp:TextBox>

                <p class="txtQuestions">Call Date <span style="color: rgb(219, 79, 73)">*</span></p><br />
                <asp:TextBox ID="txtFallCallsCallDate" runat="server" class="txtMargin"></asp:TextBox>

                <p class="txtQuestions">Number of Falls <span style="color: rgb(219, 79, 73)">*</span></p><br />
                <asp:TextBox ID="txtFallCallsFalls" runat="server" class="txtMargin"></asp:TextBox>

                <hr />
                <div class="txtMargin" style="text-align: center;"><br /><br />
                    <asp:Button ID="btnSumbitFallCalls" runat="server" Text="Submit" />&nbsp;
                    <asp:Button ID="btnLogoutFallCalls" runat="server" Text="Logout" />
                </div>
                <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
