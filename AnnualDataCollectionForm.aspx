<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AnnualDataCollectionForm.aspx.vb" Inherits="AnnualDataCollectionForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Annual Data Collection</title>
    <link rel="stylesheet" href="fallDiary.css" />
    <style type="text/css">
        .auto-style1 {
            margin-left: 280px;
        }
        .auto-style2 {
            margin-left: 34px;
        }
    </style>
</head>
<body>
    <form id="AnnualDataForm" runat="server">
     <div class="container">
        <div class="confirmationHead">
            
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

     <div class="container">
        <h1>Medical History</h1>

        <h3>Have you ever been diagnosed with any heart disease, heart murmur, chest pain, palpitations, or heart attack? Yes or no? If yes, please select all that apply *</h3>
           <asp:CheckBoxList ID="cblHeart" runat="server">
               <asp:ListItem>Heart Disease</asp:ListItem>
               <asp:ListItem>Heart Murmur</asp:ListItem>
               <asp:ListItem>Chest Pain</asp:ListItem>
               <asp:ListItem>Palpitations</asp:ListItem>
               <asp:ListItem>Heart Attack</asp:ListItem>
               <asp:ListItem>None</asp:ListItem>
           </asp:CheckBoxList>

         <h3>Do you have high blood pressure? *</h3>
         <asp:RadioButtonList ID="rblHighBloodPressure" runat="server">
                <asp:ListItem>Yes, Controlled</asp:ListItem>
                <asp:ListItem>Yes, Uncontrolled</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
         <h3>Do you have a medical condition which requires medication to manage? *</h3>
         <asp:RadioButtonList ID="rblConditionMedication" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
         <h3>Have you ever had orthopedic, cardiac, or any other major surgeries? *</h3>
         <asp:RadioButtonList ID="rblMajorSurgery" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
         <h3>Have you ever been diagnosed with a cognitive impairment or dementia? *</h3>
         <asp:RadioButtonList ID="rblDementia" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
         <h3>Do you use any of the following to move about? *</h3>
         <asp:CheckBoxList ID="cblDeviceAssist" runat="server">
               <asp:ListItem>Wheelchair</asp:ListItem>
               <asp:ListItem>Cane</asp:ListItem>
               <asp:ListItem>Walker</asp:ListItem>
               <asp:ListItem>Palpitations</asp:ListItem>
               <asp:ListItem>None</asp:ListItem>
           </asp:CheckBoxList>
     </div>

     <div>
         <h1 class="auto-style1">&nbsp;&nbsp; Medication List</h1>
         <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Please list medications you are currently taking.</h3>
         <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="txtParticipantMeds" runat="server" CssClass="auto-style2"></asp:TextBox>
     </div>

     <div class="container">
         <h1>Fall History    <h3>Have you experienced a fall in the past 6 months? *</h3>
         <asp:RadioButtonList ID="rblFall6Months" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
         <h3>If you have fallen within the past 6 months, how many times did you fall?</h3><br />
        <asp:TextBox ID="txtTimesFell" runat="server"></asp:TextBox>
        <h3>If you have fallen within the past 6 months, did you experience any injuries?</h3>
         <asp:RadioButtonList ID="rblFallenInjury" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
        <h3>If you have fallen within the past 6 months, and you experienced an injury, please explain.</h3><br />
        <asp:TextBox ID="txtFallenInjury" runat="server"></asp:TextBox>
      </div>
    
     <div class="container">
        <h1>Composite Physical Functional Scale</h1>
           <p>Even if you did not do the following activities, please indicate what you think your ability to do them during the past week would have been. 
             If question A is answered with a 'No' or 'Yes, with difficulty', please then answer question B.</p>
        
        <h3>1a. Take care of own personal needs-like dressing yourself *</h3>
         <asp:RadioButtonList ID="rblCPFS1" runat="server">
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Yes, with difficulty</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
            </asp:RadioButtonList>
        <h3>1b. Why are you unable? OR Why do you have difficulty?</h3>
           <asp:CheckBoxList ID="cblCPFS1" runat="server">
               <asp:ListItem>Health problems</asp:ListItem>
               <asp:ListItem>Chronic pain</asp:ListItem>
               <asp:ListItem>Lack of strength or endurance</asp:ListItem>
               <asp:ListItem>Lack of flexibility or balance</asp:ListItem>
               <asp:ListItem>Other</asp:ListItem>
           </asp:CheckBoxList>
        <h3>If other, please explain</h3><br />
        <asp:TextBox ID="txtCPFS1" runat="server"></asp:TextBox>
      
        <h3>2a. Bathe yourself, using tub or shower *</h3>
         <asp:RadioButtonList ID="rblCPFS2" runat="server">
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Yes, with difficulty</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
            </asp:RadioButtonList>
        <h3>2b. Why are you unable? OR Why do you have difficulty?</h3>
           <asp:CheckBoxList ID="cblCPFS2" runat="server">
               <asp:ListItem>Health problems</asp:ListItem>
               <asp:ListItem>Chronic pain</asp:ListItem>
               <asp:ListItem>Lack of strength or endurance</asp:ListItem>
               <asp:ListItem>Lack of flexibility or balance</asp:ListItem>
               <asp:ListItem>Other</asp:ListItem>
           </asp:CheckBoxList>
        <h3>If other, please explain</h3><br />
        <asp:TextBox ID="txtCPFS2" runat="server"></asp:TextBox>
     
        <h3>3a. Climb up and down a flight or stairs (like to a second story in a house) *</h3>
         <asp:RadioButtonList ID="rblCPFS3" runat="server">
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Yes, with difficulty</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
            </asp:RadioButtonList>
        <h3>3b. Why are you unable? OR Why do you have difficulty?</h3>
           <asp:CheckBoxList ID="cblCPFS3" runat="server">
               <asp:ListItem>Health problems</asp:ListItem>
               <asp:ListItem>Chronic pain</asp:ListItem>
               <asp:ListItem>Lack of strength or endurance</asp:ListItem>
               <asp:ListItem>Lack of flexibility or balance</asp:ListItem>
               <asp:ListItem>Other</asp:ListItem>
           </asp:CheckBoxList>
        <h3>If other, please explain</h3><br />
        <asp:TextBox ID="txtCPFS3" runat="server"></asp:TextBox>
     
        <h3>4a. Walk outside one or two blocks *</h3>
         <asp:RadioButtonList ID="rblCPFS4" runat="server">
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Yes, with difficulty</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
            </asp:RadioButtonList>
        <h3>4b. Why are you unable? OR Why do you have difficulty?</h3>
           <asp:CheckBoxList ID="cblCPFS4" runat="server">
               <asp:ListItem>Health problems</asp:ListItem>
               <asp:ListItem>Chronic pain</asp:ListItem>
               <asp:ListItem>Lack of strength or endurance</asp:ListItem>
               <asp:ListItem>Lack of flexibility or balance</asp:ListItem>
               <asp:ListItem>Other</asp:ListItem>
           </asp:CheckBoxList>
        <h3>If other, please explain</h3><br />
        <asp:TextBox ID="txtCPFS4" runat="server"></asp:TextBox>

        <h3>5a. Do light household activities - like cooking, dusting, washing dishes, sweeping a walkway *</h3>
         <asp:RadioButtonList ID="rblCPFS5" runat="server">
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Yes, with difficulty</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
            </asp:RadioButtonList>
        <h3>5b. Why are you unable? OR Why do you have difficulty?</h3>
           <asp:CheckBoxList ID="cblCPFS5" runat="server">
               <asp:ListItem>Health problems</asp:ListItem>
               <asp:ListItem>Chronic pain</asp:ListItem>
               <asp:ListItem>Lack of strength or endurance</asp:ListItem>
               <asp:ListItem>Lack of flexibility or balance</asp:ListItem>
               <asp:ListItem>Other</asp:ListItem>
           </asp:CheckBoxList>
        <h3>If other, please explain</h3><br />
        <asp:TextBox ID="txtCPFS5" runat="server"></asp:TextBox>
     
        <h3>6a. Do own shopping for groceries or clothes *</h3>
         <asp:RadioButtonList ID="rblCPFS6" runat="server">
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Yes, with difficulty</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
            </asp:RadioButtonList>
        <h3>6b. Why are you unable? OR Why do you have difficulty?</h3>
           <asp:CheckBoxList ID="cblCPFS6" runat="server">
               <asp:ListItem>Health problems</asp:ListItem>
               <asp:ListItem>Chronic pain</asp:ListItem>
               <asp:ListItem>Lack of strength or endurance</asp:ListItem>
               <asp:ListItem>Lack of flexibility or balance</asp:ListItem>
               <asp:ListItem>Other</asp:ListItem>
           </asp:CheckBoxList>
        <h3>If other, please explain</h3><br />
        <asp:TextBox ID="txtCPFS6" runat="server"></asp:TextBox>

        <h3>7a. Walk 1/2 mile (6-7 blocks) *</h3>
         <asp:RadioButtonList ID="rblCPFS7" runat="server">
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Yes, with difficulty</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
            </asp:RadioButtonList>
        <h3>7b. Why are you unable? OR Why do you have difficulty?</h3>
           <asp:CheckBoxList ID="cblCPFS7" runat="server">
               <asp:ListItem>Health problems</asp:ListItem>
               <asp:ListItem>Chronic pain</asp:ListItem>
               <asp:ListItem>Lack of strength or endurance</asp:ListItem>
               <asp:ListItem>Lack of flexibility or balance</asp:ListItem>
               <asp:ListItem>Other</asp:ListItem>
           </asp:CheckBoxList>
        <h3>If other, please explain</h3><br />
        <asp:TextBox ID="txtCPFS7" runat="server"></asp:TextBox>

        <h3>8a. Walk 1 mile (12-14 blocks) *</h3>
         <asp:RadioButtonList ID="rblCPFS8" runat="server">
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Yes, with difficulty</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
            </asp:RadioButtonList>
        <h3>8b. Why are you unable? OR Why do you have difficulty?</h3>
           <asp:CheckBoxList ID="cblCPFS8" runat="server">
               <asp:ListItem>Health problems</asp:ListItem>
               <asp:ListItem>Chronic pain</asp:ListItem>
               <asp:ListItem>Lack of strength or endurance</asp:ListItem>
               <asp:ListItem>Lack of flexibility or balance</asp:ListItem>
               <asp:ListItem>Other</asp:ListItem>
           </asp:CheckBoxList>
        <h3>If other, please explain</h3><br />
        <asp:TextBox ID="txtCPFS8" runat="server"></asp:TextBox>

        <h3>9a. Lift and carry 10 pounds (full bag of groceries) *</h3>
         <asp:RadioButtonList ID="rblCPFS9" runat="server">
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Yes, with difficulty</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
            </asp:RadioButtonList>
        <h3>9b. Why are you unable? OR Why do you have difficulty?</h3>
           <asp:CheckBoxList ID="cblCPFS9" runat="server">
               <asp:ListItem>Health problems</asp:ListItem>
               <asp:ListItem>Chronic pain</asp:ListItem>
               <asp:ListItem>Lack of strength or endurance</asp:ListItem>
               <asp:ListItem>Lack of flexibility or balance</asp:ListItem>
               <asp:ListItem>Other</asp:ListItem>
           </asp:CheckBoxList>
        <h3>If other, please explain</h3><br />
        <asp:TextBox ID="txtCPFS9" runat="server"></asp:TextBox>

        <h3>10a. Lift and carry 25 pounds (medium to large suitcase) *</h3>
         <asp:RadioButtonList ID="rblCPFS10" runat="server">
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Yes, with difficulty</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
            </asp:RadioButtonList>
        <h3>10b. Why are you unable? OR Why do you have difficulty?</h3>
           <asp:CheckBoxList ID="cblCPFS10" runat="server">
               <asp:ListItem>Health problems</asp:ListItem>
               <asp:ListItem>Chronic pain</asp:ListItem>
               <asp:ListItem>Lack of strength or endurance</asp:ListItem>
               <asp:ListItem>Lack of flexibility or balance</asp:ListItem>
               <asp:ListItem>Other</asp:ListItem>
           </asp:CheckBoxList>
        <h3>If other, please explain</h3><br />
        <asp:TextBox ID="txtCPFS10" runat="server"></asp:TextBox>

        <h3>11a. Do most heavy household chores - like scrubbing floors, vacuuming, raking leaves *</h3>
         <asp:RadioButtonList ID="rblCPFS11" runat="server">
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Yes, with difficulty</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
            </asp:RadioButtonList>
        <h3>11b. Why are you unable? OR Why do you have difficulty?</h3>
           <asp:CheckBoxList ID="cblCPFS11" runat="server">
               <asp:ListItem>Health problems</asp:ListItem>
               <asp:ListItem>Chronic pain</asp:ListItem>
               <asp:ListItem>Lack of strength or endurance</asp:ListItem>
               <asp:ListItem>Lack of flexibility or balance</asp:ListItem>
               <asp:ListItem>Other</asp:ListItem>
           </asp:CheckBoxList>
        <h3>If other, please explain</h3><br />
        <asp:TextBox ID="txtCPFS11" runat="server"></asp:TextBox>

        <h3>12a. Do strenuous activities - like hiking, digging in garden, moving heavy objects, bicycling, aerobic dance exercises, strenuous calisthenics, etc. *</h3>
         <asp:RadioButtonList ID="rblCPFS12" runat="server">
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Yes, with difficulty</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
            </asp:RadioButtonList>
        <h3>10b. Why are you unable? OR Why do you have difficulty?</h3>
           <asp:CheckBoxList ID="cblCPFS12" runat="server">
               <asp:ListItem>Health problems</asp:ListItem>
               <asp:ListItem>Chronic pain</asp:ListItem>
               <asp:ListItem>Lack of strength or endurance</asp:ListItem>
               <asp:ListItem>Lack of flexibility or balance</asp:ListItem>
               <asp:ListItem>Other</asp:ListItem>
           </asp:CheckBoxList>
        <h3>If other, please explain</h3><br />
        <asp:TextBox ID="txtCPFS12" runat="server"></asp:TextBox>
      </div>

      <div class="container">
       <h1>Demographic Information</h1>
       <h3>Age *</h3><br />
            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
        <h3>Gender *</h3>
            <asp:RadioButtonList ID="rblGender" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList> 
        <h3>What is your gross annual household income? *</h3>
            <asp:RadioButtonList ID="rblIncome" runat="server">
                <asp:ListItem>< $20,000</asp:ListItem>
                <asp:ListItem>$20,000 - $40,000</asp:ListItem>
                <asp:ListItem>$40,000 - $60,000</asp:ListItem>
                <asp:ListItem>> $60,000</asp:ListItem>
                <asp:ListItem>Prefer not to answer</asp:ListItem>
            </asp:RadioButtonList>
        <h3>Ethnicity *</h3>
            <asp:RadioButtonList ID="rblEthnicity" runat="server">
                <asp:ListItem>White/Caucasian</asp:ListItem>
                <asp:ListItem>Hispanic/Latino</asp:ListItem>
                <asp:ListItem>Black/African American</asp:ListItem>
                <asp:ListItem>Asian</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
                <asp:ListItem>Prefer not to answer</asp:ListItem>
            </asp:RadioButtonList>
     </div>
     <div class="container">
       <h1>Resting Vitals</h1>
       <h3>Resting pulse rate (bpm)</h3><br />
            <asp:TextBox ID="txtRestPulse" runat="server"></asp:TextBox>
       <h3>Resting SpO2 (%)</h3><br />
            <asp:TextBox ID="txtSpO2" runat="server"></asp:TextBox>
     </div>

     <div class="container">
       <h1>Anthropometric Measures</h1>
       <h3>Height (cm) *</h3><br />
            <asp:TextBox ID="txtHeight" runat="server"></asp:TextBox>
       <h3>Right Leg Length (cm) *</h3><br />
            <asp:TextBox ID="txtRightLeg" runat="server"></asp:TextBox>
       <h3>Left Leg Length (cm) *</h3><br />
            <asp:TextBox ID="txtLeftLeg" runat="server"></asp:TextBox>
       <h3>Weight (kg) *</h3><br />
            <asp:TextBox ID="txtWeight" runat="server"></asp:TextBox>
       <h3>Waist Circumference (cm) *</h3><br />
            <asp:TextBox ID="txtWaist" runat="server"></asp:TextBox>
       <h3>Hip Circumference (cm) *</h3><br />
            <asp:TextBox ID="txtHip" runat="server"></asp:TextBox>
     </div>

     <div class="container">
       <h1>Grip Strength</h1>
       <h3>Dominant hand *</h3>
            <asp:RadioButtonList ID="rblDomHand" runat="server">
                <asp:ListItem>Right</asp:ListItem>
                <asp:ListItem>Left</asp:ListItem>
            </asp:RadioButtonList> 
       <h3>Grip strength (kg)</h3>
         <p>Enter the best of two measurements</p><br />
            <asp:TextBox ID="txtGripStrength" runat="server"></asp:TextBox>
        
      </div>
    
    </form>
</body>
</html>

