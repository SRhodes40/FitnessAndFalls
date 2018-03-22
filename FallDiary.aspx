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
            <div class="confirmation">
                <strong>Custom Confirmation Message</strong><br /><br />
                <p>Please complete this "Fall Details" form for EACH reported fall!</p>
                <p style="color: blue;">(link to FallDetails page)</p>
            </div>

            <div class="confirmation">
                <h1>Fall Diary</h1>
                <p>Definition of a fall: An event which results in a person coming 
                    to rest unintentionally on the ground or other lower level, not 
                    as a result of a major intrinsic event (such as a stroke) or 
                    overwhelming hazard. </p><br />

                <h3>Last Name of Interviewer *</h3><br />
                <asp:TextBox ID="txtInterviewerLastName" runat="server" class="txtMargin"></asp:TextBox>

                <h3>First Name of Interviewer *</h3><br />
                <asp:TextBox ID="txtInterviewerFirstName" runat="server" class="txtMargin"></asp:TextBox>

                <h3>Participant ID *</h3>
                <p>&nbsp;Please Enter a Whole Number (eg., 29)</p><br />
                <asp:TextBox ID="txtParticipantID" runat="server" class="txtMargin"></asp:TextBox>

        <%--        <h4>Validation</h4>
                <asp:Button ID="btnValidationNum" runat="server" Text="Button" />
                <asp:Button ID="Button2" runat="server" Text="Button" />--%>

                <h3>Were you able to make contact with the participant this month? *</h3>
                <p>&nbsp;If no, submit the form without answering any more questions.</p><br />
                <asp:RadioButtonList class="txtMargin" ID="rblContact" runat="server">
                    <asp:ListItem Text="No" Value="0" />
                    <asp:ListItem Text="Yes" Value="1" />
                </asp:RadioButtonList>
<%--                <asp:RadioButton ID="rbYesParticipation" runat="server" />
                <asp:Label ID="lblYesParticipation" runat="server" Text="Yes"></asp:Label><br />
                <asp:RadioButton ID="rbNoParticipation" runat="server" />
                <asp:Label ID="lblNoParticipation" runat="server" Text="No"></asp:Label><br /><br /><br />--%>

                <h3>Have you fallen in the past month?</h3><br />
                <asp:RadioButtonList class="txtMargin" ID="rblFallen" runat="server">
                    <asp:ListItem Text="No" Value="0" />
                    <asp:ListItem Text="Yes" Value="1" />
                </asp:RadioButtonList>
<%--                <asp:RadioButton ID="rbYesHaveFallen" runat="server" />
                <asp:Label ID="lblYesHaveFallen" runat="server" Text="Yes"></asp:Label><br />
                <asp:RadioButton ID="rbNoHaveFallen" runat="server" />
                <asp:Label ID="lblNoHaveFallen" runat="server" Text="No"></asp:Label><br /><br /><br />--%>

                <h3>How many times did you fall?</h3>
                <p>&nbsp;Please enter whole numbers greater than or equal to zero.</p><br />
                <asp:TextBox ID="txtNumFalls" runat="server" class="txtMargin"></asp:TextBox>

                <h2 id="footerDetails">Please complete a "Fall Details" form for EACH fall!</h2>
            </div>
        </div>
    </form>
</body>
</html>
