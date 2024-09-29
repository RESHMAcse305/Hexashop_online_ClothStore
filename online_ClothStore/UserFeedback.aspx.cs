using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_ClothStore
{
    public partial class UserFeedback : System.Web.UI.Page
    {
        ConnectionCls obj = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Replay_msg = "Null";
            int status = 0;
            string feed = "insert into Feedback_tbl  values(" + Session["uid"] + ",'" + TextBox1.Text + "','" + Replay_msg + "', "+ status+" ) ";
            int fb = obj.Fn_NonQuery(feed);
            if (fb == 1)
            {
                Label2.Text = "feedback  Added successfully";
                Response.Redirect("UserHome.aspx");
            }
            else
            {
                Label2.Text = "invalid feedback";
            }
        }
    }
}