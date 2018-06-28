<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Start.aspx.cs" Inherits="Start" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Start</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <style type="text/css">
        body
        {
            min-width: 450px;
        }
        .auto-style1 {
            width: 100%;
            height: 100px;
            margin-bottom: 15px;
            margin-top: 15px;
        }
        .auto-style2 {
            width: 35%;
            text-align: left;
        }
        .auto-style3 {
            width: 65%;
            text-align: right;
        }
        .last {
            margin-right: 30px;
            margin-left: 15px;
        }
        .penlast {
            margin-left: 15px;
        }
        .auto-style4 {
            width: 100%;
            height: 700px;
            background-image: url('img/Us-online-shopping.jpg');
            opacity: 0.8;
        }
        .auto-style5 {
            font-size: x-large;
            text-align: center;
            color: white;
            text-shadow: 0px 0px 3px black;
        }
        .auto-style4 h1 {
            color: white;
            text-align: center;
            text-shadow: 0px 0px 3px black;
            margin-bottom: 0px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div >
           
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" ImageAlign="Middle" ImageUrl="~/img/Logo.png" Width="100%" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="btn_login" runat="server" CssClass="btn btn-default" Text="Log In" OnClick="btn_login_Click" />
                        <asp:Button ID="btn_sign" runat="server" CssClass="btn btn-default penlast" Text="Sign Up" OnClick="btn_sign_Click" />
                        <asp:Button ID="btn_shop" runat="server" CssClass="btn btn-warning last" Text="Start Shopping" OnClick="btn_shop_Click"/>
                    </td>
                </tr>
            </table>
           
        </div>
    <table class="auto-style4">
        <tr>
            <td>
                <h1>Welcome to E-Mart</h1>
                <p class="auto-style5">Here you can shop all you want, I can guarentee an enjoyable
                    <br />
                    stay here at our site. Feel free to ask any questions as we are<br />
                    obliged to answer to all of your Queries.</p>
                <p class="auto-style5">Sign Up for free Today!!!
                </p> 
            </td>
        </tr>
    </table>        
    </form>
    </body>
</html>
