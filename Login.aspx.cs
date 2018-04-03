using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    
    }

    protected void btnLoginPage_Click(object sender, EventArgs e)
    {
        if (txtUsername.Text == "Admin" && txtPassword.Text == "Admin1234")
        {
            Response.Redirect("~/FallDiary.aspx");
        }
        else
        {
            lblLogin.Text = "Invalid Username or Password";
        }
        if (txtUsername.Text == "DataEntry" && txtPassword.Text == "DataEntry1234")
        {
            Response.Redirect("~/FallDiary.aspx");
        }
        else
        {
            lblLogin.Text = "Invalid Username or Password";
        }
        if (txtUsername.Text == "Reports" && txtPassword.Text == "Reports1234")
        {
            Response.Redirect("~/FallDiary.aspx");
        }
        else
        {
            lblLogin.Text = "Invalid Username or Password";
        }
    }
}