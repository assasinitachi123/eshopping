using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.Cookies["user"]==null)
        {
            lbl_username.Text = "Guest";
            img_propic.ImageUrl = "~/img/default_profile_pic.jpg";
        }
        else
        {
            lbl_username.Text = Request.Cookies["user"].Value;
            img_propic.ImageUrl = Request.Cookies["image"].Value;
        }
    }
}