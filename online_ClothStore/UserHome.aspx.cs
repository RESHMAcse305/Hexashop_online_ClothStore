using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.ComponentModel;


namespace online_ClothStore
{
    public partial class UserHome : System.Web.UI.Page
    {
        ConnectionCls cob = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string dis = "select * from Category_table";
                DataSet ds = cob.Fn_Dataset(dis);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
         
        }
        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int getcatid = Convert.ToInt32(e.CommandArgument);
            string selpro = "select * from Category_table where Category_Id=" + getcatid + " ";
            string id = cob.Fn_Scalar(selpro);
            Session["catid"] = id;
            Response.Redirect("viewProduct.aspx");
         
            


        }
    }
}