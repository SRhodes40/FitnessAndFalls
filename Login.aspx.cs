using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    private static string getConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["FitnessAndFallsConnectionString"].ConnectionString;
    }

    protected void btnLoginPage_Click(object sender, EventArgs e)
    {
        String username = txtUsername.Text;
        String password = txtPassword.Text;

        SqlConnection con = new SqlConnection(getConnectionString());
        SqlCommand cmd = new SqlCommand("SELECT * FROM Login where Username LIKE @username and Password = @password;");
        cmd.Parameters.AddWithValue("@username", username);
        cmd.Parameters.AddWithValue("@password", password);
        cmd.Connection = con;
        con.Open();

        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        con.Close();

        bool loginSuccessful = ((ds.Tables.Count > 0) && (ds.Tables[0].Rows.Count > 0));

        if (loginSuccessful)
        {
            Console.WriteLine("Success!");
            Response.Redirect("~/MainMenu.aspx");
        }
        else
        {
            Console.WriteLine("Invalid username or password");
        }
    }
}