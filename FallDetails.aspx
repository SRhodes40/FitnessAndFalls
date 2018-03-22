<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FallDetails.aspx.cs" Inherits="FallDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


.container{
    width: 40%;
    margin: 50px auto;
}

p{
    margin: 0;
    padding: 0;
}

h3{
    margin: 0;
    margin-top: 0.67em;
    padding: 0;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
        <p>Please complete this "Fall Details" form for EACH reported fall!</p>
      

        <h1>Fall Details</h1>
        <p>Definition of a fall: An event which results in a person coming 
            to rest unintentionally on the ground or other lower level, not 
            as a result of a major intrinsic event (such as a stroke) or 
            overwhelming hazard. </p><br />

        <h3>Last Name of Interviewer *</h3><br />
        <asp:TextBox ID="txtInterviewerLastName" runat="server"></asp:TextBox>

        <h3>First Name of Interviewer *</h3><br />
        <asp:TextBox ID="txtInterviewerFirstName" runat="server"></asp:TextBox>

        <h3>Participant ID *</h3>
        <p>&nbsp;Please Enter a Whole Number (eg., 29)</p><br />
        <asp:TextBox ID="txtParticipantID" runat="server"></asp:TextBox>

        <h3>In what month did the fall occur? *</h3>
        <p>&nbsp;</p>
            <asp:TextBox ID="txtMonthOfFall" runat="server"></asp:TextBox>
            <br />

        
        <h3>What time of day did the fall occur? *</h3>
        <p>Select "0" for don't remember, "1" for 6am-2pm, "2" for 2pm-10pm, "3" for 10pm-6am</p>
         <p>&nbsp;</p>
            <asp:TextBox ID="txtTimeOfFall" runat="server"></asp:TextBox>
            <br />

        
        <h3>Please describe the fall in your own words *</h3>
        <p>&nbsp;</p>
            <asp:TextBox ID="txtDescribeFall" runat="server"></asp:TextBox>
            <br />

        
        <h3>Where were you when you fell? *</h3>
        <p>&nbsp;</p>
            <asp:TextBox ID="txtFallLocation" runat="server"></asp:TextBox>
            <br />

         <h3>Where were you when you fell? *</h3>
        <p>&nbsp;</p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />

        <h3>Were you injured as a result of the fall?</h3><br />
            <asp:RadioButtonList ID="rblResultOfFall" runat="server">
                <asp:ListItem Text="No" Value ="0" />
                 <asp:ListItem Text="Yes" Value ="1" />
            </asp:RadioButtonList>
        <%--<asp:RadioButton ID="rbYesInjuredFallen" runat="server" />
        <asp:Label ID="lblYesInjuredFallen" runat="server" Text="Yes"></asp:Label><br />
        <asp:RadioButton ID="rbNoInjuryFallen" runat="server" />
        <asp:Label ID="lblNoInjuryFallen" runat="server" Text="No"></asp:Label>--%>

        <h3>If yes, please describe the injury?</h3>
        <asp:TextBox ID="txtDescribeInjury" runat="server"></asp:TextBox>

          <h3>Were you using an assistive device when you fell?</h3><br />
             <asp:RadioButtonList ID="rblAssistiveDevice" runat="server">
                <asp:ListItem Text="No" Value ="0" />
                 <asp:ListItem Text="Yes" Value ="1" />
            </asp:RadioButtonList>
       <%-- <asp:RadioButton ID="rbYesAssistiveDevice" runat="server" />
        <asp:Label ID="lblYesAssistiveDevice" runat="server" Text="Yes"></asp:Label><br />
        <asp:RadioButton ID="rbNoAssistiveDevice" runat="server" />
        <asp:Label ID="lblNoAssistiveDevice" runat="server" Text="No"></asp:Label>--%>

          <h3>Did you change any prescription medications in the month preceding the fall? *</h3><br />
             <asp:RadioButtonList ID="rblChangePrescription" runat="server">
                <asp:ListItem Text="No" Value ="0" />
                 <asp:ListItem Text="Yes" Value ="1" />
            </asp:RadioButtonList>
        <%--<asp:RadioButton ID="rbYesChangedPrescription" runat="server" />
        <asp:Label ID="lblYesChangedPrescription" runat="server" Text="Yes"></asp:Label><br />
        <asp:RadioButton ID="rbNoChangedPrescription" runat="server" />
        <asp:Label ID="lblnoChangedPrescription" runat="server" Text="No"></asp:Label>--%>


        <h3>If yes, what changes were made? *</h3>
        <p>&nbsp;</p>
            <asp:TextBox ID="txtPrescriptionChanged" runat="server"></asp:TextBox>
            <br />
        </div>
    </form>
</body>
</html>
