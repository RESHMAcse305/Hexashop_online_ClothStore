using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace online_ClothStore
{
    public partial class DisplayCart : System.Web.UI.Page
    {
        ConnectionCls cob = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridBind_Fun();
            }
        }
            public void GridBind_Fun()
            {
            string display = "select Cart_Id,Product_Name,Product_Image,Quantity,Totalprice from Cart_table LEFT JOIN Product_table ON Cart_table.Product_Id=Product_table.Product_Id  ";
            DataSet ds = cob.Fn_Dataset(display);

            if (ds != null && ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
                if (GridView1.Rows.Count > 0 && GridView1.FooterRow != null)
                {
                    GridView1.FooterRow.Cells[4].Text = "Grand Total";
                    GridView1.FooterRow.Cells[4].Font.Bold = true;
                    GridView1.FooterRow.Cells[6].Font.Bold = true;
                    GridView1.FooterRow.Cells[6].HorizontalAlign = HorizontalAlign.Left;

                    string gtotal = "select SUM(Totalprice) from Cart_table ";
                    string gt = cob.Fn_Scalar(gtotal);
                    GridView1.FooterRow.Cells[6].Text = gt;
                }
            }
            else
            {
                Label4.Text = "cart is empty";
                GridView1.DataSource = null;
                GridView1.DataBind();
            }
            
        }

        protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            int cid = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[cid].Value);
            string del = "delete from Cart_table where Cart_Id=" + getid + " ";
            int sid = cob.Fn_NonQuery(del);
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
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox txtqty = (TextBox)GridView1.Rows[i].Cells[5].Controls[0];

                string productid = "select Product_Id  FROM Cart_table where Cart_Id=" + getid + " ";
                string Prid = cob.Fn_Scalar(productid);
                int prid = Convert.ToInt32(Prid);
                string productprice = "select Product_Price from Product_table where Product_Id=" + prid + "";
                string st = cob.Fn_Scalar(productprice);
                int price = Convert.ToInt32(st);
                int quantity = Convert.ToInt32(txtqty.Text);
                int total = price * quantity;
                string updatedprice = "update Cart_table Set Quantity=" + txtqty.Text + ", Totalprice=" + total + "  where Cart_Id=" + getid + " ";
                int tp = cob.Fn_NonQuery(updatedprice);
                if (tp == 1)
                {
                string gtotal = "select SUM(Totalprice) from Cart_table ";
                string gt = cob.Fn_Scalar(gtotal);
                GridView1.FooterRow.Cells[6].Text = gt;

                Label4.Text = "Quantity & price updated";
                } 
                else
                {
                    Label4.Text = "invalid";
                }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cartdetails="select Cart_Id from Cart_table where User_Id="+Session["uid"]+" ";
            List<int> CartId = new List<int>();
            SqlDataReader dr = cob.Fn_Reader(cartdetails);
            while (dr.Read())
            {
                CartId.Add(Convert.ToInt32(dr["Cart_Id"]));
            }

            
            foreach(int i in CartId)
            {
                string selitem = "select * from Cart_table where Cart_Id=" + i + " and User_Id=" + Session["uid"] + "";
                SqlDataReader dr1 = cob.Fn_Reader(selitem);
                int pid = 0;
                int totalprice = 0;
                int quantity = 0;
                string Currentdate = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                string status = "order";
                while (dr1.Read())
                {
                    pid = Convert.ToInt32(dr1["Product_Id"]);
                    totalprice = Convert.ToInt32(dr1["Totalprice"]);
                    quantity = Convert.ToInt32(dr1["Quantity"]);
                }
               
                    string ins = "insert into Order_table values(" + Session["uid"] + "," + pid + ","+ quantity + "," + totalprice + " ,'"+ status + "','"+Currentdate+"')";
                    int ordertbl = cob.Fn_NonQuery(ins);
                    if (ordertbl == 1)
                    {
                    string delcart = "delete from Cart_table where Product_Id=" + pid + " and User_Id=" + Session["uid"] + " ";
                    int del = cob.Fn_NonQuery(delcart);
                       if (del == 1)
                        {
                            Label4.Text = "deleted successfully";
                        }
                    }
                    else
                    {
                        Label4.Text="Invalid order details";
                    }

            }
            string grandtotal = "select SUM(TotalPrice) from Order_table where User_Id=" + Session["uid"] + " ";
            string gt = cob.Fn_Scalar(grandtotal);
            string bstatus = "Payable amount";
            string Currentbilldate = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            if (gt != null)
            {
                string sbill = "insert into Bill_table values(" + Session["uid"] + "," + gt + ",'" + bstatus + "','" + Currentbilldate + "')";
                int bill = cob.Fn_NonQuery(sbill);
                if (bill == 1)
                {
                    Response.Redirect("ViewBill.aspx");
                }
                else
                {
                    Label4.Text = "Invalid";
                }


            }

        }
        }

     
    }

   