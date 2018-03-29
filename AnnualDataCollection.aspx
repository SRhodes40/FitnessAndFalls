<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AnnualDataCollection.aspx.vb" Inherits="AnnualDataCollection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Annual Data Collection</title>
</head>
<body>
    <h2>Annual Data Collection</h2>
    <form id="form1" runat="server">
        <div style="height: 162px">
            Search For Participant By ID Or Last Name<br />
            <br />
            Participant ID:&nbsp;&nbsp;
            <asp:TextBox ID="IDSearchtxt" runat="server"></asp:TextBox>
            <br />
            <br />
            Last Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="LastNameSearchtxt" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="ParticipantSearchBtn" runat="server" Text="Search Participant" />
        </div>
        <asp:SqlDataSource ID="sdsParticipants" runat="server"></asp:SqlDataSource>
        <asp:GridView ID="gvParticipants" runat="server" DataSourceID="sdsParticipants">
        </asp:GridView>
    </form>
</body>
</html>
