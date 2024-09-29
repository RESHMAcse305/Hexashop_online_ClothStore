using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_ClothStore
{
    public partial class Login : System.Web.UI.Page
    {
        ConnectionCls cobj = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "select Count(Reg_Id) from Login_table where Username='" + TextBox1.Text + "' and  Password= '" + TextBox2.Text + "' ";
            string cid = cobj.Fn_Scalar(str);
            int cid1 = Convert.ToInt32(cid);
            if (cid1 == 1)
            {
                string st = "select Reg_Id from Login_table where Username='"+TextBox1.Text+"'  and  Password='"+ TextBox2.Text+"' ";
                string regid = cobj.Fn_Scalar(st);
                Session["uid"] = regid;
                if (regid == "1")
                {
                    Label3.Text = "logged in successfully";
                }

                string str2 = "select Log_type from Login_table where Username='"+TextBox1.Text+"'  and  Password='"+ TextBox2.Text+"' ";
                string logtype = cobj.Fn_Scalar(str2);
                if (logtype == "admin")
                {
                    Label3.Text = "Admin";
                    Response.Redirect("AdminHomepage.aspx");
                }
                else if (logtype == "user")
                {

                    Label3.Text = "user";
                    Response.Redirect("UserHome.aspx");

                }
                else
                {
                    Label3.Text = "invalid username and password";
                }
            }
          
        }
    }
}