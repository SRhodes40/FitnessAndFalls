﻿using System;
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
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;
    string connectionString;
    ListItem listItem;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }
    
    protected void resultsBtn_Click(object sender, EventArgs e)
    {
        DataSet ds;
        SqlDataAdapter da;
        string connectionString;
        connectionString = getConnectionString();
        da = new SqlDataAdapter("SELECT FallDetails.* FROM FallDetails WHERE FallDetails.ParticipantID = " + participantTxt.Text, connectionString);
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