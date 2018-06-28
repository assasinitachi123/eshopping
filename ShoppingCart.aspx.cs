using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ShoppingCart : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Home\Develop\OnlineEShopping\App_Data\shopping.mdf;Integrated Security=True");
    SqlDataAdapter da;
    SqlCommand cmd;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.Open();
        da = new SqlDataAdapter("select t_mrp from TransactionCart where t_email='" + Request.Cookies["email"].Value + "'", conn);
        da.Fill(ds, "test");
        if (ds.Tables["test"].Rows.Count == 0)
        {
            lbl_total.Text = "0.00";
        }
        else
        {
            string qsum = "select sum(t_mrp) from TransactionCart where t_email='" + Request.Cookies["email"].Value + "'";
            cmd = new SqlCommand(qsum, conn);
            lbl_total.Text = cmd.ExecuteScalar().ToString();
        }
        if(!Page.IsPostBack)
        {
            if (Request.Cookies["user"] == null)
            {
                Server.Transfer("Login.aspx");
            }
            else
            {
                lbl_username.Text = Request.Cookies["user"].Value;
                img_propic.ImageUrl = Request.Cookies["image"].Value;
            }
            string query = "select * from TransactionCart where t_email='" + Request.Cookies["email"].Value + "'";
            da = new SqlDataAdapter(query, conn);
            da.Fill(ds, "temp");
            GridView1.DataSource = ds.Tables["temp"];
            GridView1.DataBind();
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string r = ((Label)GridView1.Rows[e.RowIndex].FindControl("prod_name")).Text;
        string q = "delete from TransactionCart where t_prod='" + r + "'";
        cmd = new SqlCommand(q, conn);
        cmd.ExecuteNonQuery();
        GridView1.EditIndex = -1;
        show();
    }
    private void show()
    {
        string query = "select * from TransactionCart where t_email='" + Request.Cookies["email"].Value + "'";
        da = new SqlDataAdapter(query, conn);
        da.Fill(ds, "temp");
        string qsum = "select sum(t_mrp) from TransactionCart where t_email='" + Request.Cookies["email"].Value + "'";
        cmd = new SqlCommand(qsum, conn);
        lbl_total.Text = cmd.ExecuteScalar().ToString();
        GridView1.DataSource = ds.Tables["temp"];
        GridView1.DataBind();
    }
    protected void GridView1_DataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
    {
        int total = 0;
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            total += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Amount_column"));
        }
        if (e.Row.RowType == DataControlRowType.Footer)
        {
            Label lblAmount = (Label)e.Row.FindControl("amountLabe");
            lblAmount.Text = total.ToString();
        }
    }
    protected void btn_chk_Click1(object sender, EventArgs e)
    {
        string query = "delete from TransactionCart where t_email='" + Request.Cookies["email"].Value + "'";
        cmd = new SqlCommand(query, conn);
        cmd.ExecuteNonQuery();
        GridView1.EditIndex = -1;
        show();
        lbl_checkout.Text = "Your transaction is being processed.......!!!!!!";
        lbl_finish.Text = "Transaction complete. Thank you for shopping!";
    }
}