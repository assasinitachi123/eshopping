using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class BabyAndKids : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Home\Develop\OnlineEShopping\App_Data\shopping.mdf;Integrated Security=True");
    SqlDataAdapter da;
    SqlCommand cmd;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            if (Request.Cookies["user"] == null)
            {
                lbl_username.Text = "Guest";
                img_propic.ImageUrl = "~/img/default_profile_pic.jpg";
            }
            else
            {
                lbl_username.Text = Request.Cookies["user"].Value;
                img_propic.ImageUrl = Request.Cookies["image"].Value;
            }
            conn.Open();
            string query = "select * from BabyandKids";
            da = new SqlDataAdapter(query, conn);
            da.Fill(ds, "tempBabyProducts");
            ListView1.DataSource = ds.Tables["tempBabyProducts"];
            ListView1.DataBind();
        }   
    }
    protected void btn_buy_Command(object sender, CommandEventArgs e)
    {
        conn.Open();
        if (Request.Cookies["user"] == null)
            Response.Redirect("Login.aspx");
        if (e.CommandName == "Buy")
        {
            int tid;
            string pname = ((Label)ListView1.Items[Convert.ToInt32(e.CommandArgument)].FindControl("prod_name")).Text;
            string pmrp = ((Label)ListView1.Items[Convert.ToInt32(e.CommandArgument)].FindControl("prod_amount")).Text;
            string pimg = ((Image)ListView1.Items[Convert.ToInt32(e.CommandArgument)].FindControl("prod_img")).ImageUrl;
            string query = "select * from TransactionCart";
            da = new SqlDataAdapter(query, conn);
            da.Fill(ds, "temp");
            if(ds.Tables["temp"].Rows.Count==0)
            {
                tid = 0;
            }
            else
            {
                query = "select max(t_id) from TransactionCart";
                da = new SqlDataAdapter(query, conn);
                da.Fill(ds, "temp1");
                tid = Convert.ToInt32(ds.Tables["temp1"].Rows[0][0].ToString());
            }
            tid++;
            query = "insert into TransactionCart values(" + tid + ",'"+ Request.Cookies["email"].Value+"','" + Request.Cookies["user"].Value + "','" + pname + "','" + pmrp + "','" + pimg + "')";
            cmd = new SqlCommand(query, conn);
            cmd.ExecuteNonQuery();
            Response.Redirect("ShoppingCart.aspx");
        }
    }
    protected void btn_add_Command(object sender, CommandEventArgs e)
    {
        conn.Open();
        if (Request.Cookies["user"] == null)
            Response.Redirect("Login.aspx");
        if (e.CommandName == "AddToCart")
        {
            int tid;
            string pname = ((Label)ListView1.Items[Convert.ToInt32(e.CommandArgument)].FindControl("prod_name")).Text;
            string pmrp = ((Label)ListView1.Items[Convert.ToInt32(e.CommandArgument)].FindControl("prod_amount")).Text;
            string pimg = ((Image)ListView1.Items[Convert.ToInt32(e.CommandArgument)].FindControl("prod_img")).ImageUrl;
            string query = "select t_id from TransactionCart";
            da = new SqlDataAdapter(query, conn);
            da.Fill(ds, "tempT");
            if (ds.Tables["tempT"].Rows.Count == 0)
            {
                tid = 0;
            }
            else
            {
                query = "select max(t_id) from TransactionCart";
                da = new SqlDataAdapter(query, conn);
                da.Fill(ds, "temp1");
                tid = Convert.ToInt32(ds.Tables["temp1"].Rows[0][0].ToString());
            }
            tid++;
            query = "insert into TransactionCart values(" + tid + ",'" + Request.Cookies["email"].Value + "','" + Request.Cookies["user"].Value + "','" + pname + "','" + pmrp + "','" + pimg + "')";
            cmd = new SqlCommand(query, conn);
            cmd.ExecuteNonQuery();
        }  
    }
}