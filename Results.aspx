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
        <asp:DataList ID="participantDL" runat="server" Visible="False" DataKeyField="ParticipantID" OnSelectedIndexChanged="participantDL_SelectedIndexChanged"  >
            <ItemTemplate>
                ParticipantID:
                <asp:Label ID="ParticipantIDLabel" runat="server" Text='<%# Eval("ParticipantID") %>' />
                <br />
                CallDate:
                <asp:Label ID="CallDateLabel" runat="server" Text='<%# Eval("CallDate") %>' />
                <br />
                InterviewerFirstName:
                <asp:Label ID="InterviewerFirstNameLabel" runat="server" Text='<%# Eval("InterviewerFirstName") %>' />
                <br />
                InterviewerLastName:
                <asp:Label ID="InterviewerLastNameLabel" runat="server" Text='<%# Eval("InterviewerLastName") %>' />
                <br />
                FallTime:
                <asp:Label ID="FallTimeLabel" runat="server" Text='<%# Eval("FallTime") %>' />
                <br />
                FallDescription:
                <asp:Label ID="FallDescriptionLabel" runat="server" Text='<%# Eval("FallDescription") %>' />
                <br />
                FallLocation:
                <asp:Label ID="FallLocationLabel" runat="server" Text='<%# Eval("FallLocation") %>' />
                <br />
                Injured:
                <asp:Label ID="InjuredLabel" runat="server" Text='<%# Eval("Injured") %>' />
                <br />
                InjuryDesc:
                <asp:Label ID="InjuryDescLabel" runat="server" Text='<%# Eval("InjuryDesc") %>' />
                <br />
                UsingAssistiveDevice:
                <asp:Label ID="UsingAssistiveDeviceLabel" runat="server" Text='<%# Eval("UsingAssistiveDevice") %>' />
                <br />
                MedicationChange:
                <asp:Label ID="MedicationChangeLabel" runat="server" Text='<%# Eval("MedicationChange") %>' />
                <br />
                MedChangeDesc:
                <asp:Label ID="MedChangeDescLabel" runat="server" Text='<%# Eval("MedChangeDesc") %>' />
                <br />
                FallMonth:
                <asp:Label ID="FallMonthLabel" runat="server" Text='<%# Eval("FallMonth") %>' />
                <br />
                ContactParticipant:
                <asp:Label ID="ContactParticipantLabel" runat="server" Text='<%# Eval("ContactParticipant") %>' />
                <br />
                FallenPastMonth:
                <asp:Label ID="FallenPastMonthLabel" runat="server" Text='<%# Eval("FallenPastMonth") %>' />
                <br />
                HowManyFallsLastMonth:
                <asp:Label ID="HowManyFallsLastMonthLabel" runat="server" Text='<%# Eval("HowManyFallsLastMonth") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FitnessAndFallsConnectionString2 %>" SelectCommand="SELECT FallDetails.ParticipantID, FallDetails.CallDate, FallDetails.InterviewerFirstName, FallDetails.InterviewerLastName, FallDetails.FallTime, FallDetails.FallDescription, FallDetails.FallLocation, FallDetails.Injured, FallDetails.InjuryDesc, FallDetails.UsingAssistiveDevice, FallDetails.MedicationChange, FallDetails.MedChangeDesc, FallDetails.FallMonth, FallDiary.ContactParticipant, FallDiary.FallenPastMonth, FallDiary.HowManyFallsLastMonth FROM FallDiary INNER JOIN FallDetails ON FallDiary.ParticipantID = FallDetails.ParticipantID AND FallDiary.InterviewDate = FallDetails.CallDate"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <br />
        <br />
    <asp:Button ID="menuBtn" runat="server" OnClick="menuBtn_Click" Text="Main Menu" />
        <asp:SqlDataSource ID="detailsddb" runat="server" ConnectionString="<%$ ConnectionStrings:FitnessAndFallsConnectionString %>" SelectCommand="SELECT Participant.ParticipantID, Participant.FirstName, Participant.MiddleInitial, Participant.LastName, Participant.Suffix, Participant.PhoneNumber, Participant.Email, Participant.EmergencyContactFullName, Participant.EmergencyContactPhoneNumber, Participant.StartDate, FallDetails.CallDate, FallCalls.Falls, FallDetails.InterviewerFirstName, FallDetails.InterviewerLastName, FallDetails.FallTime, FallDetails.FallDescription, FallDetails.FallLocation, FallDetails.Injured, FallDetails.InjuryDesc, FallDetails.UsingAssistiveDevice, FallDetails.MedicationChange, FallDetails.MedChangeDesc, FallDetails.FallMonth FROM Participant INNER JOIN FallCalls ON Participant.ParticipantID = FallCalls.ParticipantID INNER JOIN FallDetails ON FallCalls.ParticipantID = FallDetails.ParticipantID AND FallCalls.CallDate = FallDetails.CallDate"></asp:SqlDataSource>
    </form>
    </body>
</html>
