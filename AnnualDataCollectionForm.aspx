<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AnnualDataCollectionForm.aspx.vb" Inherits="AnnualDataCollectionForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Annual Data Collection</title>
    <link rel="stylesheet" href="fallDiary.css" />
</head>
<body>
    <form id="AnnualDataForm" runat="server">
     <div class="container">
        <div class="confirmationHead">
            <strong>Custom Confirmation Message</strong><br /><br />
            <p style="color: blue;">(link to Home page)</p>
            <h1>Annual Data Collection</h1>
        </div>

        <h1>Investigator Information</h1>
        <br/>

        <h3>Investigator Last Name *</h3><br />
        <asp:TextBox ID="txtInvestigatorLastName" runat="server"></asp:TextBox>

        <h3>Investigator First Name *</h3><br />
        <asp:TextBox ID="txtInvestigatorFirstName" runat="server"></asp:TextBox>

        <h3>Test Location *</h3>
        <asp:RadioButtonList ID="rblLocation" runat="server">
                <asp:ListItem>University of Mount Union</asp:ListItem>
                <asp:ListItem>Alliance Senior Center</asp:ListItem>
            </asp:RadioButtonList>  
     </div>
    
    
     <div class="container">
        <h1>Informed Consent</h1>
        <p>Consent Form:<br />(https://drive.google.com/open?id=11GuH4mD_43U01voUWH2WXj14-GK7pUxh)</p>
        <h3>I have read (or someone has read to me) this form and I am aware that I am being asked to participate in a research study. *</h3><br />
        <p>Type your full name to indicate you agree with this statement</p>
        <asp:TextBox ID="txtConsentRead" runat="server"></asp:TextBox>

        <h3>I have had the opportunity to ask questions and have had them answered to my satisfaction. *</h3><br />
        <p>Type your full name to indicate you agree with this statement</p>
        <asp:TextBox ID="txtConsentQuestions" runat="server"></asp:TextBox>

        <h3>I voluntarily agree to participate in this study. *</h3><br />
        <p>Type your full name to indicate you agree with this statement</p>
        <asp:TextBox ID="txtConsentVoluntary" runat="server"></asp:TextBox>
        
        <h3>I am not giving up any legal rights by signing this form. *</h3><br />
        <p>Type your full name to indicate you agree with this statement</p>
        <asp:TextBox ID="txtConsentRights" runat="server"></asp:TextBox>
     </div>
    
     <div class="container">
        <h1>Personal Information</h1>

        <h3>Is this a baseline test? *</h3>
         <asp:RadioButtonList ID="rblBaseline" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>  
       
        <h3>Participant ID *</h3><br />
        <p>FOR NEW PARTICIPANTS!!!: Enter the 8-digit baseline test date + the 2 digit hour they were tested (00 - 23) + their age (e.g. a test that started january 17th 2018 at 8am for a 78 year old individual would result in the following participant ID: 011720180878). FOR RETURNING PARTICIPANTS: Enter their existing participant ID. Email Dr. Saunders at saundenw@mountunion.edu if the ID is unknown to you or the participant.</p>
        <asp:TextBox ID="txtParticipantID" runat="server"></asp:TextBox>

        <h3>Participant Last Name *</h3><br />
        <asp:TextBox ID="txtParticipantLastName" runat="server"></asp:TextBox>
        
        <h3>Participant First Name *</h3><br />
        <asp:TextBox ID="txtParticipantFirstName" runat="server"></asp:TextBox>
        
        <h3>Participant Phone Number *</h3><br />
        <p>xxx-xxx-xxxx</p>
        <asp:TextBox ID="txtParticipantPhone" runat="server"></asp:TextBox>
        
        <h3>Participant Email</h3><br />
        <asp:TextBox ID="txtParticipantEmail" runat="server"></asp:TextBox>
        
        <h3>Emergency Contact Full Name *</h3><br />
        <asp:TextBox ID="txtEmergencyContact" runat="server"></asp:TextBox>
        
        <h3>Emergency Contact Phone Number *</h3><br />
        <p>xxx-xxx-xxxx</p>
        <asp:TextBox ID="txtEmergencyPhone" runat="server"></asp:TextBox>
     </div>
        
     <div class="container">
        <h1>Activity History</h1>

        <h3>Do you have a known/diagnosed health problem(s) that limit your activity? *</h3>
         <asp:RadioButtonList ID="rblHealthProblems" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
         <h3>Do you participate in at least 2 days of 30 minutes of continuous activity per week? *</h3>
         <asp:RadioButtonList ID="rblContinousActivity" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
         <h3>Do you have difficulty standing from a chair without assistance? *</h3>
         <asp:RadioButtonList ID="rblDifficultyStanding" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
         <h3>Have you ever been diagnosed with a balance disorder? *</h3>
         <asp:RadioButtonList ID="rblBalanceDisorder" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
         <h3>Do you experience dizziness, chest pain, or chest tightness during exercise? *</h3>
         <asp:RadioButtonList ID="rblIssuesExercise" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
   
     
     </div>
       


    
    
    </form>
</body>
</html>

