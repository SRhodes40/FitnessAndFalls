<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Results.aspx.cs" Inherits="Results" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Results</title>
    <link rel="stylesheet" href="Results.css" />
    <link rel="shortcut icon" href="images/faviconFinal.png" type="image/x-icon" />
</head>
<body>
    <p id="headerText">Results</p><hr />
    <div class="container">
        <form id="form1" runat="server">
            <div class="headerButtons">
                <%--<asp:Label ID="participantLbl" runat="server" Text="Enter Participant ID:"></asp:Label>&nbsp;--%>
                <div id="searchContainer">
                    <asp:TextBox ID="participantTxt" class="searchBox" placeholder="Enter Participant ID..." runat="server"></asp:TextBox>
                    <asp:Button ID="resultsBtn" class="searchButton" runat="server" Text="Search" OnClick="resultsBtn_Click" />
                </div>
                <asp:Button ID="menuBtn" class="menuButton" runat="server" OnClick="menuBtn_Click" Text="Main Menu" />
            </div>
            <div class="searchResultsContainer">
                <div class="resultsHeader" >
                    <asp:Label ID="fallddResultsLbl" runat="server" Text="Fall Details and Fall Diary Results:"></asp:Label>
                </div>
                <asp:DataList ID="participantDL" runat="server" Visible="False" DataKeyField="ParticipantID" OnSelectedIndexChanged="participantDL_SelectedIndexChanged" GridLines="Both" RepeatColumns="5"   >

                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
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
            </div>
            <asp:GridView ID="fallddgv" runat="server" AutoGenerateColumns="False" DataSourceID="detailsddb" AllowPaging="True" AllowSorting="True">
                <Columns>
                    <asp:BoundField DataField="Suffix" HeaderText="Suffix" SortExpression="Suffix" />                
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                    <asp:BoundField DataField="MiddleInitial" HeaderText="Middle Initial" SortExpression="MiddleInitial" />
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                    <asp:BoundField DataField="ParticipantID" HeaderText="Participant ID" SortExpression="ParticipantID" />
                    <asp:BoundField DataField="CallDate" HeaderText="Call Date" SortExpression="CallDate" />
                    <asp:BoundField DataField="InterviewerFirstName" HeaderText="Interviewer First Name" SortExpression="InterviewerFirstName" />
                    <asp:BoundField DataField="InterviewerLastName" HeaderText="Interviewer Last Name" SortExpression="InterviewerLastName" />
                    <asp:BoundField DataField="FallTime" HeaderText="Fall Time" SortExpression="FallTime" />
                    <asp:BoundField DataField="FallDescription" HeaderText="Fall Description" SortExpression="FallDescription" />
                    <asp:BoundField DataField="FallLocation" HeaderText="Fall Location" SortExpression="FallLocation" />
                    <asp:BoundField DataField="Injured" HeaderText="Injured?" SortExpression="Injured" />
                    <asp:BoundField DataField="InjuryDesc" HeaderText="Injury Description" SortExpression="InjuryDesc" />
                    <asp:BoundField DataField="UsingAssistiveDevice" HeaderText="Using Assistivee Device?" SortExpression="UsingAssistiveDevice" />
                    <asp:BoundField DataField="MedicationChange" HeaderText="Medication Change?" SortExpression="MedicationChange" />
                    <asp:BoundField DataField="MedChangeDesc" HeaderText="Medication Change Description" SortExpression="MedChangeDesc" />
                    <asp:BoundField DataField="FallMonth" HeaderText="Fall Month" SortExpression="FallMonth" />
                </Columns>
            </asp:GridView>
            <asp:Button ID="excelBtn" class="exportButton" runat="server" Text="Export to Excel" OnClick="excelBtn_Click" />

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FitnessAndFallsConnectionString2 %>" SelectCommand="SELECT FallDetails.ParticipantID, FallDetails.CallDate, FallDetails.InterviewerFirstName, FallDetails.InterviewerLastName, FallDetails.FallTime, FallDetails.FallDescription, FallDetails.FallLocation, FallDetails.Injured, FallDetails.InjuryDesc, FallDetails.UsingAssistiveDevice, FallDetails.MedicationChange, FallDetails.MedChangeDesc, FallDetails.FallMonth, FallDiary.ContactParticipant, FallDiary.FallenPastMonth, FallDiary.HowManyFallsLastMonth FROM FallDiary INNER JOIN FallDetails ON FallDiary.ParticipantID = FallDetails.ParticipantID AND FallDiary.InterviewDate = FallDetails.CallDate"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

            <asp:SqlDataSource ID="detailsddb" runat="server" ConnectionString="<%$ ConnectionStrings:FitnessAndFallsConnectionString %>" SelectCommand="SELECT Participant.Suffix, Participant.FirstName, Participant.MiddleInitial, Participant.LastName, FallDetails.CallDate, FallDetails.InterviewerFirstName, FallDetails.InterviewerLastName, FallDetails.FallTime, FallDetails.FallDescription, FallDetails.FallLocation, FallDetails.Injured, FallDetails.InjuryDesc, FallDetails.UsingAssistiveDevice, FallDetails.MedicationChange, FallDetails.MedChangeDesc, FallDetails.FallMonth, FallDetails.ParticipantID FROM FallDetails INNER JOIN Participant ON FallDetails.ParticipantID = Participant.ParticipantID"></asp:SqlDataSource>
        </form>
    </div>
</body>
</html>
