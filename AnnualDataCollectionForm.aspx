<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AnnualDataCollectionForm.aspx.cs" Inherits="AnnualDataCollectionForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Annual Data Collection</title>
    <link rel="stylesheet" href="annualData.css" />
    <link rel="shortcut icon" href="images/faviconFinal.png" type="image/x-icon" />
    
</head>
<body>
    <form id="AnnualDataForm" runat="server">
     <div class="container">
        <div class="confirmation">
            
        <p class="txtTitle">Annual Data Collection</p>
        <p class="txtQuestions">Participant ID<span style="color: rgb(219, 79, 73)">*</span></p><br />
        
        <asp:TextBox ID="txtParticipantID" runat="server" class="txtMargin"></asp:TextBox>


        <p class="txtTitle">Investigator Information </p>
        <br/>

        <p class="txtQuestions">Investigator Last Name<span style="color: rgb(219, 79, 73)">*</span></p><br />
        <asp:TextBox ID="txtInvestigatorLastName" runat="server" class="txtMargin"></asp:TextBox>

        <p class="txtQuestions">Investigator First Name<span style="color: rgb(219, 79, 73)">*</span></p><br />
        <asp:TextBox ID="txtInvestigatorFirstName" runat="server" class="txtMargin"></asp:TextBox>

        <p class="txtQuestions">Test Location<span style="color: rgb(219, 79, 73)">*</span></p>
        <asp:RadioButtonList class="txtMargin" ID="rblLocation" runat="server">
                <asp:ListItem Text="University of Mount Union" Value="University of Mount Union" />
                <asp:ListItem Text="Alliance Senior Center" Value="Alliance Senior Center" />
            </asp:RadioButtonList>  
        <p class="txtQuestions">Is this a baseline test?<span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList class="txtMargin" ID="rblBaseline" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rblBaseline_SelectedIndexChanged">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes" Value="Yes" />
            </asp:RadioButtonList> 
    
    <asp:Panel ID="panBaseline" runat="server" Visible="False"> 
        
        
     <div class="container">
     
        <p class="txtTitle">Informed Consent</p>
        <p id="definition">Consent Form:<br />(https://drive.google.com/open?id=11GuH4mD_43U01voUWH2WXj14-GK7pUxh)</p>
        <p class="txtQuestions">I have read (or someone has read to me) this form and I am aware that I am being asked to participate in a research study. <span style="color: rgb(219, 79, 73)">*</span></p><br />
        <p id="definition">Type your full name to indicate you agree with this statement</p>
        <asp:TextBox ID="txtConsentRead" runat="server" class="txtMargin"></asp:TextBox>

        <p class="txtQuestions">I have had the opportunity to ask questions and have had them answered to my satisfaction.<span style="color: rgb(219, 79, 73)">*</span></p><br />
        <p id="definition">Type your full name to indicate you agree with this statement</p>
        <asp:TextBox ID="txtConsentQuestions" runat="server" class="txtMargin"></asp:TextBox>

        <p class="txtQuestions">I voluntarily agree to participate in this study.<span style="color: rgb(219, 79, 73)">*</span></p><br />
        <p id="definition">Type your full name to indicate you agree with this statement</p>
        <asp:TextBox ID="txtConsentVoluntary" runat="server" class="txtMargin"></asp:TextBox>
        
        <p class="txtQuestions">I am not giving up any legal rights by signing this form.<span style="color: rgb(219, 79, 73)">*</span></p><br />
        <p id="definition">Type your full name to indicate you agree with this statement</p>
        <asp:TextBox ID="txtConsentRights" runat="server" class="txtMargin"></asp:TextBox>
     </div>
    
     <div class="container">
        <p class="txtTitle">Personal Information</p>

         
       
        
        <p class="txtQuestions">Participant Last Name<span style="color: rgb(219, 79, 73)">*</span></p><br />
        <asp:TextBox ID="txtParticipantLastName" runat="server" class="txtMargin"></asp:TextBox>
        
        <p class="txtQuestions">Participant First Name<span style="color: rgb(219, 79, 73)">*</span></p><br />
        <asp:TextBox ID="txtParticipantFirstName" runat="server" class="txtMargin"></asp:TextBox>
        
        <p class="txtQuestions">Participant Phone Number<span style="color: rgb(219, 79, 73)">*</span></p><br />
        <p id="definition">xxx-xxx-xxxx</p>
        <asp:TextBox ID="txtParticipantPhone" runat="server" class="txtMargin"></asp:TextBox>
        
        <p class="txtQuestions">Participant Email</p><br />
        <asp:TextBox ID="txtParticipantEmail" runat="server" class="txtMargin"></asp:TextBox>
        
        <p class="txtQuestions">Emergency Contact Full Name<span style="color: rgb(219, 79, 73)">*</span></p><br />
        <asp:TextBox ID="txtEmergencyContact" runat="server" class="txtMargin"></asp:TextBox>
        
        <p class="txtQuestions">Emergency Contact Phone Number<span style="color: rgb(219, 79, 73)">*</span></p><br />
        <p id="definition">xxx-xxx-xxxx</p>
        <asp:TextBox ID="txtEmergencyPhone" runat="server" class="txtMargin"></asp:TextBox>
     </div>
        
     <div class="container">
       <p class="txtTitle">Demographic Information</p>
       <p class="txtQuestions">Age<span style="color: rgb(219, 79, 73)">*</span></p><br />
            <asp:TextBox ID="txtAge" runat="server" class="txtMargin"></asp:TextBox>
        <p class="txtQuestions">Gender<span style="color: rgb(219, 79, 73)">*</span></p>
               <asp:RadioButtonList ID="rblGender" runat="server" class="txtMargin">
               <asp:ListItem Text="Female" Value="Female" />
               <asp:ListItem Text="Male" Value="Male" />
               </asp:RadioButtonList>
        <p class="txtQuestions">What is your gross annual household income?<span style="color: rgb(219, 79, 73)">*</span></p>
            <asp:RadioButtonList ID="rblIncome" runat="server" class="txtMargin">
                <asp:ListItem Text="< 20,000" Value="< 20,000" />
                <asp:ListItem Text="$20,000 - $40,000" Value="$20,000 - $40,000" />
                <asp:ListItem Text="$40,000 - $60,000" Value="$40,000 - $60,000" />
                <asp:ListItem Text="> $60,000" Value="> $60,000" />
                <asp:ListItem Text="Prefer not to answer" Value="Prefer not to answer" />
                
            </asp:RadioButtonList>
        <p class="txtQuestions">Ethnicity<span style="color: rgb(219, 79, 73)">*</span></p>
            <asp:RadioButtonList ID="rblEthnicity" runat="server" class="txtMargin">
                <asp:ListItem Text="White/Caucasian" Value="White/Caucasian" />    
                <asp:ListItem Text="Hispanic/Latino" Value="Hispanic/Latino" />  
                <asp:ListItem Text="Black/African American" Value="Black/African American" />  
                <asp:ListItem Text="Asian" Value="Asian" />  
                <asp:ListItem Text="Other" Value="Other" />  
                <asp:ListItem Text="Prefer not to answer" Value="Prefer not to answer" />  
            </asp:RadioButtonList>
         </div>
   </asp:Panel>

        <div class="container">
        <p class="txtTitle">Activity History</p>

        <p class="txtQuestions">Do you have a known/diagnosed health problem(s) that limit your activity?<span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblHealthProblems" runat="server" class="txtMargin">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes" Value="Yes" />
            </asp:RadioButtonList>
         <p class="txtQuestions">Do you participate in at least 2 days of 30 minutes of continuous activity per week?<span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblContinousActivity" runat="server" class="txtMargin">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes" Value="1" />
            </asp:RadioButtonList>
         <p class="txtQuestions">Do you have difficulty standing from a chair without assistance?<span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblDifficultyStanding" runat="server" class="txtMargin">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes" Value="1" />
            </asp:RadioButtonList>
         <p class="txtQuestions">Have you ever been diagnosed with a balance disorder?<span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblBalanceDisorder" runat="server" class="txtMargin">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes" Value="1" />
            </asp:RadioButtonList>
         <p class="txtQuestions">Do you experience dizziness, chest pain, or chest tightness during exercise?<span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblIssuesExercise" runat="server" class="txtMargin">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes" Value="1" />
            </asp:RadioButtonList>
        </div>

     <div class="container">
        <p class="txtTitle">Medical History</p>

        <p class="txtQuestions">Have you ever been diagnosed with any of the following?<span style="color: rgb(219, 79, 73)">*</span></p>
          
        <p class="txtQuestions">Heart Disease<span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblHeartDisease" runat="server" class="txtMargin">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes" Value="1" />
            </asp:RadioButtonList>
        <p class="txtQuestions">Heart Murmur<span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblHeartMurmur" runat="server" class="txtMargin">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes" Value="1" />
            </asp:RadioButtonList>
        <p class="txtQuestions">Chest Pain<span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblChestPain" runat="server" class="txtMargin">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes" Value="1" />
            </asp:RadioButtonList>
        <p class="txtQuestions">Palpitations<span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblPalpitations" runat="server" class="txtMargin">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes" Value="1" />
            </asp:RadioButtonList>
        <p class="txtQuestions">Heart Attack<span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblHeartAttack" runat="server" class="txtMargin">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes" Value="1" />
            </asp:RadioButtonList>
        <p class="txtQuestions">None<span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblNoneDiagnosed" runat="server" class="txtMargin">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes" Value="1" />
            </asp:RadioButtonList>

         <p class="txtQuestions">Do you have high blood pressure?<span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblHighBloodPressure" runat="server" class="txtMargin">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes, controlled" Value="1" />
                <asp:ListItem Text="Yes, uncontrolled" Value="1" />
            </asp:RadioButtonList>
         <p class="txtQuestions">Do you have a medical condition which requires medication to manage?<span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblConditionMedication" runat="server" class="txtMargin">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes" Value="1" />
            </asp:RadioButtonList>
         <p class="txtQuestions">Have you ever had orthopedic, cardiac, or any other major surgeries?<span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblMajorSurgery" runat="server" class="txtMargin">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes" Value="1" />
            </asp:RadioButtonList>
         <p class="txtQuestions">Have you ever been diagnosed with a cognitive impairment or dementia?<span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblDementia" runat="server" class="txtMargin">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes" Value="1" />
            </asp:RadioButtonList>
         <p class="txtQuestions">If you answered yes to any of the questions questions above, please explain.<span style="color: rgb(219, 79, 73)">*</span></p>
         <br /> <asp:TextBox ID="txtYesExplain" runat="server" class="txtMargin"></asp:TextBox>
    
         <p class="txtQuestions">Do you use any of the following to move about?<span style="color: rgb(219, 79, 73)">*</span></p>
         
         <p class="txtQuestions">Wheelchair<span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblWheelchair" runat="server" class="txtMargin">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes" Value="1" />
            </asp:RadioButtonList>
         <p class="txtQuestions">Cane<span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblCane" runat="server" class="txtMargin">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes" Value="1" />
            </asp:RadioButtonList>
         <p class="txtQuestions">Walker<span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblWalker" runat="server" class="txtMargin">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes" Value="1" />
            </asp:RadioButtonList>
         <p class="txtQuestions">None<span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblNoDevices" runat="server" class="txtMargin">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes" Value="1" />
            </asp:RadioButtonList>
         <p class="txtQuestions">If you do use any of the devices listed above, please explain.<span style="color: rgb(219, 79, 73)">*</span></p>
         <br /> <asp:TextBox ID="txtDevicesExplain" runat="server" class="txtMargin"></asp:TextBox>
    
     </div>

     <div>
         <p class="txtTitle">Medication List</p>
         <p class="txtQuestions">Please list medications you are currently taking.</p>
         <br /> <asp:TextBox ID="txtParticipantMeds" runat="server" class="txtMargin"></asp:TextBox>
     </div>

     <div class="container">
         <p class="txtTitle">Fall History    <p class="txtQuestions">Have you experienced a fall in the past 6 months?<span style="color: rgb(219, 79, 73)">*</span></p>
         <p id="definition">A fall is defined as "an event which results in a person coming to rest unintentionally on the ground or other lower level." -Tinetti </p>
        
         <asp:RadioButtonList ID="rblFall6Months" runat="server" class="txtMargin">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes" Value="1" />
            </asp:RadioButtonList>
         <p class="txtQuestions">If you have fallen within the past 6 months, how many times did you fall?</p><br />
        <asp:TextBox ID="txtTimesFell" runat="server" class="txtMargin"></asp:TextBox>
        <p class="txtQuestions">If you have fallen within the past 6 months, did you experience any injuries?</p>
         <asp:RadioButtonList ID="rblFallenInjury" runat="server" class="txtMargin">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes" Value="1" />
            </asp:RadioButtonList>
        <p class="txtQuestions">If you have fallen within the past 6 months, and you experienced an injury, please explain.</p><br />
        <asp:TextBox ID="txtFallenInjury" runat="server" class="txtMargin"></asp:TextBox>
      </div>
    
     <div class="container">
        <p class="txtTitle">Composite Physical Functional Scale</p>
           <p id="definition">Even if you did not do the following activities, please indicate what you think your ability to do them during the past week would have been. 
             If question A is answered with a 'No' or 'Yes, with difficulty', please then answer question B.</p>
        
        <p class="txtQuestions">1a. Take care of own personal needs-like dressing yourself<span style="color: rgb(219, 79, 73)">*</span></p>
       
         <asp:RadioButtonList ID="rblCPFS1" runat="server" class="txtMargin" AutoPostBack="true" OnSelectedIndexChanged="rblCPFS1_SelectedIndexChanged">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes, with difficulty" Value="Yes, with difficulty" />
                <asp:ListItem Text="Yes" Value="Yes" />
         </asp:RadioButtonList>

    <asp:Panel ID="panCPFS1" runat="server" Visible="False">
        <p class="txtQuestions">1b. Why are you unable? OR Why do you have difficulty?</p>
           
               <p class="txtQuestions">Health Problems</p>
               <asp:RadioButtonList ID="rblCPFS1Health" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList>

               <p class="txtQuestions">Chronic Pain</p>
               <asp:RadioButtonList ID="rblCPFS1Pain" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList>

               <p class="txtQuestions">Lack of Strength or Endurance</p>
               <asp:RadioButtonList ID="rblCPFS1Strength" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 
         
               <p class="txtQuestions">Lack of Flexibility or Balance</p>
               <asp:RadioButtonList ID="rblCPFS1Flex" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 

               <p class="txtQuestions">Other</p>
               <asp:RadioButtonList ID="rblCPFS1Other" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 
           
        <p class="txtQuestions">If other, please explain</p><br />
        <asp:TextBox ID="txtCPFS1Other" runat="server" class="txtMargin"></asp:TextBox>
    </asp:Panel> 
           
     
        <p class="txtQuestions">2a. Bathe yourself, using tub or shower<span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblCPFS2" runat="server" class="txtMargin" AutoPostBack="true" OnSelectedIndexChanged="rblCPFS2_SelectedIndexChanged">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes, with difficulty" Value="Yes, with difficulty" />
                <asp:ListItem Text="Yes" Value="Yes" />
         </asp:RadioButtonList>

    <asp:Panel ID="panCPFS2" runat="server" Visible="False"> 
        <p class="txtQuestions">2b. Why are you unable? OR Why do you have difficulty?</p>
           
               <p class="txtQuestions">Health Problems</p>
               <asp:RadioButtonList ID="rblCPFS2Health" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList>

               <p class="txtQuestions">Chronic Pain</p>
               <asp:RadioButtonList ID="rblCPFS2Pain" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList>

               <p class="txtQuestions">Lack of Strength or Endurance</p>
               <asp:RadioButtonList ID="rblCPFS2Strength" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 
         
               <p class="txtQuestions">Lack of Flexibility or Balance</p>
               <asp:RadioButtonList ID="rblCPFSFlex" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 

               <p class="txtQuestions">Other</p>
               <asp:RadioButtonList ID="rblCPFSOther" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 
           
        <p class="txtQuestions">If other, please explain</p><br />
        <asp:TextBox ID="txtCPFS2Other" runat="server" class="txtMargin"></asp:TextBox>
     </asp:Panel>
        

        <p class="txtQuestions">3a. Climb up and down a flight or stairs (like to a second story in a house)<span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblCPFS3" runat="server" class="txtMargin" AutoPostBack="true" OnSelectedIndexChanged="rblCPFS3_SelectedIndexChanged">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes, with difficulty" Value="Yes, with difficulty" />
                <asp:ListItem Text="Yes" Value="Yes" />
         </asp:RadioButtonList>

     <asp:Panel ID="panCPFS3" runat="server" Visible="False"> 
        <p class="txtQuestions">3b. Why are you unable? OR Why do you have difficulty?</p>
           
               <p class="txtQuestions">Health Problems</p>
               <asp:RadioButtonList ID="rblCPFS3Health" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList>

               <p class="txtQuestions">Chronic Pain</p>
               <asp:RadioButtonList ID="rblCPFS3Pain" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList>

               <p class="txtQuestions">Lack of Strength or Endurance</p>
               <asp:RadioButtonList ID="rblCPFS3Strength" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 
         
               <p class="txtQuestions">Lack of Flexibility or Balance</p>
               <asp:RadioButtonList ID="rblCPFS3Flex" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 

               <p class="txtQuestions">Other</p>
               <asp:RadioButtonList ID="rblCPFS3Other" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 
           
        <p class="txtQuestions">If other, please explain</p><br />
        <asp:TextBox ID="txtCPFS3Other" runat="server" class="txtMargin"></asp:TextBox>
      </asp:Panel>

       <p class="txtQuestions">4a. Walk outside one or two blocks <span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblCPFS4" runat="server" class="txtMargin" AutoPostBack="true" OnSelectedIndexChanged="rblCPFS4_SelectedIndexChanged">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes, with difficulty" Value="Yes, with difficulty" />
                <asp:ListItem Text="Yes" Value="Yes" />
         </asp:RadioButtonList>
      
   <asp:Panel ID="panCPFS4" runat="server" Visible="False"> 
         <p class="txtQuestions">4b. Why are you unable? OR Why do you have difficulty?</p>
           
               <p class="txtQuestions">Health Problems</p>
               <asp:RadioButtonList ID="rblCPFS4Health" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList>

               <p class="txtQuestions">Chronic Pain</p>
               <asp:RadioButtonList ID="rblCPFS4Pain" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList>

               <p class="txtQuestions">Lack of Strength or Endurance</p>
               <asp:RadioButtonList ID="rblCPFS4Strength" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 
         
               <p class="txtQuestions">Lack of Flexibility or Balance</p>
               <asp:RadioButtonList ID="rblCPFS4Flex" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 

               <p class="txtQuestions">Other</p>
               <asp:RadioButtonList ID="rblCPFS4Other" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 
           
        <p class="txtQuestions">If other, please explain</p><br />
        <asp:TextBox ID="txtCPFS4Other" runat="server" class="txtMargin"></asp:TextBox>
      </asp:Panel>

        <p class="txtQuestions">5a. Do light household activities - like cooking, dusting, washing dishes, sweeping a walkway<span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblCPFS5" runat="server" class="txtMargin" AutoPostBack="true" OnSelectedIndexChanged="rblCPFS5_SelectedIndexChanged">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes, with difficulty" Value="Yes, with difficulty" />
                <asp:ListItem Text="Yes" Value="Yes" />
         </asp:RadioButtonList>
    <asp:Panel ID="panCPFS5" runat="server" Visible="False"> 
        <p class="txtQuestions">5b. Why are you unable? OR Why do you have difficulty?</p>
           
               <p class="txtQuestions">Health Problems</p>
               <asp:RadioButtonList ID="rblCPFS5Health" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList>

               <p class="txtQuestions">Chronic Pain</p>
               <asp:RadioButtonList ID="rblCPFS5Pain" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList>

               <p class="txtQuestions">Lack of Strength or Endurance</p>
               <asp:RadioButtonList ID="rblCPFS5Strength" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 
         
               <p class="txtQuestions">Lack of Flexibility or Balance</p>
               <asp:RadioButtonList ID="rblCPFS5Flex" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 

               <p class="txtQuestions">Other</p>
               <asp:RadioButtonList ID="rblCPFS5Other" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 
           
        <p class="txtQuestions">If other, please explain</p><br />
        <asp:TextBox ID="txtCPFS5Other" runat="server" class="txtMargin"></asp:TextBox>
      </asp:Panel>

       <p class="txtQuestions">6a. Do own shopping for groceries or clothes<span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblCPFS6" runat="server" class="txtMargin" AutoPostBack="true" OnSelectedIndexChanged="rblCPFS6_SelectedIndexChanged">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes, with difficulty" Value="Yes, with difficulty" />
                <asp:ListItem Text="Yes" Value="Yes" />
         </asp:RadioButtonList>
      <asp:Panel ID="panCPFS6" runat="server" Visible="False"> 
        <p class="txtQuestions">6b. Why are you unable? OR Why do you have difficulty?</p>
           
               <p class="txtQuestions">Health Problems</p>
               <asp:RadioButtonList ID="rblCPFS6Health" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList>

               <p class="txtQuestions">Chronic Pain</p>
               <asp:RadioButtonList ID="rblCPFS6Pain" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList>

               <p class="txtQuestions">Lack of Strength or Endurance</p>
               <asp:RadioButtonList ID="rblCPFS6Strength" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 
         
               <p class="txtQuestions">Lack of Flexibility or Balance</p>
               <asp:RadioButtonList ID="rblCPFS6Flex" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 

               <p class="txtQuestions">Other</p>
               <asp:RadioButtonList ID="rblCPFS6Other" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 
           
        <p class="txtQuestions">If other, please explain</p><br />
        <asp:TextBox ID="txtCPFS6Other" runat="server" class="txtMargin"></asp:TextBox>
      </asp:Panel>

        <p class="txtQuestions">7a. Walk 1/2 mile (6-7 blocks) <span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblCPFS7" runat="server" class="txtMargin" AutoPostBack="true" OnSelectedIndexChanged="rblCPFS7_SelectedIndexChanged">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes, with difficulty" Value="Yes, with difficulty" />
                <asp:ListItem Text="Yes" Value="Yes" />
         </asp:RadioButtonList>
     <asp:Panel ID="panCPFS7" runat="server" Visible="False"> 
        <p class="txtQuestions">7b. Why are you unable? OR Why do you have difficulty?</p>
           
               <p class="txtQuestions">Health Problems</p>
               <asp:RadioButtonList ID="rblCPFS7Health" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList>

               <p class="txtQuestions">Chronic Pain</p>
               <asp:RadioButtonList ID="rblCPFS7Pain" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList>

               <p class="txtQuestions">Lack of Strength or Endurance</p>
               <asp:RadioButtonList ID="rblCPFS7Strength" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 
         
               <p class="txtQuestions">Lack of Flexibility or Balance</p>
               <asp:RadioButtonList ID="rblCPFS7Flex" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 

               <p class="txtQuestions">Other</p>
               <asp:RadioButtonList ID="rblCPFS7Other" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 
           
        <p class="txtQuestions">If other, please explain</p><br />
        <asp:TextBox ID="txtCPFS7Other" runat="server" class="txtMargin"></asp:TextBox>
      </asp:Panel>

        <p class="txtQuestions">8a. Walk 1 mile (12-14 blocks) <span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblCPFS8" runat="server" class="txtMargin" AutoPostBack="true" OnSelectedIndexChanged="rblCPFS8_SelectedIndexChanged">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes, with difficulty" Value="Yes, with difficulty" />
                <asp:ListItem Text="Yes" Value="Yes" />
         </asp:RadioButtonList>
     <asp:Panel ID="panCPFS8" runat="server" Visible="False">
        <p class="txtQuestions">8b. Why are you unable? OR Why do you have difficulty?</p>
           
               <p class="txtQuestions">Health Problems</p>
               <asp:RadioButtonList ID="rblCPFS8Health" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList>

               <p class="txtQuestions">Chronic Pain</p>
               <asp:RadioButtonList ID="rblCPFS8Pain" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList>

               <p class="txtQuestions">Lack of Strength or Endurance</p>
               <asp:RadioButtonList ID="rblCPFS8Strength" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 
         
               <p class="txtQuestions">Lack of Flexibility or Balance</p>
               <asp:RadioButtonList ID="rblCPFS8Flex" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 

               <p class="txtQuestions">Other</p>
               <asp:RadioButtonList ID="rblCPFS8Other" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 
           
        <p class="txtQuestions">If other, please explain</p><br />
        <asp:TextBox ID="txtCPFS8Other" runat="server" class="txtMargin"></asp:TextBox>
      </asp:Panel>

        <p class="txtQuestions">9a. Lift and carry 10 pounds (full bag of groceries)<span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblCPFS9" runat="server" class="txtMargin" AutoPostBack="true" OnSelectedIndexChanged="rblCPFS9_SelectedIndexChanged">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes, with difficulty" Value="Yes, with difficulty" />
                <asp:ListItem Text="Yes" Value="Yes" />
         </asp:RadioButtonList>
     <asp:Panel ID="panCPFS9" runat="server" Visible="False">

        <p class="txtQuestions">9b. Why are you unable? OR Why do you have difficulty?</p>
           
               <p class="txtQuestions">Health Problems</p>
               <asp:RadioButtonList ID="rblCPFS9Health" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList>

               <p class="txtQuestions">Chronic Pain</p>
               <asp:RadioButtonList ID="rblCPFS9Pain" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList>

               <p class="txtQuestions">Lack of Strength or Endurance</p>
               <asp:RadioButtonList ID="rblCPFS9Strength" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 
         
               <p class="txtQuestions">Lack of Flexibility or Balance</p>
               <asp:RadioButtonList ID="rblCPFS9Flex" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 

               <p class="txtQuestions">Other</p>
               <asp:RadioButtonList ID="rblCPFS9Other" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 
           
        <p class="txtQuestions">If other, please explain</p><br />
        <asp:TextBox ID="txtCPFS9Other" runat="server" class="txtMargin"></asp:TextBox>
      </asp:Panel>

        <p class="txtQuestions">10a. Lift and carry 25 pounds (medium to large suitcase)<span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblCPFS10" runat="server" class="txtMargin" AutoPostBack="true" OnSelectedIndexChanged="rblCPFS10_SelectedIndexChanged">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes, with difficulty" Value="Yes, with difficulty" />
                <asp:ListItem Text="Yes" Value="Yes" />
         </asp:RadioButtonList>
    <asp:Panel ID="panCPFS10" runat="server" Visible="False">
        <p class="txtQuestions">10b. Why are you unable? OR Why do you have difficulty?</p>
           
               <p class="txtQuestions">Health Problems</p>
               <asp:RadioButtonList ID="rblCPFS10Health" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList>

               <p class="txtQuestions">Chronic Pain</p>
               <asp:RadioButtonList ID="rblCPFS10Pain" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList>

               <p class="txtQuestions">Lack of Strength or Endurance</p>
               <asp:RadioButtonList ID="rblCPFS10Strength" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 
         
               <p class="txtQuestions">Lack of Flexibility or Balance</p>
               <asp:RadioButtonList ID="rblCPFS10Flex" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 

               <p class="txtQuestions">Other</p>
               <asp:RadioButtonList ID="rblCPFS10Other" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 
           
        <p class="txtQuestions">If other, please explain</p><br />
        <asp:TextBox ID="txtCPFS10Other" runat="server" class="txtMargin"></asp:TextBox>
      </asp:Panel>

       <p class="txtQuestions">11a. Do most heavy household chores - like scrubbing floors, vacuuming, raking leaves<span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblCPFS11" runat="server" class="txtMargin" AutoPostBack="true" OnSelectedIndexChanged="rblCPFS11_SelectedIndexChanged">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes, with difficulty" Value="Yes, with difficulty" />
                <asp:ListItem Text="Yes" Value="Yes" />
         </asp:RadioButtonList>

     <asp:Panel ID="panCPFS11" runat="server" Visible="False">
        <p class="txtQuestions">11b. Why are you unable? OR Why do you have difficulty?</p>
           
               <p class="txtQuestions">Health Problems</p>
               <asp:RadioButtonList ID="rblCPFS11Health" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList>

               <p class="txtQuestions">Chronic Pain</p>
               <asp:RadioButtonList ID="rblCPFS11Pain" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList>

               <p class="txtQuestions">Lack of Strength or Endurance</p>
               <asp:RadioButtonList ID="rblCPFS11Strength" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 
         
               <p class="txtQuestions">Lack of Flexibility or Balance</p>
               <asp:RadioButtonList ID="rblCPFS11Flex" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 

               <p class="txtQuestions">Other</p>
               <asp:RadioButtonList ID="rblCPFS11Other" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 
           
        <p class="txtQuestions">If other, please explain</p><br />
        <asp:TextBox ID="txtCPFS11Other" runat="server" class="txtMargin"></asp:TextBox>
      </asp:Panel>

        <p class="txtQuestions">12a. Do strenuous activities - like hiking, digging in garden, moving heavy objects, bicycling, aerobic dance exercises, strenuous calisthenics, etc.<span style="color: rgb(219, 79, 73)">*</span></p>
         <asp:RadioButtonList ID="rblCPFS12" runat="server" class="txtMargin" AutoPostBack="true" OnSelectedIndexChanged="rblCPFS12_SelectedIndexChanged">
                <asp:ListItem Text="No" Value="No" />
                <asp:ListItem Text="Yes, with difficulty" Value="Yes, with difficulty" />
                <asp:ListItem Text="Yes" Value="Yes" />
         </asp:RadioButtonList>
    <asp:Panel ID="panCPFS12" runat="server" Visible="False">
        <p class="txtQuestions">12b. Why are you unable? OR Why do you have difficulty?</p>
           
               <p class="txtQuestions">Health Problems</p>
               <asp:RadioButtonList ID="rblCPFS12Health" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList>

               <p class="txtQuestions">Chronic Pain</p>
               <asp:RadioButtonList ID="rblCPFS12Pain" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList>

               <p class="txtQuestions">Lack of Strength or Endurance</p>
               <asp:RadioButtonList ID="rblCPFS12Strength" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 
         
               <p class="txtQuestions">Lack of Flexibility or Balance</p>
               <asp:RadioButtonList ID="rblCPFS12Flex" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 

               <p class="txtQuestions">Other</p>
               <asp:RadioButtonList ID="rblCPFS12Other" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
               </asp:RadioButtonList> 
           
        <p class="txtQuestions">If other, please explain</p><br />
        <asp:TextBox ID="txtCPFS12Other" runat="server" class="txtMargin"></asp:TextBox>
       </asp:Panel>
        
     </div>

      
     <div class="container">
       <p class="txtTitle">Resting Vitals</p>
       <p class="txtQuestions">Resting pulse rate (bpm)</p><br />
            <asp:TextBox ID="txtRestPulse" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Resting SpO2 (%)</p><br />
            <asp:TextBox ID="txtSpO2" runat="server" class="txtMargin"></asp:TextBox>
     </div>

     <div class="container">
       <p class="txtTitle">Anthropometric Measures</p>
       <p class="txtQuestions">Height (cm)<span style="color: rgb(219, 79, 73)">*</span></p><br />
            <asp:TextBox ID="txtHeight" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Right Leg Length (cm)<span style="color: rgb(219, 79, 73)">*</span></p><br />
            <asp:TextBox ID="txtRightLeg" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Left Leg Length (cm)<span style="color: rgb(219, 79, 73)">*</span></p><br />
            <asp:TextBox ID="txtLeftLeg" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Weight (kg)<span style="color: rgb(219, 79, 73)">*</span></p><br />
            <asp:TextBox ID="txtWeight" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Waist Circumference (cm)<span style="color: rgb(219, 79, 73)">*</span></p><br />
            <asp:TextBox ID="txtWaist" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Hip Circumference (cm)<span style="color: rgb(219, 79, 73)">*</span></p><br />
            <asp:TextBox ID="txtHip" runat="server" class="txtMargin"></asp:TextBox>
     </div>

     <div class="container">
       <p class="txtTitle">Grip Strength</p>
       <p class="txtQuestions">Dominant hand<span style="color: rgb(219, 79, 73)">*</span></p>
            <asp:RadioButtonList ID="rblGripStrength" runat="server" class="txtMargin">
                <asp:ListItem Text="Right" Value="No" />
               <asp:ListItem Text="Left" Value="1" />
            </asp:RadioButtonList> 
       <p class="txtQuestions">Grip strength (kg)</p>
         <p id="definition">Enter the best of two measurements</p><br />
            <asp:TextBox ID="txtGripStrength" runat="server" class="txtMargin"></asp:TextBox>
      </div>

     <div class="container">
       <p class="txtTitle">Chair Stand</p>
       <p class="txtQuestions">Was able to complete the chair stand task</p>
            <asp:RadioButtonList ID="rblChairStand" runat="server" class="txtMargin">
                <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
            </asp:RadioButtonList> 
       <p class="txtQuestions">Number of Chair Stands</p><br />
            <asp:TextBox ID="txtChairStands" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Number of Chair Sits</p><br />
            <asp:TextBox ID="txtChairSits" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Average time to stand (s)</p><br />
            <asp:TextBox ID="txtTimeToStand" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Average time to sit (s)</p><br />
            <asp:TextBox ID="txtTimeToSit" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Stand time SD (s)</p><br />
            <asp:TextBox ID="txtStandTimeSD" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Sit time SD (s)</p><br />
            <asp:TextBox ID="txtSitTimeSD" runat="server" class="txtMargin"></asp:TextBox>
     </div>
        
     <div class="container">
       <p class="txtTitle">8-Ft Up-and-Go</p>
       <p class="txtQuestions">Was able to complete the up-and-go task</p>
            <asp:RadioButtonList ID="rblUpAndGo" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
            </asp:RadioButtonList> 
       <p class="txtQuestions">Total Time (s)</p><br />
            <asp:TextBox ID="txtUpAndGoTime" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Stand Time (s)</p><br />
            <asp:TextBox ID="txtUpAndGoStandTime" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Sit Time (s)</p><br />
            <asp:TextBox ID="txtUpAndGoSitTime" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Gait Speed 1 (m/s)</p><br />
            <asp:TextBox ID="txtGaitSpeed1" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Gait Speed 2 (m/s)</p><br />
            <asp:TextBox ID="txtGaitSpeed2" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Turn Duration (s)</p><br />
            <asp:TextBox ID="txtTurnDuration" runat="server" class="txtMargin"></asp:TextBox>
     </div>

     <div class="container">
       <p class="txtTitle">Lift and Carry</p>
       <p class="txtQuestions">Was able to complete the 10 pound lift and carry task</p>
            <asp:RadioButtonList ID="rbl10LAndC" runat="server" class="txtMargin">
                 <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
            </asp:RadioButtonList> 
       <p class="txtQuestions">10 Pound Lift and carry time (s)</p><br />
            <asp:TextBox ID="txt10LAndCTime" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Was able to complete the 25 pound lift and carry task</p>
            <asp:RadioButtonList ID="rbl25LAndC" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
            </asp:RadioButtonList> 
       <p class="txtQuestions">25 Pound Lift and carry time (s)</p><br />
            <asp:TextBox ID="txt25LAndCTime" runat="server" class="txtMargin"></asp:TextBox>
     </div>

     <div class="container">
       <p class="txtTitle">400 Meter Walk Test</p>
       <p class="txtQuestions">Was able to complete the 400 meters without stopping<span style="color: rgb(219, 79, 73)">*</span></p>
            <asp:RadioButtonList ID="rbl400Meters" runat="server" class="txtMargin">
               <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
            </asp:RadioButtonList>
       <p class="txtQuestions">Course length in meters</p>
            <asp:RadioButtonList ID="rblCourseLength" runat="server" class="txtMargin">
               <asp:ListItem Text="16" Value="16" />
               <asp:ListItem Text="20" Value="20" />
               <asp:ListItem Text="25" Value="25" />
            </asp:RadioButtonList> 
       <p class="txtQuestions">Time to complete 400 meters (s)</p><br />
            <asp:TextBox ID="txtTime400Meters" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Gait Speed Average (m/s)</p><br />
            <asp:TextBox ID="txtGaitSpeedAvg" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Gait Speed Standard Deviation (m/s)</p><br />
            <asp:TextBox ID="txtGaitSpeedSD" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Cadence Average (steps/min)</p><br />
            <asp:TextBox ID="txtCadenceAvg" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Cadence Standard Deviation (steps/min)</p><br />
            <asp:TextBox ID="txtCadenceSD" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Turn Duration Average (s)</p><br />
            <asp:TextBox ID="txtTurnDurationAvg" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Turn Duration Standard Deviation (s)</p><br />
            <asp:TextBox ID="txtTurnDurationSD" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Left Turn Duration Average (s)</p><br />
            <asp:TextBox ID="txtLeftTurnDurationAvg" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Left Turn Duration Standard Deviation (s)</p><br />
            <asp:TextBox ID="txtLeftTurnDurationSD" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Right Turn Duration Average (s)</p><br />
            <asp:TextBox ID="txtRightTurnDurationAvg" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Right Turn Duration Standard Deviation (s)</p><br />
            <asp:TextBox ID="txtRightTurnDurationSD" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Exercise Pulse Rate (bpm)</p><br />
            <asp:TextBox ID="txtExercisePulseRate" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Exercise SpO2 (%)</p><br />
            <asp:TextBox ID="ExerciseSpO2" runat="server" class="txtMargin"></asp:TextBox>
      </div>

      <div class="container">
       <p class="txtTitle">Chair Sit and Reach</p>
       <p class="txtQuestions">Reach distance in cm (right knee extended)</p><br />
            <asp:TextBox ID="txtReachDistanceRight" runat="server" class="txtMargin"></asp:TextBox>
       <p class="txtQuestions">Reach distance in cm (left knee extended)</p><br />
            <asp:TextBox ID="txtReachDistanceLeft" runat="server" class="txtMargin"></asp:TextBox>
      </div>

      <div class="container">
       <p class="txtTitle">Overall Performance</p>
        <p class="txtQuestions">Participant was able to complete all tests without error or modification<span style="color: rgb(219, 79, 73)">*</span></p>
            <asp:RadioButtonList ID="rblOverallPerformance" runat="server" class="txtMargin">
                <asp:ListItem Text="No" Value="No" />
               <asp:ListItem Text="Yes" Value="1" />
            </asp:RadioButtonList> 
         <p class="txtQuestions">If there were any test errors or modifications, please explain here</p><br />
            <asp:TextBox ID="txtOverallPerformance" runat="server" class="txtMargin"></asp:TextBox>
          <br />
            <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
      </div>
      <div style="text-align: center;">
                    <asp:Button ID="btnSubmitAnnualForm" runat="server" Text="Submit" OnClick="btnSubmit_Click" />&nbsp;<asp:Button ID="menuBtn" runat="server" Text="Main Menu" OnClick="menuBtn_Click" />
&nbsp;<asp:Button ID="btnAnnualFormLogout" runat="server" OnClick="btnAnnualFormLogout_Click" Text="Logout" />
                    <br /><br />
      </div>
     </div>
    </div>
    </form>
</body>
</html>


