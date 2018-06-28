using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

public partial class Registration : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Home\Develop\OnlineEShopping\App_Data\shopping.mdf;Integrated Security=True");
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.Open();
        lbl_msg.Text = "";
        lbl_success.Text = "";
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
    private bool ValidPhone(string ph)
    {
        int ctr=0;
        for(int i=0; i<ph.Length; i++)
        {
            if (ph[i] >= '0' && ph[i] <= '9') ctr++;
        }
        if (ctr == 10) return true;
        else return false;
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string mail = txt_email.Text;
        string q = "select u_name from SiteUser where u_email='" + mail + "'";
        da = new SqlDataAdapter(q, conn);
        da.Fill(ds, "u");
        if(ds.Tables["u"].Rows.Count==0)
        {
            if (IsValidEmailId(txt_email.Text))
            {
                String pass = txt_pass.Text;
                String pass_encr = Encrypt(pass);
                if (txt_phone.Text.Length == 10)
                {
                    if(ValidPhone(txt_phone.Text))
                    {
                        String img = "~/img/user/" + fu_img.FileName;
                        String house = txt_house.Text;
                        String street = txt_street.Text;
                        String city = txt_city.Text;
                        String pin = txt_pincode.Text;
                        String state = txt_state.Text;
                        String phone = txt_phone.Text;

                        String s = "select u_phone from SiteUser where u_email='" + mail + "'";
                        da = new SqlDataAdapter(s, conn);
                        da.Fill(ds, "t");
                        if (ds.Tables["t"].Rows.Count == 0)
                        {
                            String name = txt_name.Text;
                            if (fu_img.HasFile)
                            {
                                fu_img.SaveAs(MapPath("~/img/user/" + fu_img.FileName));
                                img_upload.ImageUrl = "~/img/user/" + fu_img.FileName;
                            }
                            String query = "insert into SiteUser values('" + mail + "','" + name + "','" + pass_encr + "'," + phone + ",'" + img + "','" + house + "','" + street + "','" + city + "','" + pin + "','" + state + "')";
                            cmd = new SqlCommand(query, conn);
                            cmd.ExecuteNonQuery();
                            lbl_success.Text = "You have been Registred Sucessfully.Click on the Login Button to Login";
                        }
                    }
                    else
                    {
                        lbl_msg.Text = "Enter a valid Phone Number";
                    }
                }
                else
                    lbl_msg.Text = "Enter a valid 10 digit Phone Number";  
            }
            else
            {
                lbl_msg.Text = "E-mail id is Not Valid";
            }
        }
        else
        {
            lbl_msg.Text = "The e-mail Id already exits";
        }
    }
    private bool IsValidEmailId(String InputEmail)
    {
        //Regex to validate Email Address
        Regex regex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
        Match match = regex.Match(InputEmail);
        if (match.Success)
        {
            return true;
        }
        else
        {
            return false;
        }
    }  
}