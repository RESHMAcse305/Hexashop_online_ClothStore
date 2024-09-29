using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions; 

namespace online_ClothStore
{
    public partial class productProfile : System.Web.UI.Page
    {
        ConnectionCls ob = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sel = "select * from Product_table where Product_Id=" + Session["pid"] + " ";
                SqlDataReader dr = ob.Fn_Reader(sel); 
                while (dr.Read())
                {
                    Image1.ImageUrl = dr["Product_Image"].ToString();
                    Label1.Text = dr["Product_Name"].ToString();
                    Label2.Text = dr["Product_Price"].ToString();
                    Session["price"] = dr["Product_Price"].ToString();
                    Label3.Text = dr["Product_Description"].ToString();
                    Label6.Text = dr["Product_Stock"].ToString();
                    Session["Product_Stock"]= dr["Product_Stock"].ToString();
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
        
            //CART table insert
            if (Session["Product_Stock"] != null && Session["price"] != null )
            {
                int SessionPrice = Convert.ToInt32(Session["price"]);
                int Quantity= Convert.ToInt32(TextBox1.Text);
                int stock = Convert.ToInt32(Session["Product_Stock"]);
                int balance = stock - Quantity;
                if (balance>=0)
                {
                    int Totalprice = SessionPrice * Quantity;

                    string sel = "select max(Cart_Id) from Cart_table";
                    string cartid = ob.Fn_Scalar(sel);
                    int Cart_Id = 0;
                    if (cartid == "")
                    {
                        Cart_Id = 1;
                    }
                    else
                    {
                        int newcartid = Convert.ToInt32(cartid);
                        Cart_Id = newcartid + 1;
                    }
                    string Currentdate = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                    string cartins = "insert into Cart_table values(" + Cart_Id + "," + Session["uid"] + "," + Session["pid"] + "," + Quantity + "," + Totalprice + ",'" + Currentdate + "' )";
                    int i = ob.Fn_NonQuery(cartins);
                    if (i == 1)
                    {
                        Label4.Text = "insert successfully";
                        Response.Redirect("DisplayCart.aspx");
                    }
                    else
                    {
                        Label4.Text = " error! ";
                    }
                }
                else
                {
                    Label4.Text = "product is out of stock";
                }

            }
            else
            {
                Label4.Text = " invalid price";
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            //continue shopping
            Response.Redirect("UserHome.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("DisplayCart.aspx");
        }
    }
}