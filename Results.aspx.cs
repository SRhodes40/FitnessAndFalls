using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;            // DataSet
using System.Data.SqlClient;  // SqlConnection, SqlCommand, SqlDataReader
using System.Configuration;   // to get the connection from Web.config
using System.ComponentModel;  // DataObject, DataObjectMethod

public partial class Results : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;
    string connectionString;
    ListItem listItem;
    
    protected void resultsBtn_Click(object sender, EventArgs e)
    {
        DataSet ds;
        SqlDataAdapter da;
        string connectionString;
        connectionString = getConnectionString();
        da = new SqlDataAdapter("SELECT Participant.ParticipantID, Participant.FirstName, Participant.MiddleInitial, Participant.LastName, Participant.Suffix, Participant.PhoneNumber, Participant.Email, Participant.EmergencyContactFullName, Participant.EmergencyContactPhoneNumber, Participant.StartDate, FallDetails.CallDate, FallCalls.Falls, FallDetails.InterviewerFirstName, FallDetails.InterviewerLastName, FallDetails.FallTime, FallDetails.FallDescription, FallDetails.FallLocation, FallDetails.Injured, FallDetails.InjuryDesc, FallDetails.UsingAssistiveDevice, FallDetails.MedicationChange, FallDetails.MedChangeDesc, FallDetails.FallMonth FROM Participant INNER JOIN FallCalls ON Participant.ParticipantID = FallCalls.ParticipantID INNER JOIN FallDetails ON FallCalls.ParticipantID = FallDetails.ParticipantID AND FallCalls.CallDate = FallDetails.CallDate WHERE FallCalls.ParticipantID = " + participantTxt.Text, connectionString);
        ds = new DataSet();
        da.Fill(ds);
        participantDL.DataSource = ds;
        participantDL.DataBind();


        if (participantTxt.Text == "")
        {
            participantDL.Visible = false;
        }
        else if (participantTxt.Text == participantTxt.Text)
        {
            participantDL.Visible = true;
        }
    }
    private static string getConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["FitnessAndFallsConnectionString"].ConnectionString;
    }
}
