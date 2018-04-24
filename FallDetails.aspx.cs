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
    int numfalls;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            txtInterviewDate.Text = Convert.ToString(Session["CallDate"]);
            txtParticipantID.Text = Convert.ToString(Session["PartID"]);
            txtInterviewerLastName.Text = Convert.ToString(Session["InterLast"]);
            txtInterviewerFirstName.Text = Convert.ToString(Session["InterFirst"]);
            numfalls = Convert.ToInt32(Session["NumFalls"]);
           
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
        if (numfalls > -1)
        {
            numfalls--;
            Session["NumFalls"] = numfalls;
            Response.AddHeader("REFRESH", "1;URL=test.aspx");

        }
        else
        {
            Response.Redirect("MainMenu.aspx");
            //Response.Write("move to next page");

        }


    }


    protected void btnSubmitFallDetails_Click(object sender, EventArgs e)
    {

        
        
        {
            conn = new SqlConnection(getConnectionString());
            conn.Open();
            cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = cmd.CommandText = "INSERT INTO FallDetails (InterviewerFirstName,InterviewerLastName,FallDiary.ParticipantID, CallDate,FallTime,FallMonth, FallDescription, FallLocation, Injured, InjuryDesc, UsingAssistiveDevice, MedicationChange, MedChangeDesc ) VALUES ('"
               + txtInterviewerFirstName.Text + "','" + txtInterviewerLastName.Text + "','" + txtParticipantID.Text + "','" + txtInterviewDate.Text + "','" + rblTimeOfDay.SelectedValue+ "','" + rblMonthOfFall.SelectedValue + "','" + txtDescribeFall.Text +   "','" + txtFallLocation.Text + "','" + rblResultOfFall.SelectedValue + "','" + txtDescribeInjury.Text + "','" + rblAssistiveDevice.SelectedValue + "','" + rblChangePrescription.SelectedValue + "','" + txtPrescriptionChanged.Text +  "')";
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
                lblStatus.Text = "Duplicate Entry was not added."; //"Participant ID does not exist or Date is incorrect."; 
               //"Duplicate Entry was not added.";
            }
           

            rblTimeOfDay.ClearSelection();
            rblMonthOfFall.ClearSelection();
            txtDescribeFall.Text = "";
            txtFallLocation.Text = "";
            rblResultOfFall.ClearSelection();
            txtDescribeInjury.Text = "";
            rblAssistiveDevice.ClearSelection();
            rblChangePrescription.ClearSelection();
            txtPrescriptionChanged.Text = "";




            conn.Close();

        } // end of Insert
        
    }
        private string getConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["FitnessAndFallsConnectionString"].ConnectionString;
        } // end of getConnectionString

    protected void menuBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/MainMenu.aspx");
    }
}


