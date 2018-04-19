using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MainMenu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }

    protected void partBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Participant.aspx");
    }

    protected void callBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/FallCalls.aspx");
    }

    protected void annualBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AnnualDataCollectionForm.aspx");
    }

    protected void resultsBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Results.aspx");
    }
}