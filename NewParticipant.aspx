<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewParticipant.aspx.vb" Inherits="NewParticipant" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add New Participant</title>
    <link rel="stylesheet" href="newParticipant.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="confirmation">
                <p class="txtTitle">Add New Participant</p>

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
                    <asp:Button ID="btnSubmitParticipant" runat="server" Text="Submit" />
                </div>

                <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
