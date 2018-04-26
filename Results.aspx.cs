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
using System.IO;
using System.Drawing;



public partial class Results : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;
    string connectionString;
    ListItem listItem;

    protected void Page_Load(object sender, EventArgs e)
    {
        fallddResultsLbl.Visible = false;
        excelBtn.Visible = true;

        if (Session["username"] == null)
        {
            Response.Redirect("Default.aspx");
        }

        if(!Session["userType"].Equals("admin"))
        {
            Response.Redirect("MainMenu.aspx");
        }

        if (!IsPostBack)
        {
            this.BindGrid();
        }
    }
    private void BindGrid()
    {
        string strConnString = ConfigurationManager.ConnectionStrings["FitnessAndFallsConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(strConnString))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT Participant.Suffix, Participant.FirstName, Participant.MiddleInitial, Participant.LastName, FallDetails.CallDate, FallDetails.InterviewerFirstName, FallDetails.InterviewerLastName, FallDetails.FallTime, FallDetails.FallDescription, FallDetails.FallLocation, FallDetails.Injured, FallDetails.InjuryDesc, FallDetails.UsingAssistiveDevice, FallDetails.MedicationChange, FallDetails.MedChangeDesc, FallDetails.FallMonth, FallDetails.ParticipantID FROM FallDetails INNER JOIN Participant ON FallDetails.ParticipantID = Participant.ParticipantID"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        fallddgv.DataSourceID = null;
                        sda.Fill(dt);
                        fallddgv.DataSource = dt;
                        fallddgv.DataBind();
                    }
                }
            }
        }
    }

    //   POTENTIAL SOLUTION FOR EMPTY DATALIST ENTRIES

    //protected void participantDL_ItemDataBound1(object sender, DataListItemEventArgs e)
    //{
    //    if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
    //    {
    //        if ((String.IsNullOrEmpty(((Label)e.Item.FindControl("Label1")).Text)))
    //            e.Item.Visible = false;
    //    }
    //}

    protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        fallddgv.PageIndex = e.NewPageIndex;
        this.BindGrid();
        annualdatagGV.PageIndex = e.NewPageIndex;
        this.BindGrid();
    }


    protected void resultsBtn_Click(object sender, EventArgs e)
    {
        if (participantTxt.Text == "")
        {
            participantDL.Visible = false;
            fallddResultsLbl.Visible = false;
            Response.Redirect("~/Results.aspx");
        }
        else if (participantTxt.Text == participantTxt.Text)
        {
            participantDL.Visible = true;
            fallddResultsLbl.Visible = true;
        }

        DataSet ds;
        SqlDataAdapter da;
        string connectionString;
        connectionString = getConnectionString();
        da = new SqlDataAdapter("SELECT FallDetails.* FROM FallDetails WHERE FallDetails.ParticipantID = " + participantTxt.Text, connectionString);
        ds = new DataSet();
        da.Fill(ds);
        participantDL.DataSource = ds;
        participantDL.DataBind();
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

    protected void excelBtn_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=FallDetails.xls");
        Response.Charset = "";
        Response.ContentType = "application/vnd.ms-excel";
        using (StringWriter sw = new StringWriter())
        {
            HtmlTextWriter hw = new HtmlTextWriter(sw);

            //To Export all pages
            fallddgv.AllowPaging = false;
            this.BindGrid();

            fallddgv.HeaderRow.BackColor = Color.White;
            foreach (TableCell cell in fallddgv.HeaderRow.Cells)
            {
                cell.BackColor = fallddgv.HeaderStyle.BackColor;
            }
            foreach (GridViewRow row in fallddgv.Rows)
            {
                row.BackColor = Color.White;
                foreach (TableCell cell in row.Cells)
                {
                    if (row.RowIndex % 2 == 0)
                    {
                        cell.BackColor = fallddgv.AlternatingRowStyle.BackColor;
                    }
                    else
                    {
                        cell.BackColor = fallddgv.RowStyle.BackColor;
                    }
                    cell.CssClass = "textmode";
                }
            }

            fallddgv.RenderControl(hw);

            //style to format numbers to string
            string style = @"<style> .textmode { } </style>";
            Response.Write(style);
            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();
        }
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }

    protected void annualdatagGV_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void excelDataBtn_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=AnnualDataCollection.xls");
        Response.Charset = "";
        Response.ContentType = "application/vnd.ms-excel";
        using (StringWriter sw = new StringWriter())
        {
            HtmlTextWriter hw = new HtmlTextWriter(sw);

            //To Export all pages
            annualdatagGV.AllowPaging = false;
            this.BindGrid();

            annualdatagGV.HeaderRow.BackColor = Color.White;
            foreach (TableCell cell in annualdatagGV.HeaderRow.Cells)
            {
                cell.BackColor = annualdatagGV.HeaderStyle.BackColor;
            }
            foreach (GridViewRow row in annualdatagGV.Rows)
            {
                row.BackColor = Color.White;
                foreach (TableCell cell in row.Cells)
                {
                    if (row.RowIndex % 2 == 0)
                    {
                        cell.BackColor = annualdatagGV.AlternatingRowStyle.BackColor;
                    }
                    else
                    {
                        cell.BackColor = annualdatagGV.RowStyle.BackColor;
                    }
                    cell.CssClass = "textmode";
                }
            }

            annualdatagGV.RenderControl(hw);

            //style to format numbers to string
            string style = @"<style> .textmode { } </style>";
            Response.Write(style);
            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();
        }
    }

    protected void annualdatagGV_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }
}
