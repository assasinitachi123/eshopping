using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Home\Develop\OnlineEShopping\App_Data\shopping.mdf;Integrated Security=True");
    SqlDataAdapter da;
    SqlCommand cmd;
    DataSet ds = new DataSet();
    private static string prev;

    public string Encrypt(string p)
    {
        string s = p;
        string n = "";
        for (int i = 0; i < s.Length; i++)
        {

            if (s[i] >= 'A' && s[i] <= 'Z')
            {
                int f = s[i] + 4;
                if (f > 90) f = f - 26;
                n = n + (char)f;
            }
            else if (s[i] >= 'a' && s[i] <= 'z')
            {
                int f = s[i] + 4;
                if (f > 122) f = f - 26;
                n = n + (char)f;
            }
            else
            {
                int f = s[i] + 4;
                n = n + (char)f;
            }
        }
        return n;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Request.Cookies["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                lbl_username.Text = Request.Cookies["user"].Value;
                img_propic.ImageUrl = Request.Cookies["image"].Value;
                img_data.ImageUrl = Request.Cookies["image"].Value;
                conn.Open();
                string query = "select * from SiteUser where u_email='"+ Request.Cookies["email"].Value +"'";
                da = new SqlDataAdapter(query, conn);
                da.Fill(ds, "tempUser");
                prev = ds.Tables["tempUser"].Rows[0][2].ToString();
                txt_name.Text = ds.Tables["tempuser"].Rows[0][1].ToString();
                txt_email.Text = ds.Tables["tempuser"].Rows[0][0].ToString();
                txt_phone.Text = ds.Tables["tempuser"].Rows[0][3].ToString();
                txt_house.Text = ds.Tables["tempuser"].Rows[0][5].ToString();
                txt_street.Text = ds.Tables["tempuser"].Rows[0][6].ToString();
                txt_city.Text = ds.Tables["tempuser"].Rows[0][7].ToString();
                txt_pincode.Text = ds.Tables["tempuser"].Rows[0][8].ToString(); ;
                txt_state.Text = ds.Tables["tempuser"].Rows[0][9].ToString();
            }
        }   
    }
    protected void btn_edit_Click(object sender, EventArgs e)
    {
        conn.Open();
        string query="";
        string enc = Encrypt(txt_prevPass.Text);
        if(enc.Equals(prev))
        {
            if (fu_img.HasFile)
                {
                    fu_img.SaveAs(MapPath("~/img/user/" + fu_img.FileName));
                    img_data.ImageUrl = "~/img/user/" + fu_img.FileName;
                }
            HttpCookie p = new HttpCookie("image", img_data.ImageUrl);
            Response.Cookies.Add(p);
            query = "update SiteUser set u_pass='" + Encrypt(txt_newPass.Text) + "', u_phone=" + txt_phone.Text + ", u_img='" + img_data.ImageUrl + "', u_house='" + txt_house.Text + "', u_street='" + txt_street.Text + "', u_city='" + txt_city.Text + "', u_pincode='" + txt_pincode.Text + "', u_state='" + txt_state.Text + "' where u_email='" + txt_email.Text + "'";
            cmd = new SqlCommand(query, conn);
            cmd.ExecuteNonQuery();
            lbl_success.Text = "Your information has been updated";
        }
        else
        {
            lbl_msg.Text = "Your Previous password doesnt match. Try again";
        }
    }
}