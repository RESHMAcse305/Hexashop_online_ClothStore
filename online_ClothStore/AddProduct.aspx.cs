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
    public partial class AddProduct : System.Web.UI.Page
    {
        ConnectionCls ob = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string str = "select Category_Id,Category_Name from  Category_table";
                DataSet ds = ob.Fn_Dataset(str);
                DropDownList1.DataSource = ds;
                DropDownList1.DataValueField = "Category_Id";
                DropDownList1.DataTextField = "Category_Name";
                DropDownList1.DataBind();
            }
        
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string pt = "~/Product_Photo/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(pt));

            string ins1 = "insert into Product_table values("+ DropDownList1.SelectedItem.Value +",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + pt + "','" + TextBox4.Text + "')";
            int x = ob.Fn_NonQuery(ins1);
            if (x == 1)
            {
                Label8.Text = "inserted successfully";
                Response.Redirect("EditProduct.aspx");
            }

        }

       
    }
}