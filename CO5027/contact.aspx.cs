using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Windows.Forms;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CO5027
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSend_Click(object sender, EventArgs e)
        {
            
            SmtpClient mclients = new SmtpClient();
            mclients.Host = "smtp.gmail.com";
            mclients.Port = 587;
            mclients.EnableSsl = true;
            
            System.Net.NetworkCredential userpass = new System.Net.NetworkCredential();
            userpass.UserName = "gamevolution3@gmail.com";
            userpass.Password = "gamevolution123";
            
            mclients.Credentials = userpass;
            
            MailMessage msg = new MailMessage("gamevolution3@gmail.com", "recipient@domain.com");
            
            msg.Subject = "A new email from the website";
            msg.Body = txtMessageBody.Text;
            
            
            try
            {
                mclients.Send(msg);
                Response.Write("Your Email has been sent sucessfully -Thank You");
            }
            catch (Exception exc)
            {
                Response.Write("Send failure: " + exc.ToString());
            }

        }
    }
}