using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;  // for ConfigurationManager
using System.Data.SqlClient; // for SqlConnection, SqlCommand, and SqlDataReader
using System.Data;           // for CommandType

public partial class FallDetails : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;
    string connectionString;
    ListItem listItem;
    int numRowsAffected;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

<<<<<<< HEAD
    protected void btnSubmitFallDetails_Click(object sender, EventArgs e)
    {
        {
            conn = new SqlConnection(getConnectionString());
            conn.Open();
            cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = cmd.CommandText = "INSERT INTO FallDetails (InterviewerFirstName,InterviewerLastName,FallDiary.ParticipantID,CallDate,FallTime,MonthofFall, FallDescription, FallLocation, Injured, InjuryDesc, UsingAssistiveDevice, MedicationChange, MedChangeDesc ) VALUES ('"
               + txtInterviewerFirstName.Text + "','" + txtInterviewerLastName.Text + "','" + txtParticipantID.Text + "','" + txtInterviewDate + "','" + rblTimeOfDay.SelectedValue+ "','" + rblMonthOfFall.SelectedValue + "','" + txtDescribeFall.Text +   "','" + txtFallLocation.Text + "','" + rblResultOfFall.SelectedValue + "','" + txtDescribeInjury.Text + "','" + rblAssistiveDevice.SelectedValue + "','" + rblChangePrescription.SelectedValue + "','" + txtPrescriptionChanged.Text +  "')";
            Response.Write(cmd.CommandText);

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
    }
=======
    protected void btnFallDetailsLogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
}
>>>>>>> 23f231c073bb2aa503c1a1de7cc76dd0c97020de
