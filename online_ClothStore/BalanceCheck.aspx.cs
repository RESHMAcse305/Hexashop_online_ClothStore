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
    public partial class BalanceCheck : System.Web.UI.Page
    {
        ConnectionCls obj = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ServiceReference3.ServiceClient obj = new ServiceReference3.ServiceClient();
            string BalanceAmt = obj.AccountBalance(TextBox1.Text);
            

            Session["bal"] = BalanceAmt;
            if (!string.IsNullOrEmpty(BalanceAmt))
                {

                Label3.Text = BalanceAmt;
                }
            else
            {
                Label3.Text = "error in check balance amount";
            }
            

        }
    }
}