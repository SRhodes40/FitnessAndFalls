<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FallDiary.aspx.cs" Inherits="Fitness_and_Falls_FallDiary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fall Diary</title>
    <link rel="stylesheet" href="fallDiary.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="confirmation" style="border: none;">
                <strong>Custom confirmation message</strong><br /><br />
                <p>Please complete this "Fall Details" form for EACH reported fall!</p>
                <p style="color: blue;">(link to FallDetails page)</p>
            </div>

            <div class="confirmation">
                <p class="txtTitle">Fall Diary</p>
                <p id="definition">Definition of a fall: An event which results in a person coming 
                    to rest unintentionally on the ground or other lower level, not 
                    as a result of a major intrinsic event (such as a stroke) or 
                    overwhelming hazard. </p><br />

                <p class="txtQuestions">Last Name of Interviewer <span style="color: rgb(219, 79, 73)">*</span></p><br />
                <asp:TextBox ID="txtInterviewerLastName" runat="server" class="txtMargin"></asp:TextBox>

                <p class="txtQuestions">First Name of Interviewer <span style="color: rgb(219, 79, 73)">*</span></p><br />
                <asp:TextBox ID="txtInterviewerFirstName" runat="server" class="txtMargin"></asp:TextBox>

                <p class="txtQuestions">Participant ID <span style="color: rgb(219, 79, 73)">*</span></p>
                <p style="font-size: .8em;">&nbsp;Please Enter a Whole Number (eg., 29)</p><br />
                <asp:TextBox ID="txtParticipantID" runat="server" class="txtMargin"></asp:TextBox>

        <%--        <h4>Validation</h4>
                <asp:Button ID="btnValidationNum" runat="server" Text="Button" />
                <asp:Button ID="Button2" runat="server" Text="Button" />--%>

                <p class="txtQuestions">Were you able to make contact with the participant this month? <span style="color: rgb(219, 79, 73)">*</span></p>
                <p style="font-size: .8em;">&nbsp;If no, submit the form without answering any more questions.</p><br />
                <asp:RadioButtonList class="txtMargin" ID="rblContact" runat="server">
                    <asp:ListItem Text="No" Value="0" />
                    <asp:ListItem Text="Yes" Value="1" />
                </asp:RadioButtonList>
                <%--                <asp:RadioButton ID="rbYesParticipation" runat="server" />
                <asp:Label ID="lblYesParticipation" runat="server" Text="Yes"></asp:Label><br />
                <asp:RadioButton ID="rbNoParticipation" runat="server" />
                <asp:Label ID="lblNoParticipation" runat="server" Text="No"></asp:Label><br /><br /><br />--%>

                <p class="txtQuestions">Have you fallen in the past month?</p><br />
                <asp:RadioButtonList class="txtMargin" ID="rblFallen" runat="server">
                    <asp:ListItem Text="No" Value="0" />
                    <asp:ListItem Text="Yes" Value="1" />
                </asp:RadioButtonList>
                <%--                <asp:RadioButton ID="rbYesHaveFallen" runat="server" />
                <asp:Label ID="lblYesHaveFallen" runat="server" Text="Yes"></asp:Label><br />
                <asp:RadioButton ID="rbNoHaveFallen" runat="server" />
                <asp:Label ID="lblNoHaveFallen" runat="server" Text="No"></asp:Label><br /><br /><br />--%>

                <p class="txtQuestions">How many times did you fall?</p>
                <p style="font-size: .8em;">&nbsp;Please enter whole numbers greater than or equal to zero.</p><br />
<<<<<<< HEAD
<<<<<<< HEAD
                <asp:TextBox ID="txtNumFallsFallDiary" runat="server"></asp:TextBox><br /><br />
=======
&nbsp;<asp:TextBox ID="txtNumFalls" runat="server"></asp:TextBox><br /><br />

                <p class="txtQuestions">Interview Date (YYYY-MM-DD) <span style="color: rgb(219, 79, 73)">*</span></p><br />
&nbsp;<asp:TextBox ID="txtInterviewDate" runat="server"></asp:TextBox><br /><br />
>>>>>>> 38c2296a30d654def5d67ae17eed706ca5df091f

                <asp:Button ID="btnSubmitFallDiary" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                <br />
                <br />
                <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>

&nbsp;<br /><br /><br />
                
                &nbsp;<h2 id="footerDetails">Please complete a "Fall Details" form for EACH fall!</h2>
            </div>
        </div>
    </form>
</body>
</html>
