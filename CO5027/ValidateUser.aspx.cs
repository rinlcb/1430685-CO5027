using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Web.Security;



namespace CO5027
{

    public partial class ValidateUser : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        SqlConnection connection = new SqlConnection("Data Source=SQL2014.studentwebserver.co.uk;Initial Catalog=db_1430685_CO5027_2;Persist Security Info=True;User ID=user_db_1430685_CO5027_2;Password=Assignment2016");
        SqlCommand cmd;
        SqlDataReader dr;

        protected void RegisterUser(object sender, EventArgs e)
        {
            Page.Validate("one");
            SqlCommand cmd = new SqlCommand();
            Guid guid;
            guid = Guid.NewGuid();
            string sql = "INSERT INTO dbo.RegisterUser (registeruser_id,registeruser_username,registeruser_email,registeruser_password";
            sql += " ,registeruser_createdon,registeruser_modifiedon,registeruser_rowstate)";
            sql += "VALUES (@ID,@Username,@Email,@Password,@Createdon,@Modifiedon,@Rowstate)";
            cmd.Parameters.AddWithValue("@ID", guid);
            cmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim());
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
            cmd.Parameters.AddWithValue("@Createdon", DateTime.Now);
            cmd.Parameters.AddWithValue("@Modifiedon", DateTime.Now);
            cmd.Parameters.AddWithValue("@Rowstate", 1);
            cmd.Connection = connection;
            cmd.CommandText = sql;
            connection.Open();
            try
            {
                cmd.ExecuteNonQuery();
                ErrorMessage.Text = "Registered successfully.";
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);

            }
        }
        protected void Login_Button(object sender,EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=SQL2014.studentwebserver.co.uk;Initial Catalog=db_1430685_CO5027_2;Persist Security Info=True;User ID=user_db_1430685_CO5027_2;Password=Assignment2016");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from dbo.RegisterUser where registeruser_username='" + UserName.Text + "' and registeruser_password ='" + Password.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            cmd.Parameters.AddWithValue("registeruser_username", txtUsername.Text);
            cmd.Parameters.AddWithValue("registeruser_password", txtPassword.Text);
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                FormsAuthentication.SetAuthCookie(txtUsername.Text, true);
                FormsAuthentication.RedirectFromLoginPage(txtPassword.Text, true);
                Response.Redirect("default.aspx");
            }
            else
            {
                Response.Write("<script>alert('Please enter valid Username and Password')</script>");
            }
        }
    }
}