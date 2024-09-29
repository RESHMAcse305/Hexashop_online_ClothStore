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
    public partial class ViewBill : System.Web.UI.Page
    {
        ConnectionCls ob = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               

                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "sp_GetBills";
                    cmd.Parameters.AddWithValue("@User_Id", Session["uid"]);
                    SqlDataReader dr = ob.Fn_spReader(cmd);
                    while (dr.Read())
                    {
                        Label2.Text = dr["Order_date"].ToString();
                    }
                    dr.Close();
                    DataSet ds = ob.Fn_spDataSet(cmd);
                    GridView1.DataSource = ds;
                    GridView1.DataBind();


                    if (GridView1.Rows.Count > 0)
                    {
                        string gtotal = "select SUM(Totalprice) from Order_table where   Order_status='order' and  User_Id=" + Session["uid"] + " ";
                        string gt = ob.Fn_Scalar(gtotal);
                        GridView1.FooterRow.Cells[3].Text = "Grand Total";
                        GridView1.FooterRow.Cells[3].Font.Bold = true;
                        GridView1.FooterRow.Cells[4].Font.Bold = true;
                        GridView1.FooterRow.Cells[4].HorizontalAlign = HorizontalAlign.Left;
                        GridView1.FooterRow.Cells[4].Text = gt;
                    }

                    string udata = "select User_Name,User_Phone,User_Address from  User_table  where User_Id=" + Session["uid"] + "";
                    SqlDataReader dr1 = ob.Fn_Reader(udata);
                    while (dr1.Read())
                    {
                        Label6.Text = dr1["User_Name"].ToString();
                        Label4.Text = dr1["User_Phone"].ToString();
                        Label7.Text = dr1["User_Address"].ToString();
                    }
                    dr.Close();
                
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddAccount.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("BalanceCheck.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {

                string sessionBalance = Session["bal"]?.ToString();
                Label8.Text = sessionBalance;

                if (string.IsNullOrEmpty(sessionBalance))
                {
                    Label4.Text = "Balance information is missing. Please check your account.";
                    return;
                }
                int bal = Convert.ToInt32(Session["bal"]);
                string gtotal = "select SUM(Totalprice) from Order_table where   Order_status='order'   and  User_Id=" + Session["uid"] + "  ";
                string gt = ob.Fn_Scalar(gtotal);
                if (string.IsNullOrEmpty(gt))
                {
                    Label8.Text = "Could not retrieve grand total.";
                    return;
                }
                int grandtotal = Convert.ToInt32(gt);
                if (bal > grandtotal)
                {
                    int newBalance = bal - grandtotal;
                    string newBal = newBalance.ToString();
                    string accupdt = "update Account_tbl SET Account_Balance='" + newBal + "' where User_Id=" + Session["uid"] + "  ";
                    int accbal = ob.Fn_NonQuery(accupdt);
                    if (accbal == 1)
                    {
                        Label8.Text = " balance updated in account table";


                        string orderupdt = "update Order_table SET Order_status='paid' where User_Id=" + Session["uid"] + " ";
                        int bills = ob.Fn_NonQuery(orderupdt);
                        if (bills > 0)
                        {
                        Label8.Text = "  order status updated successfully";
                        string selorder = "select Product_Id,Order_quantity from Order_table where Order_status='paid'  and User_Id=" + Session["uid"] + "";
                        List<int[]> productList = new List<int[]>();
                        SqlDataReader dr = ob.Fn_Reader(selorder);
                            while (dr.Read())
                            {
                            int PId = Convert.ToInt32(dr["Product_Id"]);  
                            int Quantity = Convert.ToInt32(dr["Order_quantity"]);
                            productList.Add(new int[] { PId, Quantity });

                        }
                        foreach (var item in productList)
                            {
                            int PId = item[0];          
                            int Quantity = item[1];

                            string selqty = "select Product_Stock from Product_table where Product_Id=" + PId + " ";
                            string pqty = ob.Fn_Scalar(selqty);
                            if (pqty!=null)
                            {
                                int Product_Stock = Convert.ToInt32(pqty);
                                if (Product_Stock >= Quantity)
                                {
                                    int qty = Product_Stock - Quantity;
                                    string quantity = qty.ToString();
                                    string stockupdate = "Update Product_table SET  Product_Stock="+ quantity + "  where Product_Id=" + PId + " ";
                                    int UP = ob.Fn_NonQuery(stockupdate);
                                    if (UP == 1)
                                    {
                                        Label8.Text = "stock updated successfully" + PId;
                                        string orders = "update Order_table SET Order_status='confirmed' where User_Id=" + Session["uid"] + " ";
                                        int odup = ob.Fn_NonQuery(orders);
                                        if (odup==1)
                                        {
                                            Label8.Text = "  order status updated successfully";
                                        }  
                                    }
                                    else
                                    {
                                        Label8.Text = "Insufficient stock for Product ID: " + PId;
                                    }
                                }
                                else
                                {
                                    Label8.Text = "Insufficient stock";
                                }
                               
                            }
                        }

                    }
                        else
                        {
                            Label8.Text = "Failed to update  orderstatus.Rows affected: " + bills;
                        }
                    }
                    else
                    {
                        Label8.Text = "Failed to update account balance.";
                    }

                }
                else
                {
                    Label8.Text = "insufficient Balance";
                }


            }

      
    }
    }



