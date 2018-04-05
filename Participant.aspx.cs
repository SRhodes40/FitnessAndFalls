using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;  // for ConfigurationManager
using System.Data.SqlClient; // for SqlConnection, SqlCommand, and SqlDataReader
using System.Data;           // for CommandType


public partial class Participant : System.Web.UI.Page
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

    protected void btnSubmitParticipant_Click(object sender, EventArgs e)
    {
        {
            conn = new SqlConnection(getConnectionString());
            conn.Open();
            cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO Participant (LastName, FirstName,MiddleInitial,Suffix,PhoneNumber, Email, EmergencyContactFullName, EmergencyContactPhoneNumber, StartDate  ) VALUES ('"
                 + txtParticipantLastName.Text + "','" + txtParticipantFirstName.Text + "','" + txtParticipantMiddle.Text + "','" + txtParticipantSuffix.Text + "','" + txtParticipantPhoneNumber.Text + "','" + txtParticipantEmail.Text + "','" + txtParticipantEmergencyContactFullName.Text + "','" + txtParticipantEmergencyContactPhoneNumber.Text + "','" + txtParticipantStartDate.Text + "')";
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
                lblStatus.Text = ex.Message;//"Person not found.";
            }
            conn.Close();

        } // end of Insert
    }
    private string getConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["FitnessAndFallsConnectionString"].ConnectionString;
    } // end of getConnectionString

    protected void btnViewAllParticipants_Click(object sender, EventArgs e)
    {
        if (this.gvAddParticipants.Visible == false)
        {
            this.gvAddParticipants.Visible = true;
        }
     
    }

    protected void btnHideParticipant_Click(object sender, EventArgs e)
    {
        if (this.gvAddParticipants.Visible == true)
        {
            this.gvAddParticipants.Visible = false;
        }
      
    }
}