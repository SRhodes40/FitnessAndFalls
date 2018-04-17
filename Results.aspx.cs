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
        da = new SqlDataAdapter("SELECT FallDetails.ParticipantID, FallDetails.CallDate, FallDetails.InterviewerFirstName, FallDetails.InterviewerLastName, FallDetails.FallTime, FallDetails.FallDescription, FallDetails.FallLocation, FallDetails.Injured, FallDetails.InjuryDesc, FallDetails.UsingAssistiveDevice, FallDetails.MedicationChange, FallDetails.MedChangeDesc, FallDetails.FallMonth, FallDiary.ContactParticipant, FallDiary.FallenPastMonth, FallDiary.HowManyFallsLastMonth FROM FallDiary INNER JOIN FallDetails ON FallDiary.ParticipantID = FallDetails.ParticipantID AND FallDiary.InterviewDate = FallDetails.CallDate WHERE FallDiary.ParticipantID = " + participantTxt.Text, connectionString);
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

    protected void menuBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/MainMenu.aspx");
    }

    protected void participantDL_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
