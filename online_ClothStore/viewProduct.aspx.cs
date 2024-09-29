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
    public partial class viewProduct : System.Web.UI.Page
    {
        ConnectionCls obj = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string viewPro = "select * from Product_table where Category_Id=" + Session["catid"] + " ";
                DataSet ds = obj.Fn_Dataset(viewPro);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int getpid = Convert.ToInt32(e.CommandArgument);
            string selpro = "select * from Product_table where Product_Id=" + getpid + " ";
            string pid = obj.Fn_Scalar(selpro);
            Session["pid"] = pid;
            Response.Redirect("productProfile.aspx");
        }
    }
}