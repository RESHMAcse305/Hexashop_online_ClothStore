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
    public partial class AddCategory : System.Web.UI.Page
    {
        ConnectionCls obj = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        
      
        protected void Button1_Click(object sender, EventArgs e)
        {
            string cphoto = "~/CategoryPhoto/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(cphoto));
            string sel = "insert into Category_table values('" + TextBox1.Text + "', '" + TextBox2.Text + "','" + cphoto + "','active' )";
            int ab = obj.Fn_NonQuery(sel);
            if (ab == 1)
            {
                Label5.Text = "new Category Added successfully";
                Response.Redirect("EditCategory.aspx");

            }
            else
            {
                Label5.Text = "invalid";
            }
        }

       
    }
}