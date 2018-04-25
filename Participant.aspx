<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Participant.aspx.cs" Inherits="Participant" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add New Participant</title>
    <link rel="stylesheet" href="newParticipant.css" />
    <link rel="shortcut icon" href="images/faviconFinal.png" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="confirmation">
                <p class="txtTitle" style="text-align: center;">Add New Participant</p><hr /><br />

                <p class="txtQuestions">LastName <span style="color: rgb(219, 79, 73)">*</span></p><br />
                <asp:TextBox ID="txtParticipantLastName" runat="server" class="txtMargin"></asp:TextBox>

                <p class="txtQuestions">First Name <span style="color: rgb(219, 79, 73)">*</span></p><br />
                <asp:TextBox ID="txtParticipantFirstName" runat="server" class="txtMargin"></asp:TextBox>

                <p class="txtQuestions">Middle Initial <span style="color: rgb(219, 79, 73)">*</span></p><br />
                <asp:TextBox ID="txtParticipantMiddle" runat="server" class="txtMargin"></asp:TextBox>

                <p class="txtQuestions">Suffix <span style="color: rgb(219, 79, 73)">*</span></p><br />
                <asp:TextBox ID="txtParticipantSuffix" runat="server" class="txtMargin"></asp:TextBox>

                <p class="txtQuestions">Phone Number <span style="color: rgb(219, 79, 73)">*</span></p><br />
                <asp:TextBox ID="txtParticipantPhoneNumber" runat="server" class="txtMargin"></asp:TextBox>

                <p class="txtQuestions">Email <span style="color: rgb(219, 79, 73)">*</span></p><br />
                <asp:TextBox ID="txtParticipantEmail" runat="server" class="txtMargin"></asp:TextBox>

                <p class="txtQuestions">Emergency Contact <span style="color: rgb(219, 79, 73)">*</span></p>
                <p style="font-size: .8em;">&nbsp;Full Name</p><br />
                <asp:TextBox ID="txtParticipantEmergencyContactFullName" runat="server" class="txtMargin"></asp:TextBox>

                <p class="txtQuestions">Emergency Contact Phone Number <span style="color: rgb(219, 79, 73)">*</span></p><br />
                <asp:TextBox ID="txtParticipantEmergencyContactPhoneNumber" runat="server" class="txtMargin"></asp:TextBox>

                <p class="txtQuestions">Start Date <span style="color: rgb(219, 79, 73)">*</span></p>
                <p style="font-size: .8em;">&nbsp;(YYYY-MM-DD)</p><br />
                <asp:TextBox ID="txtParticipantStartDate" runat="server" class="txtMargin"></asp:TextBox>

                <hr />

                <div style="text-align: center;">
                    <asp:Button ID="btnSubmitParticipant" runat="server" Text="Submit" OnClick="btnSubmitParticipant_Click" />&nbsp;
                    <asp:Button ID="btnViewAllParticipants" runat="server" Text="Show All Participants" OnClick="btnViewAllParticipants_Click" />
                    &nbsp
                    
                    <asp:Button ID="btnHideParticipant" runat="server" Text="Hide All Participants" OnClick="btnHideParticipant_Click" />
                    
                &nbsp;<asp:Button ID="menuBtn" runat="server" Text="Main Menu" OnClick="menuBtn_Click" />
                    
                </div>

                <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label><br /><br />
                <asp:GridView class="gridview" ID="gvAddParticipants" runat="server" AutoGenerateColumns="False" DataKeyNames="ParticipantID" DataSourceID="sdsViewAllParticipants" Visible="False">
                    <Columns>
                        <asp:BoundField DataField="ParticipantID" HeaderText="Participant ID" InsertVisible="False" ReadOnly="True" SortExpression="ParticipantID" />
                        <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                        <asp:BoundField DataField="MiddleInitial" HeaderText="Middle Initial" SortExpression="MiddleInitial" />
                        <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                        <asp:BoundField DataField="Suffix" HeaderText="Suffix" SortExpression="Suffix" />
                        <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" SortExpression="PhoneNumber" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="EmergencyContactFullName" HeaderText="Emergency Contact Full Name" SortExpression="EmergencyContactFullName" />
                        <asp:BoundField DataField="EmergencyContactPhoneNumber" HeaderText="Emergency Contact Phone Number" SortExpression="EmergencyContactPhoneNumber" />
                        <asp:BoundField DataField="StartDate" HeaderText="Start Date" SortExpression="StartDate" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="sdsViewAllParticipants" runat="server" ConnectionString="<%$ ConnectionStrings:FitnessAndFallsConnectionString %>" SelectCommand="SELECT * FROM [Participant]"></asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>
