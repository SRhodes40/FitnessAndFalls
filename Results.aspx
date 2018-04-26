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
            <asp:Button ID="excelBtn" class="exportButton" runat="server" Text="Export Fall Details to Excel" OnClick="excelBtn_Click" />

            <br />
            <asp:GridView ID="annualdatagGV" runat="server" AutoGenerateColumns="False" DataKeyNames="participantID" DataSourceID="datacollds" OnSelectedIndexChanged="annualdatagGV_SelectedIndexChanged" OnPageIndexChanging="annualdatagGV_PageIndexChanging">
                <Columns>
                    <asp:BoundField DataField="participantID" HeaderText="Participant ID" ReadOnly="True" SortExpression="participantID" />
                    <asp:BoundField DataField="participantLastName" HeaderText="Participant Last Name" SortExpression="participantLastName" />
                    <asp:BoundField DataField="participantFirstName" HeaderText="Participant First Name" SortExpression="participantFirstName" />
                    <asp:BoundField DataField="participantPhoneNumber" HeaderText="Participant Phone Number" SortExpression="participantPhoneNumber" />
                    <asp:BoundField DataField="participantEMail" HeaderText="Participant EMail" SortExpression="participantEMail" />
                    <asp:BoundField DataField="emergencycontactnumber" HeaderText="Emergency Contact Number" SortExpression="emergencycontactnumber" />
                    <asp:BoundField DataField="InvestigatorLastName" HeaderText="Investigator Last Name" SortExpression="InvestigatorLastName" />
                    <asp:BoundField DataField="InvertigatorFirstName" HeaderText="Investigator First Name" SortExpression="InvertigatorFirstName" />
                    <asp:BoundField DataField="TestLocation" HeaderText="Test Location" SortExpression="TestLocation" />
                    <asp:BoundField DataField="readform" HeaderText="Read Form" SortExpression="readform" />
                    <asp:BoundField DataField="questionopportunity" HeaderText="Question Opportunity" SortExpression="questionopportunity" />
                    <asp:BoundField DataField="voluntarilyagree" HeaderText="Voluntarily Agree" SortExpression="voluntarilyagree" />
                    <asp:BoundField DataField="notgivinguprights" HeaderText="Not Giving Up Rights" SortExpression="notgivinguprights" />
                    <asp:BoundField DataField="baselinetest" HeaderText="Baseline Test" SortExpression="baselinetest" />
                    <asp:BoundField DataField="knownHeathProblems" HeaderText="Known Heath Problems" SortExpression="knownHeathProblems" />
                    <asp:BoundField DataField="twoDaysAWeek" HeaderText="Two Days A Week" SortExpression="twoDaysAWeek" />
                    <asp:BoundField DataField="difficultyStanding" HeaderText="Difficulty Standing" SortExpression="difficultyStanding" />
                    <asp:BoundField DataField="balanceDisorder" HeaderText="Balance Disorder" SortExpression="balanceDisorder" />
                    <asp:BoundField DataField="dizzinessChestTightness" HeaderText="Dizziness Chest Tightness" SortExpression="dizzinessChestTightness" />
                    <asp:BoundField DataField="heartDisease" HeaderText="Heart Disease" SortExpression="heartDisease" />
                    <asp:BoundField DataField="heartMurmur" HeaderText="Heart Murmur" SortExpression="heartMurmur" />
                    <asp:BoundField DataField="chestPain" HeaderText="Chest Pain" SortExpression="chestPain" />
                    <asp:BoundField DataField="palpitations" HeaderText="Palpitations" SortExpression="palpitations" />
                    <asp:BoundField DataField="heartAttack" HeaderText="Heart Attack" SortExpression="heartAttack" />
                    <asp:BoundField DataField="noDiagnosed" HeaderText="No Diagnosed" SortExpression="noDiagnosed" />
                    <asp:BoundField DataField="highBloodPressure" HeaderText="High Blood Pressure" SortExpression="highBloodPressure" />
                    <asp:BoundField DataField="medsMedicalConditon" HeaderText="Meds Medical Conditon" SortExpression="medsMedicalConditon" />
                    <asp:BoundField DataField="orthopedicCardiacSurgeries" HeaderText="Orthopedic Cardiac Surgeries" SortExpression="orthopedicCardiacSurgeries" />
                    <asp:BoundField DataField="ciDementia" HeaderText="Dementia" SortExpression="ciDementia" />
                    <asp:BoundField DataField="yesExplain" HeaderText="Explain" SortExpression="yesExplain" />
                    <asp:BoundField DataField="wheelchair" HeaderText="Wheel Chair" SortExpression="wheelchair" />
                    <asp:BoundField DataField="cane" HeaderText="Cane" SortExpression="cane" />
                    <asp:BoundField DataField="walker" HeaderText="Walker" SortExpression="walker" />
                    <asp:BoundField DataField="noDevices" HeaderText="Devices" SortExpression="noDevices" />
                    <asp:BoundField DataField="devicesExplain" HeaderText="Devices Explain" SortExpression="devicesExplain" />
                    <asp:BoundField DataField="medList" HeaderText="Med List" SortExpression="medList" />
                    <asp:BoundField DataField="fallInPastSixMonths" HeaderText="Fall In Past Six Months" SortExpression="fallInPastSixMonths" />
                    <asp:BoundField DataField="fallValue" HeaderText="Fall Value" SortExpression="fallValue" />
                    <asp:BoundField DataField="fallInjury" HeaderText="Fall Injury" SortExpression="fallInjury" />
                    <asp:BoundField DataField="injuryExplain" HeaderText="Injury Explain" SortExpression="injuryExplain" />
                    <asp:BoundField DataField="personalNeeds" HeaderText="Personal Needs" SortExpression="personalNeeds" />
                    <asp:BoundField DataField="heathProblemsDress" HeaderText="Health Problems Dress" SortExpression="heathProblemsDress" />
                    <asp:BoundField DataField="chronicPainDress" HeaderText="Chronic Pain Dress" SortExpression="chronicPainDress" />
                    <asp:BoundField DataField="lackStrengthDress" HeaderText="Lack Strength Dress" SortExpression="lackStrengthDress" />
                    <asp:BoundField DataField="lackFelxibilityDress" HeaderText="Lack Felxibility Dress" SortExpression="lackFelxibilityDress" />
                    <asp:BoundField DataField="otherDress" HeaderText="Other Dress" SortExpression="otherDress" />
                    <asp:BoundField DataField="otherExplainDress" HeaderText="Other Explain Dress" SortExpression="otherExplainDress" />
                    <asp:BoundField DataField="batheYourself" HeaderText="Bathe Yourself" SortExpression="batheYourself" />
                    <asp:BoundField DataField="healthProblemsBathe" HeaderText="Health Problems Bathe" SortExpression="healthProblemsBathe" />
                    <asp:BoundField DataField="chronicPainBathe" HeaderText="Chronic Pain Bathe" SortExpression="chronicPainBathe" />
                    <asp:BoundField DataField="lackStrengthBathe" HeaderText="Lack Strength Bathe" SortExpression="lackStrengthBathe" />
                    <asp:BoundField DataField="lackFelxibilityBathe" HeaderText="Lack Felxibility Bathe" SortExpression="lackFelxibilityBathe" />
                    <asp:BoundField DataField="otherBathe" HeaderText="Other Bathe" SortExpression="otherBathe" />
                    <asp:BoundField DataField="otherExplainBathe" HeaderText="Other Explain Bathe" SortExpression="otherExplainBathe" />
                    <asp:BoundField DataField="climbStairs" HeaderText="Climb Stairs" SortExpression="climbStairs" />
                    <asp:BoundField DataField="healthProblemsStairs" HeaderText="Health Problems Stairs" SortExpression="healthProblemsStairs" />
                    <asp:BoundField DataField="chronicPainStairs" HeaderText="Chronic Pain Stairs" SortExpression="chronicPainStairs" />
                    <asp:BoundField DataField="lackStrengthStairs" HeaderText="Lack Strength Stairs" SortExpression="lackStrengthStairs" />
                    <asp:BoundField DataField="lackFelxibilityStairs" HeaderText="Lack Felxibility Stairs" SortExpression="lackFelxibilityStairs" />
                    <asp:BoundField DataField="otherStairs" HeaderText="other Stairs" SortExpression="otherStairs" />
                    <asp:BoundField DataField="otherExplainStairs" HeaderText="other Explain Stairs" SortExpression="otherExplainStairs" />
                    <asp:BoundField DataField="walkOutsideTwoBlocks" HeaderText="walk Outside Two Blocks" SortExpression="walkOutsideTwoBlocks" />
                    <asp:BoundField DataField="healthProblemsOutside" HeaderText="health Problems Outside" SortExpression="healthProblemsOutside" />
                    <asp:BoundField DataField="chronicPainOutside" HeaderText="chronic Pain Outside" SortExpression="chronicPainOutside" />
                    <asp:BoundField DataField="lackFelxibilityOutside" HeaderText="lack Felxibility Outside" SortExpression="lackFelxibilityOutside" />
                    <asp:BoundField DataField="otherOutside" HeaderText="other Outside" SortExpression="otherOutside" />
                    <asp:BoundField DataField="otherExplainOutside" HeaderText="other Explain Outside" SortExpression="otherExplainOutside" />
                    <asp:BoundField DataField="householdActivities" HeaderText="house hold Activities" SortExpression="householdActivities" />
                    <asp:BoundField DataField="healthProblemsHouseHold" HeaderText="health Problems House Hold" SortExpression="healthProblemsHouseHold" />
                    <asp:BoundField DataField="chronicPainHouseHold" HeaderText="chronic Pain House Hold" SortExpression="chronicPainHouseHold" />
                    <asp:BoundField DataField="lackStrengthHouseHold" HeaderText="lack Strength House Hold" SortExpression="lackStrengthHouseHold" />
                    <asp:BoundField DataField="lackFelxibilityHouseHold" HeaderText="lack Felxibility HouseHold" SortExpression="lackFelxibilityHouseHold" />
                    <asp:BoundField DataField="otherHouseHold" HeaderText="other House Hold" SortExpression="otherHouseHold" />
                    <asp:BoundField DataField="otherExplainHouseHold" HeaderText="other Explain House Hold" SortExpression="otherExplainHouseHold" />
                    <asp:BoundField DataField="gorceriesorClothes" HeaderText="gorceries or Clothes" SortExpression="gorceriesorClothes" />
                    <asp:BoundField DataField="healthProblemsGorceries" HeaderText="health Problems Gorceries" SortExpression="healthProblemsGorceries" />
                    <asp:BoundField DataField="chronicPainGorceries" HeaderText="chronic Pain Gorceries" SortExpression="chronicPainGorceries" />
                    <asp:BoundField DataField="lackStrengthGorceries" HeaderText="lack Strength Gorceries" SortExpression="lackStrengthGorceries" />
                    <asp:BoundField DataField="lackFelxibilityGorceries" HeaderText="lack Flexibility Gorceries" SortExpression="lackFelxibilityGorceries" />
                    <asp:BoundField DataField="otherGorceries" HeaderText="other Gorceries" SortExpression="otherGorceries" />
                    <asp:BoundField DataField="otherExplainGorceries" HeaderText="other Explain Gorceries" SortExpression="otherExplainGorceries" />
                    <asp:BoundField DataField="walkHalfMile" HeaderText="walk Half Mile" SortExpression="walkHalfMile" />
                    <asp:BoundField DataField="healthProblemsHalfMile" HeaderText="health Problems Half Mile" SortExpression="healthProblemsHalfMile" />
                    <asp:BoundField DataField="chronicPainHalfMile" HeaderText="chronic PainHalf Mile" SortExpression="chronicPainHalfMile" />
                    <asp:BoundField DataField="lackStrengthHalfMile" HeaderText="lack Strength Half Mile" SortExpression="lackStrengthHalfMile" />
                    <asp:BoundField DataField="lackFlexHalfMile" HeaderText="lack Flex Half Mile" SortExpression="lackFlexHalfMile" />
                    <asp:BoundField DataField="otherHalfMile" HeaderText="other Half Mile" SortExpression="otherHalfMile" />
                    <asp:BoundField DataField="otherExplainHalfMile" HeaderText="other Explain Half Mile" SortExpression="otherExplainHalfMile" />
                    <asp:BoundField DataField="walkOneMile" HeaderText="walk One Mile" SortExpression="walkOneMile" />
                    <asp:BoundField DataField="healthProblemsMile" HeaderText="health Problems Mile" SortExpression="healthProblemsMile" />
                    <asp:BoundField DataField="chronicPainMile" HeaderText="chronic Pain Mile" SortExpression="chronicPainMile" />
                    <asp:BoundField DataField="lackStrengthMile" HeaderText="lack Strength Mile" SortExpression="lackStrengthMile" />
                    <asp:BoundField DataField="lackFelxibilityMile" HeaderText="lack Felxibility Mile" SortExpression="lackFelxibilityMile" />
                    <asp:BoundField DataField="otherMile" HeaderText="other Mile" SortExpression="otherMile" />
                    <asp:BoundField DataField="otherExplainMile" HeaderText="other Explain Mile" SortExpression="otherExplainMile" />
                    <asp:BoundField DataField="tenPounds" HeaderText="ten Pounds" SortExpression="tenPounds" />
                    <asp:BoundField DataField="healthProblemsTen" HeaderText="health Problems Ten" SortExpression="healthProblemsTen" />
                    <asp:BoundField DataField="chronicPainTen" HeaderText="chronic Pain Ten" SortExpression="chronicPainTen" />
                    <asp:BoundField DataField="lackStrengthTen" HeaderText="lack Strength Ten" SortExpression="lackStrengthTen" />
                    <asp:BoundField DataField="lackFelxibilityTen" HeaderText="lack Felxibility Ten" SortExpression="lackFelxibilityTen" />
                    <asp:BoundField DataField="otherTen" HeaderText="other Ten" SortExpression="otherTen" />
                    <asp:BoundField DataField="otherExplainTen" HeaderText="other Explain Ten" SortExpression="otherExplainTen" />
                    <asp:BoundField DataField="twentyfivePounts" HeaderText="twenty five Pounts" SortExpression="twentyfivePounts" />
                    <asp:BoundField DataField="healthProblems25" HeaderText="health Problems 25" SortExpression="healthProblems25" />
                    <asp:BoundField DataField="chronicPain25" HeaderText="chronic Pain 25" SortExpression="chronicPain25" />
                    <asp:BoundField DataField="lackStrength25" HeaderText="lack Strength 25" SortExpression="lackStrength25" />
                    <asp:BoundField DataField="lackFelxibility25" HeaderText="lack Felxibility 25" SortExpression="lackFelxibility25" />
                    <asp:BoundField DataField="other25" HeaderText="other 25" SortExpression="other25" />
                    <asp:BoundField DataField="otherExplain25" HeaderText="other Explain 25" SortExpression="otherExplain25" />
                    <asp:BoundField DataField="heavyChores" HeaderText="heavy Chores" SortExpression="heavyChores" />
                    <asp:BoundField DataField="healthProblemsChores" HeaderText="health Problems Chores" SortExpression="healthProblemsChores" />
                    <asp:BoundField DataField="chronicPainChores" HeaderText="chronic Pain Chores" SortExpression="chronicPainChores" />
                    <asp:BoundField DataField="lackStrengthChores" HeaderText="lack Strength Chores" SortExpression="lackStrengthChores" />
                    <asp:BoundField DataField="lackFelxibilityChores" HeaderText="lack Felxibility Chores" SortExpression="lackFelxibilityChores" />
                    <asp:BoundField DataField="otherChores" HeaderText="other Chores" SortExpression="otherChores" />
                    <asp:BoundField DataField="otherExplainChores" HeaderText="other Explain Chores" SortExpression="otherExplainChores" />
                    <asp:BoundField DataField="strenuousActivites" HeaderText="strenuous Activites" SortExpression="strenuousActivites" />
                    <asp:BoundField DataField="healthProblemsActivites" HeaderText="health Problems Activites" SortExpression="healthProblemsActivites" />
                    <asp:BoundField DataField="chronicPainActivites" HeaderText="chronic Pain Activites" SortExpression="chronicPainActivites" />
                    <asp:BoundField DataField="lackStrengthActivities" HeaderText="lack Strength Activities" SortExpression="lackStrengthActivities" />
                    <asp:BoundField DataField="lackFelxibilityActivities" HeaderText="lack Felxibility Activities" SortExpression="lackFelxibilityActivities" />
                    <asp:BoundField DataField="otherActivities" HeaderText="othe rActivities" SortExpression="otherActivities" />
                    <asp:BoundField DataField="otherExplainActivities" HeaderText="other Explain Activities" SortExpression="otherExplainActivities" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="householdIncome" HeaderText="household Income" SortExpression="householdIncome" />
                    <asp:BoundField DataField="raceEthnicity" HeaderText="race Ethnicity" SortExpression="raceEthnicity" />
                    <asp:BoundField DataField="restingPulse" HeaderText="resting Pulse" SortExpression="restingPulse" />
                    <asp:BoundField DataField="restingSpO2" HeaderText="resting SpO2" SortExpression="restingSpO2" />
                    <asp:BoundField DataField="height" HeaderText="height" SortExpression="height" />
                    <asp:BoundField DataField="rightLegLenght" HeaderText="righ tLeg Lenght" SortExpression="rightLegLenght" />
                    <asp:BoundField DataField="leftLegLength" HeaderText="left Leg Length" SortExpression="leftLegLength" />
                    <asp:BoundField DataField="Weightkg" HeaderText="Weight kg" SortExpression="Weightkg" />
                    <asp:BoundField DataField="waistCirc" HeaderText="waist Circ" SortExpression="waistCirc" />
                    <asp:BoundField DataField="hipCirc" HeaderText="hip Circ" SortExpression="hipCirc" />
                    <asp:BoundField DataField="DomHand" HeaderText="Dom Hand" SortExpression="DomHand" />
                    <asp:BoundField DataField="gripStrength" HeaderText="grip Strength" SortExpression="gripStrength" />
                    <asp:BoundField DataField="chairStand" HeaderText="chair Stand" SortExpression="chairStand" />
                    <asp:BoundField DataField="StandNum" HeaderText="Stand Num" SortExpression="StandNum" />
                    <asp:BoundField DataField="SitNum" HeaderText="Sit Num" SortExpression="SitNum" />
                    <asp:BoundField DataField="AverageStand" HeaderText="Average Stand" SortExpression="AverageStand" />
                    <asp:BoundField DataField="AverageSit" HeaderText="Average Sit" SortExpression="AverageSit" />
                    <asp:BoundField DataField="StandSD" HeaderText="Stand SD" SortExpression="StandSD" />
                    <asp:BoundField DataField="SitSD" HeaderText="Sit SD" SortExpression="SitSD" />
                    <asp:BoundField DataField="upandgoComplete" HeaderText="up and go Complete" SortExpression="upandgoComplete" />
                    <asp:BoundField DataField="totalTime" HeaderText="total Time" SortExpression="totalTime" />
                    <asp:BoundField DataField="upStandTime" HeaderText="up Stand Time" SortExpression="upStandTime" />
                    <asp:BoundField DataField="upSitTime" HeaderText="up Sit Time" SortExpression="upSitTime" />
                    <asp:BoundField DataField="gaitSpeed1" HeaderText="gait Speed1" SortExpression="gaitSpeed1" />
                    <asp:BoundField DataField="gaitSpeed2" HeaderText="gait Speed2" SortExpression="gaitSpeed2" />
                    <asp:BoundField DataField="turnDuration" HeaderText="turn Duration" SortExpression="turnDuration" />
                    <asp:BoundField DataField="ableToComplete10Lift" HeaderText="able To Complete 10 Lift" SortExpression="ableToComplete10Lift" />
                    <asp:BoundField DataField="TenPoundLiftTime" HeaderText="Ten Pound Lift Time" SortExpression="TenPoundLiftTime" />
                    <asp:BoundField DataField="ableToComplete25Lift" HeaderText="able To Complete 25 Lift" SortExpression="ableToComplete25Lift" />
                    <asp:BoundField DataField="TwentyfivePoundLiftTime" HeaderText="Twenty five Pound Lift Time" SortExpression="TwentyfivePoundLiftTime" />
                    <asp:BoundField DataField="complete400Meters" HeaderText="complete 400 Meters" SortExpression="complete400Meters" />
                    <asp:BoundField DataField="Courselength" HeaderText="Course length" SortExpression="Courselength" />
                    <asp:BoundField DataField="FourHundredMeterTime" HeaderText="Four Hundred Meter Time" SortExpression="FourHundredMeterTime" />
                    <asp:BoundField DataField="gaitSpdAvg" HeaderText="gait Spd Avg" SortExpression="gaitSpdAvg" />
                    <asp:BoundField DataField="GaitSpdSD" HeaderText="Gait Spd SD" SortExpression="GaitSpdSD" />
                    <asp:BoundField DataField="CadenceAge" HeaderText="Cadence Age" SortExpression="CadenceAge" />
                    <asp:BoundField DataField="CadenceSD" HeaderText="Cadence SD" SortExpression="CadenceSD" />
                    <asp:BoundField DataField="TurnAvg" HeaderText="Turn Avg" SortExpression="TurnAvg" />
                    <asp:BoundField DataField="TurnSD" HeaderText="Turn SD" SortExpression="TurnSD" />
                    <asp:BoundField DataField="leftTurnAvg" HeaderText="left Turn Avg" SortExpression="leftTurnAvg" />
                    <asp:BoundField DataField="leftTurnSD" HeaderText="left Turn SD" SortExpression="leftTurnSD" />
                    <asp:BoundField DataField="rightTurnAvg" HeaderText="right Turn Avg" SortExpression="rightTurnAvg" />
                    <asp:BoundField DataField="rightTurnSD" HeaderText="right Turn SD" SortExpression="rightTurnSD" />
                    <asp:BoundField DataField="ExcersizePulseRate" HeaderText="Excersize Pulse Rate" SortExpression="ExcersizePulseRate" />
                    <asp:BoundField DataField="ExcersizeSpO2" HeaderText="Excersize SpO2" SortExpression="ExcersizeSpO2" />
                    <asp:BoundField DataField="leftKneeReachDistance" HeaderText="left Knee Reach Distance" SortExpression="leftKneeReachDistance" />
                    <asp:BoundField DataField="rightKneeReachDistance" HeaderText="right KneeReach Distance" SortExpression="rightKneeReachDistance" />
                    <asp:BoundField DataField="ParticipantCompleteAllTasks" HeaderText="Participant Complete All Tasks" SortExpression="ParticipantCompleteAllTasks" />
                    <asp:BoundField DataField="testErrorsIfAny" HeaderText="test Errors If Any" SortExpression="testErrorsIfAny" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="datacollds" runat="server" ConnectionString="<%$ ConnectionStrings:FitnessAndFallsConnectionString %>" SelectCommand="SELECT * FROM [AnnualDataCollection]"></asp:SqlDataSource>
            <br />
            <asp:Button ID="excelDataBtn" class="exportButton" runat="server" Text="Export Annual Data Collection to Excel" OnClick="excelDataBtn_Click"  />

            <br />

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FitnessAndFallsConnectionString2 %>" SelectCommand="SELECT FallDetails.ParticipantID, FallDetails.CallDate, FallDetails.InterviewerFirstName, FallDetails.InterviewerLastName, FallDetails.FallTime, FallDetails.FallDescription, FallDetails.FallLocation, FallDetails.Injured, FallDetails.InjuryDesc, FallDetails.UsingAssistiveDevice, FallDetails.MedicationChange, FallDetails.MedChangeDesc, FallDetails.FallMonth, FallDiary.ContactParticipant, FallDiary.FallenPastMonth, FallDiary.HowManyFallsLastMonth FROM FallDiary INNER JOIN FallDetails ON FallDiary.ParticipantID = FallDetails.ParticipantID AND FallDiary.InterviewDate = FallDetails.CallDate"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

            <asp:SqlDataSource ID="detailsddb" runat="server" ConnectionString="<%$ ConnectionStrings:FitnessAndFallsConnectionString %>" SelectCommand="SELECT Participant.Suffix, Participant.FirstName, Participant.MiddleInitial, Participant.LastName, FallDetails.CallDate, FallDetails.InterviewerFirstName, FallDetails.InterviewerLastName, FallDetails.FallTime, FallDetails.FallDescription, FallDetails.FallLocation, FallDetails.Injured, FallDetails.InjuryDesc, FallDetails.UsingAssistiveDevice, FallDetails.MedicationChange, FallDetails.MedChangeDesc, FallDetails.FallMonth, FallDetails.ParticipantID FROM FallDetails INNER JOIN Participant ON FallDetails.ParticipantID = Participant.ParticipantID"></asp:SqlDataSource>
        </form>
    </div>
</body>
</html>
