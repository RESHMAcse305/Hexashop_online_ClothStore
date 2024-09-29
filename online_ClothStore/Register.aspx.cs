using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_ClothStore
{
    public partial class Register : System.Web.UI.Page
    {
        ConnectionCls obj = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sel = "select Max(Reg_Id) from Login_table";
            string regid = obj.Fn_Scalar(sel);
            int reg_id = 0;
            if (regid == "")
            {
                reg_id = 1;
            }
            else
            {
                int newregid = Convert.ToInt32(regid);
                reg_id = newregid + 1;
            }
            string ins = "insert into User_table values(" + reg_id + ",'" + TextBox1.Text + "'," + TextBox2.Text + ",'" + TextBox3.Text + "','"+TextBox9.Text+"'," + TextBox4.Text + "," + TextBox5.Text + "," +
                                                         "'" + DropDownList1.SelectedItem.Value + "','" + DropDownList2.SelectedItem.Value + "','active')";
            int i = obj.Fn_NonQuery(ins);
            if (i == 1)
            {
                string inslog = "insert into Login_table values(" + reg_id + ",'" + TextBox6.Text + "','" + TextBox8.Text + "','user','active')";
                int j = obj.Fn_NonQuery(inslog);
                if (j == 1)
                {
                    Label8.Text = "inserted successfully";
                    Response.Redirect("Login.aspx");

                }

                
             }
        }
    }
}