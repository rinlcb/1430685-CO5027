using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CO5027.Admin
{
    public partial class AdminAddProduct : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=SQL2014.studentwebserver.co.uk;Initial Catalog=db_1430685_CO5027_2;Persist Security Info=True;User ID=user_db_1430685_CO5027_2;Password=Assignment2016");
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
   

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (imageFileUploadControl.HasFile)
            {
                string plat = ddlPlatform.SelectedValue;
                string str = imageFileUploadControl.FileName;
                imageFileUploadControl.PostedFile.SaveAs(Server.MapPath(".") + "../../ProductImages/" + str);
                string path = "ProductImages/" + str.ToString();
                connection.Open();
                SqlCommand cmd = new SqlCommand("insert into dbo.GameProduct values('" + txtGame.Text + "','" + plat + "','" + txtPrice.Text + "','" + txtDateReg.Text + "','" + txtAvail.Text + "','" + txtDesc.Text + "','" + txtDateRel.Text + "','" + txtEdition.Text + "','" + path + "')", connection);                
                cmd.ExecuteNonQuery();
                connection.Close();
                lblResult.Visible = true;
                lblResult.Text = " The data has been stored successfully!";
            }
            else
            {
                lblResult.Text = "The data has not been stored successfully";

            }

        }
    }
}
