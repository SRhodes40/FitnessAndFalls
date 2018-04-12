<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Results.aspx.cs" Inherits="Results" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="resultsLbl" runat="server" Text="Results"></asp:Label>
            <br />
            <asp:Label ID="participantLbl" runat="server" Text="Enter Participant ID:"></asp:Label>
            &nbsp;
            <asp:TextBox ID="participantTxt" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="resultsBtn" runat="server" Text="Search Participant" OnClick="resultsBtn_Click" />

        &nbsp;

        </div>
        <asp:DataList ID="participantDL" runat="server" Visible="False" >
            <ItemTemplate>
                Participant ID:
                <asp:Label ID="ParticipantIDLabel" runat="server" Text='<%# Eval("ParticipantID") %>' />
                <br />
                Participant Name:&nbsp 
                <asp:Label ID="SuffixLabel" runat="server" Text='<%# Eval("Suffix") %>' />
                &nbsp 
                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                &nbsp 
                
                <asp:Label ID="MiddleInitialLabel" runat="server" Text='<%# Eval("MiddleInitial") %>' />
                &nbsp 
                
                <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                
                
                
                <br />
                Phone Number:
                <asp:Label ID="PhoneNumberLabel" runat="server" Text='<%# Eval("PhoneNumber") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />
                Emergency Contact Full Name:
                <asp:Label ID="EmergencyContactFullNameLabel" runat="server" Text='<%# Eval("EmergencyContactFullName") %>' />
                <br />
                Emergency Contact PhoneNumber:
                <asp:Label ID="EmergencyContactPhoneNumberLabel" runat="server" Text='<%# Eval("EmergencyContactPhoneNumber") %>' />
                <br />
                Start Date:
                <asp:Label ID="StartDateLabel" runat="server" Text='<%# Eval("StartDate") %>' />
                <br />
                Call Date:
                <asp:Label ID="CallDateLabel" runat="server" Text='<%# Eval("CallDate") %>' />
                <br />
                Number of Falls:
                <asp:Label ID="FallsLabel" runat="server" Text='<%# Eval("Falls") %>' />
                <br />
                Interviewer Name:
                <asp:Label ID="InterviewerFirstNameLabel" runat="server" Text='<%# Eval("InterviewerFirstName") %>' />
                &nbsp 
                
                <asp:Label ID="InterviewerLastNameLabel" runat="server" Text='<%# Eval("InterviewerLastName") %>' />
                <br />
                Time of Fall:
                <asp:Label ID="FallTimeLabel" runat="server" Text='<%# Eval("FallTime") %>' />
                <br />
                Fall Description:
                <asp:Label ID="FallDescriptionLabel" runat="server" Text='<%# Eval("FallDescription") %>' />
                <br />
                Fall Location:
                <asp:Label ID="FallLocationLabel" runat="server" Text='<%# Eval("FallLocation") %>' />
                <br />
                Injured?:
                <asp:Label ID="InjuredLabel" runat="server" Text='<%# Eval("Injured") %>' />
                <br />
                Injury Description:
                <asp:Label ID="InjuryDescLabel" runat="server" Text='<%# Eval("InjuryDesc") %>' />
                <br />
                Using Assistive Device?:
                <asp:Label ID="UsingAssistiveDeviceLabel" runat="server" Text='<%# Eval("UsingAssistiveDevice") %>' />
                <br />
                Medication Change?:
                <asp:Label ID="MedicationChangeLabel" runat="server" Text='<%# Eval("MedicationChange") %>' />
                <br />
                Medication Change Description:
                <asp:Label ID="MedChangeDescLabel" runat="server" Text='<%# Eval("MedChangeDesc") %>' />
                <br />
                Month of Fall:
                <asp:Label ID="FallMonthLabel" runat="server" Text='<%# Eval("FallMonth") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="detailsddb" runat="server" ConnectionString="<%$ ConnectionStrings:FitnessAndFallsConnectionString %>" SelectCommand="SELECT Participant.ParticipantID, Participant.FirstName, Participant.MiddleInitial, Participant.LastName, Participant.Suffix, Participant.PhoneNumber, Participant.Email, Participant.EmergencyContactFullName, Participant.EmergencyContactPhoneNumber, Participant.StartDate, FallDetails.CallDate, FallCalls.Falls, FallDetails.InterviewerFirstName, FallDetails.InterviewerLastName, FallDetails.FallTime, FallDetails.FallDescription, FallDetails.FallLocation, FallDetails.Injured, FallDetails.InjuryDesc, FallDetails.UsingAssistiveDevice, FallDetails.MedicationChange, FallDetails.MedChangeDesc, FallDetails.FallMonth FROM Participant INNER JOIN FallCalls ON Participant.ParticipantID = FallCalls.ParticipantID INNER JOIN FallDetails ON FallCalls.ParticipantID = FallDetails.ParticipantID AND FallCalls.CallDate = FallDetails.CallDate"></asp:SqlDataSource>
    </form>
    <asp:Button ID="menuBtn" runat="server" OnClick="menuBtn_Click" Text="Main Menu" />
</body>
</html>
