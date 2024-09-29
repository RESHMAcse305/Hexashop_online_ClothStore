using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_ClothStore
{
    public partial class AddAccount : System.Web.UI.Page
    {
        ConnectionCls obj = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["uid"] != null)
            {
                string accountins = "insert into Account_tbl values(" + Session["uid"] + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','active')";
                int acc = obj.Fn_NonQuery(accountins);
                if (acc == 1)
                {
                    Label4.Text = "Account details added successfully";
                    Response.Redirect("BalanceCheck.aspx");
                    
                }
                else
                {
                    Label4.Text = "invalid";
                }
            }

        }
    }
}