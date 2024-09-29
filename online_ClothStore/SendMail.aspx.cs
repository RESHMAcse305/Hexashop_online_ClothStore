using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;

namespace online_ClothStore
{
    public partial class SendMail : System.Web.UI.Page
    { ConnectionCls ob = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = Session["User_email"]?.ToString();
            string name= Session["User_Name"]?.ToString();
            
            if (!string.IsNullOrEmpty(email))
            {
                TextBox1.Text = email;
            }
            if (!string.IsNullOrEmpty(name))
            {

                Label4.Text = " Hi " + name;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string rname = Session["User_Name"].ToString() ;
            string toemail = TextBox1.Text;
            string subject = TextBox2.Text;
            string body = TextBox3.Text;
            SendEmail2("Admin", "reshmacse257@gmail.com", "lgen yfie odcr hhre", rname, toemail, subject, body);
            int FId = Convert.ToInt32(Session["Feedback_Id"]);
            string Replaymsg = body;
            string updatefeed = "Update Feedback_tbl SET Replay_msg='" + Replaymsg + "', Feedback_status = 1 Where  Feedback_Id = " + FId + " ";
            int fbupdt = ob.Fn_NonQuery(updatefeed);
            if (fbupdt > 0)
            {
                Label4.Text = "Replay_msg updated";
                Response.Redirect("Login.aspx");

            }
            else
            {
                Label4.Text = "error in updating feedback status";
            }



        }
        public static void SendEmail2(string yourName, string yourGmailUserName, string yourGmailPassword, string toName, string toEmail, string subject, string body)

        {
            string to = toEmail; //To address    
            string from = yourGmailUserName; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = body;
            message.Subject = subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }
    }
}