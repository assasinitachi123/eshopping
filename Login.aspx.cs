using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Home\Develop\OnlineEShopping\App_Data\shopping.mdf;Integrated Security=True");
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.Open();
        lbl_msg.Text = "";
        lbl_success.Text = "";
    }
    public bool AllFieldsFilled()
    {
        if (txt_email.Text == "" || txt_pass.Text == "") return false;
        else return true;
    }
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
    protected void btn_login_Click(object sender, EventArgs e)
    {
        int ind=0;
        lbl_msg.Text = "";
        lbl_success.Text = "";
        string uid = txt_email.Text;
        string pass = txt_pass.Text;
        string uname = "";
        string upic = "";
        string query = "select u_pass, u_name, u_img from SiteUser where u_email='" + uid + "'";
        if (AllFieldsFilled())
        {
            da = new SqlDataAdapter(query, conn);
            da.Fill(ds, "tempPass");
            if (ds.Tables["tempPass"].Rows.Count == 0) lbl_msg.Text = "Invalid Email-Id";
            else
            {
                if (Encrypt(pass).Equals(ds.Tables["tempPass"].Rows[0][0].ToString()))
                {
                    lbl_success.Text = "Login Successful";
                    uname = ds.Tables["tempPass"].Rows[0][1].ToString();
                    ind = uname.IndexOf(" ");
                    if(ind>0)uname = uname.Substring(0, ind + 1);
                    upic = ds.Tables["tempPass"].Rows[0][2].ToString();
                    HttpCookie uMail = new HttpCookie("email", uid);
                    HttpCookie user = new HttpCookie("user", uname);
                    HttpCookie uimg = new HttpCookie("image", upic);
                    Response.Cookies.Add(uMail);
                    Response.Cookies.Add(user);
                    Response.Cookies.Add(uimg);
                    Response.Redirect("Home.aspx");
                }
                else lbl_msg.Text = "Wrong Password";
            }
        }
        else
        {
            lbl_msg.Text = "Please Enter All Fields";
        }
    }
    protected void btn_signUp_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }
}