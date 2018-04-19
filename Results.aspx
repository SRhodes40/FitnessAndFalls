<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Results.aspx.cs" Inherits="Results" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Results</title>
     <link rel="stylesheet" href="Results.css" />
</head>
<body>
    <h1>Results</h1>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Label ID="participantLbl" runat="server" Text="Enter Participant ID:"></asp:Label>
            &nbsp;
            <asp:TextBox ID="participantTxt" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="resultsBtn" runat="server" Text="Search Participant" OnClick="resultsBtn_Click" />

        &nbsp;<br />
            <br />
            <asp:Label ID="fallddResultsLbl" runat="server" Text="Fall Details and Fall Diary Results:"></asp:Label>
            <br />
&nbsp;<asp:DataList ID="participantDL" runat="server" Visible="False" DataKeyField="ParticipantID" OnSelectedIndexChanged="participantDL_SelectedIndexChanged" GridLines="Both"   >
            <ItemTemplate>
                Participant ID:
                <asp:Label ID="ParticipantIDLabel" runat="server" Text='<%# Eval("ParticipantID") %>' />
                <br />
                
                Interviewer First Name:
                <asp:Label ID="InterviewerFirstNameLabel" runat="server" Text='<%# Eval("InterviewerFirstName") %>' />
                <br />
                Interviewer Last Name:
                <asp:Label ID="InterviewerLastNameLabel" runat="server" Text='<%# Eval("InterviewerLastName") %>' />
                <br />
                Call Date:
                <asp:Label ID="CallDateLabel" runat="server" Text='<%# Eval("CallDate") %>' />
                <br />
                Fall Time:
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
                Fall Month:
                <asp:Label ID="FallMonthLabel" runat="server" Text='<%# Eval("FallMonth") %>' />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
            <asp:GridView ID="fallddgv" runat="server" AutoGenerateColumns="False" DataSourceID="detailsddb" AllowPaging="True" AllowSorting="True" DataKeyNames="ParticipantID,CallDate">
                <Columns>
                    <asp:BoundField DataField="ParticipantID" HeaderText="Participant ID" ReadOnly="True" SortExpression="ParticipantID" />                   
                    <asp:BoundField DataField="InterviewerFirstName" HeaderText="Interviewer First Name" SortExpression="InterviewerFirstName" />
                    <asp:BoundField DataField="InterviewerLastName" HeaderText="Interviewer Last Name" SortExpression="InterviewerLastName" />
                    <asp:BoundField DataField="CallDate" HeaderText="Call Date" SortExpression="CallDate" ReadOnly="True" />
                    <asp:BoundField DataField="FallTime" HeaderText="Fall Time" SortExpression="FallTime" />
                    <asp:BoundField DataField="FallDescription" HeaderText="Fall Description" SortExpression="FallDescription" />
                    <asp:BoundField DataField="FallLocation" HeaderText="Fall Location" SortExpression="FallLocation" />
                    <asp:BoundField DataField="Injured" HeaderText="Injured?" SortExpression="Injured" />
                    <asp:BoundField DataField="InjuryDesc" HeaderText="Injury Description" SortExpression="InjuryDesc" />
                    <asp:BoundField DataField="UsingAssistiveDevice" HeaderText="Using Assistive Device?" SortExpression="UsingAssistiveDevice" />
                    <asp:BoundField DataField="MedicationChange" HeaderText="Medication Change?" SortExpression="MedicationChange" />
                    <asp:BoundField DataField="MedChangeDesc" HeaderText="Medication Change Description" SortExpression="MedChangeDesc" />
                    <asp:BoundField DataField="FallMonth" HeaderText="Fall Month" SortExpression="FallMonth" />
                </Columns>
            </asp:GridView>

        </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FitnessAndFallsConnectionString2 %>" SelectCommand="SELECT FallDetails.ParticipantID, FallDetails.CallDate, FallDetails.InterviewerFirstName, FallDetails.InterviewerLastName, FallDetails.FallTime, FallDetails.FallDescription, FallDetails.FallLocation, FallDetails.Injured, FallDetails.InjuryDesc, FallDetails.UsingAssistiveDevice, FallDetails.MedicationChange, FallDetails.MedChangeDesc, FallDetails.FallMonth, FallDiary.ContactParticipant, FallDiary.FallenPastMonth, FallDiary.HowManyFallsLastMonth FROM FallDiary INNER JOIN FallDetails ON FallDiary.ParticipantID = FallDetails.ParticipantID AND FallDiary.InterviewDate = FallDetails.CallDate"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <br />
        <br />
    <asp:Button ID="menuBtn" runat="server" OnClick="menuBtn_Click" Text="Main Menu" />
        <asp:SqlDataSource ID="detailsddb" runat="server" ConnectionString="<%$ ConnectionStrings:FitnessAndFallsConnectionString %>" SelectCommand="SELECT FallDetails.* FROM FallDetails"></asp:SqlDataSource>
    </form>
    </body>
</html>
