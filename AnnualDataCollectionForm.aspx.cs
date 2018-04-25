using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;  // for ConfigurationManager
using System.Data.SqlClient; // for SqlConnection, SqlCommand, and SqlDataReader
using System.Data;           // for CommandType

public partial class AnnualDataCollectionForm : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;
    string connectionString;
    ListItem listItem;
    int numRowsAffected;


    protected void rblBaseline_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        if (rblBaseline.SelectedValue.Equals("Yes"))
            {
                panBaseline.Visible = true;
                panBaseline.Focus();
            }
            else
            {
                panBaseline.Visible = false;
                panBaseline.Focus();
        }
        
    } // end of Yes/No changed

    

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        btnSubmitAnnualForm.Focus();
        {
            conn = new SqlConnection(getConnectionString());
            conn.Open();
            cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandType = CommandType.Text;
            try
            {
                cmd.CommandText = "INSERT INTO AnnualDataCollection (InvestigatorLastName, InvertigatorFirstName, TestLocation, readform, questionopportunity, voluntarilyagree, notgivinguprights, baselinetest, participantID, participantLastName, participantFirstName, participantPhoneNumber, participantEMail, emergencycontactnumber, knownHeathProblems, twoDaysAWeek, difficultyStanding, balanceDisorder, dizzinessChestTightness, heartDisease, heartMurmur, chestPain, palpitations, heartAttack, noDiagnosed, highBloodPressure, medsMedicalConditon, orthopedicCardiacSurgeries, ciDementia, yesExplain, wheelchair, cane, walker, noDevices, devicesExplain, medList, fallInPastSixMonths, fallValue, fallInjury, injuryExplain, personalNeeds, heathProblemsDress, chronicPainDress, lackStrengthDress, lackFelxibilityDress, otherDress, otherExplainDress, batheYourself, healthProblemsBathe, chronicPainBathe, lackStrengthBathe, lackFelxibilityBathe, otherBathe, otherExplainBathe, climbStairs, healthProblemsStairs, chronicPainStairs, lackStrengthStairs, lackFelxibilityStairs, otherStairs, otherExplainStairs, walkOutsideTwoBlocks, healthProblemsOutside, chronicPainOutside, lackStrengthOutside, lackFelxibilityOutside, otherOutside, otherExplainOutside, householdActivities, healthProblemsHouseHold, chronicPainHouseHold, lackStrengthHouseHold, lackFelxibilityHouseHold, otherHouseHold, otherExplainHouseHold, gorceriesorClothes, healthProblemsGorceries, chronicPainGorceries, lackStrengthGorceries, lackFelxibilityGorceries, otherGorceries, otherExplainGorceries, walkHalfMile, healthProblemsHalfMile, chronicPainHalfMile, lackStrengthHalfMile, lackFlexHalfMile, otherHalfMile, otherExplainHalfMile, walkOneMile, healthProblemsMile, chronicPainMile, lackStrengthMile, lackFelxibilityMile, otherMile, otherExplainMile, tenPounds, healthProblemsTen, chronicPainTen, lackStrengthTen, lackFelxibilityTen, otherTen, otherExplainTen, twentyfivePounts, healthProblems25, chronicPain25, lackStrength25, lackFelxibility25, other25, otherExplain25, heavyChores, healthProblemsChores, chronicPainChores, lackStrengthChores, lackFelxibilityChores, otherChores, otherExplainChores, strenuousActivites, healthProblemsActivites, chronicPainActivites, lackStrengthActivities, lackFelxibilityActivities, otherActivities, otherExplainActivities, Age, Gender, householdIncome, raceEthnicity, restingPulse, restingSpO2, height, rightLegLenght, leftLegLength, Weightkg, waistCirc, hipCirc, DomHand, gripStrength, chairStand, StandNum, SitNum, AverageStand, AverageSit, StandSD, SitSD, upandgoComplete, totalTime, upStandTime, upSitTime, gaitSpeed1, gaitSpeed2, turnDuration, ableToComplete10Lift, TenPoundLiftTime, ableToComplete25Lift, TwentyfivePoundLiftTime, complete400Meters, Courselength, FourHundredMeterTime, gaitSpdAvg, GaitSpdSD, CadenceAge, CadenceSD, TurnAvg, TurnSD, leftTurnAvg, leftTurnSD, rightTurnAvg, rightTurnSD, ExcersizePulseRate, ExcersizeSpO2, leftKneeReachDistance, rightKneeReachDistance, ParticipantCompleteAllTasks, testErrorsIfAny ) VALUES ('"
                    + txtInvestigatorLastName.Text + "','" + txtInvestigatorFirstName.Text + "','" + rblLocation.SelectedValue + "','" + txtConsentRead.Text + "','" + txtConsentQuestions.Text + "','" + txtConsentVoluntary.Text + "','" + txtConsentRights.Text + "','" + rblBaseline.SelectedValue + "','" + Convert.ToInt64(txtParticipantID.Text) + "','" + txtParticipantLastName.Text + "','" + txtParticipantFirstName.Text + "','" + txtParticipantPhone.Text + "','" + txtParticipantEmail.Text + "','" + txtEmergencyPhone.Text + "','" + rblHealthProblems.SelectedValue + "','" + rblContinousActivity.SelectedValue + "','" + rblDifficultyStanding.SelectedValue + "','" + rblBalanceDisorder.SelectedValue + "','" + rblIssuesExercise.SelectedValue + "','" + rblHeartDisease.SelectedValue + "','" + rblHeartMurmur.SelectedValue + "','" + rblChestPain.SelectedValue + "','" + rblPalpitations.SelectedValue + "','" + rblHeartAttack.SelectedValue + "','" + rblNoneDiagnosed.SelectedValue + "','" + rblHighBloodPressure.SelectedValue + "','" + rblConditionMedication.SelectedValue + "','" + rblMajorSurgery.SelectedValue + "','" + rblDementia.SelectedValue + "','" + txtYesExplain.Text + "','" + rblWheelchair.SelectedValue + "','" + rblCane.SelectedValue + "','" + rblWalker.SelectedValue + "','" + rblNoDevices.SelectedValue + "','" + txtDevicesExplain.Text + "','" + txtParticipantMeds.Text + "','" + rblFall6Months.SelectedValue + "','" + txtTimesFell + "','" + rblFallenInjury.SelectedValue + "','" + txtFallenInjury.Text + "','" + rblCPFS1.SelectedValue + "','" + rblCPFS1Health.SelectedValue + "','" + rblCPFS1Pain.SelectedValue + "','" + rblCPFS1Strength.SelectedValue + "','" + rblCPFS1Flex.SelectedValue + "','" + rblCPFS1Other.SelectedValue + "','" + txtCPFS1Other.Text + "','" + rblCPFS2.SelectedValue + "','" + rblCPFS2Health.SelectedValue + "','" + rblCPFS2Pain.SelectedValue + "','" + rblCPFS2Strength.SelectedValue + "','" + rblCPFSFlex.SelectedValue + "','" + rblCPFSOther.SelectedValue + "','" + txtCPFS2Other.Text + "','" + rblCPFS3.SelectedValue + "','" + rblCPFS3Health.SelectedValue + "','" + rblCPFS3Pain.SelectedValue + "','" + rblCPFS3Strength.SelectedValue + "','" + rblCPFS3Flex.SelectedValue + "','" + rblCPFS3Other.SelectedValue + "','" + txtCPFS3Other.Text + "','" + rblCPFS4.SelectedValue + "','" + rblCPFS4Health.SelectedValue + "','" + rblCPFS4Pain.SelectedValue + "','" + rblCPFS4Strength.SelectedValue + "','" + rblCPFS4Flex.SelectedValue + "','" + rblCPFS4Other.SelectedValue + "','" + txtCPFS4Other.Text + "','" + rblCPFS5.SelectedValue + "','" + rblCPFS5Health.SelectedValue + "','" + rblCPFS5Pain.SelectedValue + "','" + rblCPFS5Strength.SelectedValue + "','" + rblCPFS5Flex.SelectedValue + "','" + rblCPFS5Other.SelectedValue + "','" + txtCPFS5Other.Text + "','" + rblCPFS6.SelectedValue + "','" + rblCPFS6Health.SelectedValue + "','" + rblCPFS6Pain.SelectedValue + "','" + rblCPFS6Strength.SelectedValue + "','" + rblCPFS6Flex.SelectedValue + "','" + rblCPFS6Other.SelectedValue + "','" + txtCPFS6Other.Text + "','" + rblCPFS7.SelectedValue + "','" + rblCPFS7Health.SelectedValue + "','" + rblCPFS7Pain.SelectedValue + "','" + rblCPFS7Strength.SelectedValue + "','" + rblCPFS7Flex.SelectedValue + "','" + rblCPFS7Other.SelectedValue + "','" + txtCPFS7Other.Text + "','" + rblCPFS8.SelectedValue + "','" + rblCPFS8Health.SelectedValue + "','" + rblCPFS8Pain.SelectedValue + "','" + rblCPFS8Strength.SelectedValue + "','" + rblCPFS8Flex.SelectedValue + "','" + rblCPFS8Other.SelectedValue + "','" + txtCPFS8Other.Text + "','" + rblCPFS9.SelectedValue + "','" + rblCPFS9Health.SelectedValue + "','" + rblCPFS9Pain.SelectedValue + "','" + rblCPFS9Strength.SelectedValue + "','" + rblCPFS9Flex.SelectedValue + "','" + rblCPFS9Other.SelectedValue + "','" + txtCPFS9Other.Text + "','" + rblCPFS10.SelectedValue + "','" + rblCPFS10Health.SelectedValue + "','" + rblCPFS10Pain.SelectedValue + "','" + rblCPFS10Strength.SelectedValue + "','" + rblCPFS10Flex.SelectedValue + "','" + rblCPFS10Other.SelectedValue + "','" + txtCPFS10Other.Text + "','" + rblCPFS11.SelectedValue + "','" + rblCPFS11Health.SelectedValue + "','" + rblCPFS11Pain.SelectedValue + "','" + rblCPFS11Strength.SelectedValue + "','" + rblCPFS11Flex.SelectedValue + "','" + rblCPFS11Other.SelectedValue + "','" + txtCPFS11Other.Text + "','" + rblCPFS12.SelectedValue + "','" + rblCPFS12Health.SelectedValue + "','" + rblCPFS12Pain.SelectedValue + "','" + rblCPFS12Strength.SelectedValue + "','" + rblCPFS12Flex.SelectedValue + "','" + rblCPFS12Other.SelectedValue + "','" + txtCPFS12Other.Text + "','" + txtAge.Text + "','" + rblGender.SelectedValue + "','" + rblIncome.SelectedValue + "','" + rblEthnicity.SelectedValue + "','" + txtRestPulse.Text + "','" + txtSpO2.Text + "','" + txtHeight.Text + "','" + txtRightLeg.Text + "','" + txtLeftLeg.Text + "','" + txtWeight.Text + "','" + txtWaist.Text + "','" + txtHip.Text + "','" + rblGripStrength.SelectedValue + "','" + txtGripStrength.Text + "','" + rblChairStand.SelectedValue + "','" + txtChairStands.Text + "','" + txtChairSits.Text + "','" + txtTimeToStand.Text + "','" + txtTimeToSit.Text + "','" + txtStandTimeSD.Text + "','" + txtSitTimeSD.Text + "','" + rblUpAndGo.SelectedValue + "','" + txtUpAndGoTime.Text + "','" + txtUpAndGoStandTime.Text + "','" + txtUpAndGoSitTime.Text + "','" + txtGaitSpeed1.Text + "','" + txtGaitSpeed2.Text + "','" + txtTurnDuration.Text + "','" + rbl10LAndC.SelectedValue + "','" + txt10LAndCTime.Text + "','" + rbl25LAndC.SelectedValue + "','" + txt25LAndCTime.Text + "','" + rbl400Meters.SelectedValue + "','" + rblCourseLength.SelectedValue + "','" + txtTime400Meters.Text + "','" + txtGaitSpeedAvg.Text + "','" + txtGaitSpeedSD.Text + "','" + txtCadenceAvg.Text + "','" + txtCadenceSD.Text + "','" + txtTurnDurationAvg.Text + "','" + txtTurnDurationSD.Text + "','" + txtLeftTurnDurationAvg.Text + "','" + txtLeftTurnDurationSD.Text + "','" + txtRightTurnDurationAvg.Text + "','" + txtRightTurnDurationSD.Text + "','" + txtExercisePulseRate.Text + "','" + ExerciseSpO2.Text + "','" + txtReachDistanceLeft.Text + "','" + txtReachDistanceRight.Text + "','" + rblOverallPerformance.SelectedValue + "','" + txtOverallPerformance.Text + "' )";
            }
            catch (Exception ex)
            {
                lblStatus.Text = "Unable to submit. Please check your Participant ID.";//"Duplicate Entry was not added.";

            }
            
            //Response.Write(cmd.CommandText);

            try

            {
                numRowsAffected = cmd.ExecuteNonQuery();
                if (numRowsAffected == 1)
                {
                    lblStatus.Text = "Submitted";




                }
                else
                {
                    lblStatus.Text = "Submit Failed";
                }
            }
            catch (Exception ex)
            {
                lblStatus.Text = ex.Message;//"Duplicate Entry was not added.";
            }
            conn.Close();

        } // end of Insert
    }
    private string getConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["FitnessAndFallsConnectionString"].ConnectionString;
    } // end of getConnectionString

    protected void btnAnnualFormLogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
        
    }

    protected void menuBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/MainMenu.aspx");
    }
}