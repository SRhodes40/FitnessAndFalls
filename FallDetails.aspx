<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FallDetails.aspx.cs" Inherits="FallDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="fallDiary.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="confirmation">
                <p class="txtTitle">Fall Details</p>
                <p id="definition">Definition of a fall: An event which results in a person coming 
                    to rest unintentionally on the ground or other lower level, not 
                    as a result of a major intrinsic event (such as a stroke) or 
                    overwhelming hazard. </p><br />

                <p class="txtQuestions">Last Name of Interviewer <span style="color: rgb(219, 79, 73)">*</span></p><br />
                <asp:TextBox class="txtMargin" ID="txtInterviewerLastName" runat="server"></asp:TextBox>

                <p class="txtQuestions">First Name of Interviewer <span style="color: rgb(219, 79, 73)">*</span></p><br />
                <asp:TextBox class="txtMargin" ID="txtInterviewerFirstName" runat="server"></asp:TextBox>

                <p class="txtQuestions">Participant ID <span style="color: rgb(219, 79, 73)">*</span></p>
                <p style="font-size: .8em;">&nbsp;Please Enter a Whole Number (eg., 29)</p><br />
                <asp:TextBox class="txtMargin" ID="txtParticipantID" runat="server"></asp:TextBox>

                <p class="txtQuestions">Interview Date *MUST MATCH CALL DATE ON PREVIOUS FORM!*&nbsp; (YYYY-MM-DD) <span style="color: rgb(219, 79, 73)">*</span></p><br />
                <asp:TextBox class="txtMargin" ID="txtInterviewDate" runat="server"></asp:TextBox>

                <p class="txtQuestions">In what month did the fall occur? <span style="color: rgb(219, 79, 73)">*</span></p><br />
                <asp:RadioButtonList class="txtMargin" ID="rblMonthOfFall" runat="server">
                    <asp:ListItem Text="January" Value ="1" />
                    <asp:ListItem Text="February" Value ="2" />
                    <asp:ListItem Text="March" Value ="3" />
                    <asp:ListItem Text="April" Value ="4" />
                    <asp:ListItem Text="May" Value ="5" />
                    <asp:ListItem Text="June" Value ="6" />
                    <asp:ListItem Text="July" Value ="7" />
                    <asp:ListItem Text="August" Value ="8" />
                    <asp:ListItem Text="September" Value ="9" />
                    <asp:ListItem Text="October" Value ="10" />
                    <asp:ListItem Text="November" Value ="11" />
                    <asp:ListItem Text="December" Value ="12" />
                </asp:RadioButtonList>
        
                <p class="txtQuestions">What time of day did the fall occur? <span style="color: rgb(219, 79, 73)">*</span></p><br />
                <asp:RadioButtonList class="txtMargin" ID="rblTimeOfDay" runat="server">
                    <asp:ListItem Text="Don't Remember" Value ="0" />
                    <asp:ListItem Text="6am-2pm" Value ="1" />
                    <asp:ListItem Text="2pm-10pm" Value ="2" />
                    <asp:ListItem Text="10pm-6am" Value ="3" />
                </asp:RadioButtonList>

        
                <p class="txtQuestions">Please describe the fall in your own words <span style="color: rgb(219, 79, 73)">*</span></p><br />
                <asp:TextBox class="txtMargin" ID="txtDescribeFall" runat="server"></asp:TextBox><br />

        
                <p class="txtQuestions">Where were you when you fell? <span style="color: rgb(219, 79, 73)">*</span></p><br />
                <asp:TextBox class="txtMargin" ID="txtFallLocation" runat="server"></asp:TextBox><br />

              

                <p class="txtQuestions">Were you injured as a result of the fall?</p><br />
                <asp:RadioButtonList class="txtMargin" ID="rblResultOfFall" runat="server">
                    <asp:ListItem Text="No" Value ="0" />
                    <asp:ListItem Text="Yes" Value ="1" />
                </asp:RadioButtonList>

                <p class="txtQuestions">If yes, please describe the injury?</p><br />
                <asp:TextBox class="txtMargin" ID="txtDescribeInjury" runat="server"></asp:TextBox>

                <p class="txtQuestions">Were you using an assistive device when you fell?</p><br />
                <asp:RadioButtonList class="txtMargin" ID="rblAssistiveDevice" runat="server">
                    <asp:ListItem Text="No" Value ="0" />
                    <asp:ListItem Text="Yes" Value ="1" />
                </asp:RadioButtonList>

                <p class="txtQuestions">Did you change any prescription medications in the month preceding the fall? <span style="color: rgb(219, 79, 73)">*</span></p><br />
                <asp:RadioButtonList class="txtMargin" ID="rblChangePrescription" runat="server">
                    <asp:ListItem Text="No" Value ="0" />
                    <asp:ListItem Text="Yes" Value ="1" />
                </asp:RadioButtonList>

                <p class="txtQuestions">If yes, what changes were made? </p><br />
                <asp:TextBox ID="txtPrescriptionChanged" runat="server"></asp:TextBox><br /><br /><hr /><br />

                <div style="text-align: center;">

                    <asp:Button ID="btnSubmitFallDetails" runat="server" Text="Submit" OnClick="btnSubmitFallDetails_Click" />
                    &nbsp;<asp:Button ID="menuBtn" runat="server" Text="Main Menu" OnClick="menuBtn_Click" />
                    <br />
                </div>
                <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
