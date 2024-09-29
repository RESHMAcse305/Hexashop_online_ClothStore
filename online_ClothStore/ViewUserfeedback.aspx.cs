using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace online_ClothStore
{
    public partial class ViewUserfeedback : System.Web.UI.Page
    {
        ConnectionCls cob = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string feeds = "select Feedback_Id, Feedback_msg from Feedback_tbl where Replay_msg = 'Null' ";
                DataSet ds = cob.Fn_Dataset(feeds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }
        protected void LinkButton1_Command1(object sender, CommandEventArgs e)
        {
            int getid = Convert.ToInt32(e.CommandArgument);
           
            string uid = "select User_Id from Feedback_tbl where Feedback_Id=" + getid + " ";
            string userid = cob.Fn_Scalar(uid);


            if (userid != null)
            {
                int id = Convert.ToInt32(userid);
                string email = "select User_Name,User_email from User_table where User_Id=" + id + " ";
                SqlDataReader dr = cob.Fn_Reader(email);
                while (dr.Read())
                {
                    string userName = dr["User_Name"].ToString();
                    string userEmail = dr["User_email"].ToString();
                    Session["User_Name"] = userName;
                    Session["User_email"] = userEmail;
                    Session["Feedback_Id"] = getid;

                }

                Response.Redirect("SendMail.aspx");
            }
        }
    }
}