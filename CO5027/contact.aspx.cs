using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
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
            //create a new smtp client (this will connect to the mail server)
            SmtpClient client = new SmtpClient();
            //configure the smtp client to it knows how to connect to the mail server
            client.Host = "smtp.gmail.com";
            client.Port = 587;
            client.EnableSsl = true;

            //this particular email server requires us to login so
            //create a set of credentials with the relevent username and password
            System.Net.NetworkCredential userpass = new System.Net.NetworkCredential();
            userpass.UserName = "";
            userpass.Password = "";

            //ensure the smtp client has the newly created credentials
            client.Credentials = userpass;

            //create a new email from REPLACE_WITH_USER@gmail.com to recipient@domain.com
            MailMessage msg = new MailMessage("gamevolution3@gmail.com", "recipient@domain.com");

            //set the subject of the message, and set the body using the text from a text box
            msg.Subject = "A new email from the website";
            msg.Body = txtMessageBody.Text;

            //send the message
            client.Send(msg);

            //clear the message box (a better option would be to notify the user that
            //the email has been sent - either by displaying a message (e.g. a literal)
            //or by redirecting them to a 'Message sent' page
            txtMessageBody.Text = "";


        }
    }
}