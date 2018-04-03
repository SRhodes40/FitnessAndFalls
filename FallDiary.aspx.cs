using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;  // for ConfigurationManager
using System.Data.SqlClient; // for SqlConnection, SqlCommand, and SqlDataReader
using System.Data;           // for CommandType

public partial class Fitness_and_Falls_FallDiary : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;
    string connectionString;
    ListItem listItem;
    int numRowsAffected;

    protected void Page_Load(object sender, EventArgs e)
    {
        //Hides questions based on whether or not interview made contact with participant
        if (this.rblContact.SelectedValue == "1")
        {
            panContact.Visible = true;
        }else
        {
            panContact.Visible = false;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        {
            conn = new SqlConnection(getConnectionString());
            conn.Open();
            cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandType = CommandType.Text;
           cmd.CommandText = "INSERT INTO FallDiary (InterviewerLastName, InterviewerFirstName,ParticipantID,ContactParticipant,FallenPastMonth, HowManyFallsLastMonth, InterviewDate  ) VALUES ('"
                + txtInterviewerLastName.Text + "','" + txtInterviewerFirstName.Text + "','" + txtParticipantID.Text + "','" + rblContact.SelectedValue + "','" + rblFallen.SelectedValue +   "','" + txtNumFallsFallDiary.Text +"','" + txtInterviewDate.Text  + "')";
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
