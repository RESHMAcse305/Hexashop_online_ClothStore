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
    public partial class EditProduct : System.Web.UI.Page
    {
        ConnectionCls ob = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridBind_Fun();
            }
            
        }
        public void GridBind_Fun()
        {
            string sel = "select * from  Product_table";
            DataSet ds = ob.Fn_Dataset(sel);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

            GridViewRow rw = GridView1.Rows[e.NewSelectedIndex];

            TextBox1.Text = rw.Cells[5].Text;
            TextBox2.Text = rw.Cells[6].Text;
            TextBox3.Text = rw.Cells[7].Text;
            TextBox4.Text = rw.Cells[9].Text;


            Image1.ImageUrl = rw.Cells[8].Text;


        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridBind_Fun();
        }


        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridBind_Fun();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridBind_Fun();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int Pid = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[Pid].Value);
            TextBox txtprice = (TextBox)GridView1.Rows[Pid].Cells[6].Controls[0];
            TextBox txtstock = (TextBox)GridView1.Rows[Pid].Cells[7].Controls[0];
            TextBox txtdes = (TextBox)GridView1.Rows[Pid].Cells[9].Controls[0];
            string updt = "update Product_table set Product_Price='" + txtprice.Text + "',Product_Stock='" + txtstock.Text + "',Product_Description='" + txtdes.Text + "' where Product_Id=" + getid + " ";
            int s = ob.Fn_NonQuery(updt);
            if (s == 1)
            {
                string str = "select Product_Name,Product_Price,Product_Stock,Product_Image,Product_Description from Product_table where Product_Id=" + getid + " ";
                SqlDataReader dr = ob.Fn_Reader(str);
                while (dr.Read())
                {
                    TextBox1.Text = dr["Product_Name"].ToString();
                    TextBox2.Text = dr["Product_Price"].ToString();
                    TextBox3.Text = dr["Product_Stock"].ToString();
                   
                    TextBox4.Text = dr["Product_Description"].ToString();

                    Image1.ImageUrl = dr["Product_Image"].ToString();

                }

                Label5.Text = "updated successfully";
            }

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
          
            int Pid = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[Pid].Value);
            string del = "delete from Product_table where Product_Id=" + getid + "  ";
            int x = ob.Fn_NonQuery(del);
            if (x == 1)
            {
                Label5.Text = "deleted successfully";
            }
        }
    }
}