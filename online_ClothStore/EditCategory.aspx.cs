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
    public partial class EditCategory : System.Web.UI.Page
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
            string st1 = "select * from Category_table";
            DataSet ds = cob.Fn_Dataset(st1);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridViewRow rw = GridView1.Rows[e.NewSelectedIndex];
            TextBox1.Text = rw.Cells[3].Text;
            TextBox2.Text = rw.Cells[4].Text;
            Image1.ImageUrl = rw.Cells[5].Text;
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
            int cid = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[cid].Value);
            TextBox txtdes = (TextBox)GridView1.Rows[cid].Cells[4].Controls[0];
            
            string stup = "update Category_table  set Category_Description='" + txtdes.Text+ "' where Category_Id=" + getid + " ";
            int ax = cob.Fn_NonQuery(stup);
            if (ax == 1)
            {
                string sel = "select Category_Name,Category_Description,Category_Image from Category_table  where Category_Id=" + getid + "";
                SqlDataReader dr = cob.Fn_Reader(sel);
                while (dr.Read())
                {
                    TextBox1.Text = dr["Category_Name"].ToString();
                    TextBox2.Text = dr["Category_Description"].ToString();
                    Image1.ImageUrl = dr["Category_Image"].ToString();
                }
                Label4.Text = "updated fuccessfully";
            }
        }
    }
}