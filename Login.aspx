<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <style type="text/css">
        form {
            margin-top: 15%;
        }
        body {
            background: url("img/dark_embroidery.png");
            min-width: 450px;
        }
        table {
            background: white;
        }
         tr {
            height: 35px;
        }
        tr td {
            font-size: 14px;
            text-align: center;
        }
        .auto-style1 {
            width: 60%;
            border-radius: 20px;
            margin-top: 0px;
            height: 210px;;
        }
        .tableField {
            text-align: center;
            height: 35px;
            width: 50%;
            color: #000000;
        }
        .tableData {
            text-align: center;
            width: 50%;
            color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
                <h2 style="color:white;">Login</h2>
        </div>
        
        <table align="center" class="auto-style1">
            <tr>
                <td class="tableField">Email ID</td>
                <td class="tableData">
                    <asp:TextBox ID="txt_email" runat="server" Width="80%" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="tableField">Password</td>
                <td class="tableData">
                    <asp:TextBox ID="txt_pass" runat="server" Width="80%" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="btn_login" runat="server" CssClass="btn btn-success" Text="Login" OnClick="btn_login_Click" />
                </td>
            </tr>
        </table>
        <br />
        <div style="text-align: center">
        <asp:Label runat="server" ID="lbl_msg" style="color: #FF0000"></asp:Label>

        <br />
        <asp:Label ID="lbl_success" runat="server" style="color: #006600"></asp:Label>
            <br />
            <div style="text-align: center">
                <p style="color:white;"><span class="auto-style4">Dont have an Account yet? </span> <asp:Button runat="server" ID="btn_signUp" Text="Sign Up" CssClass="btn btn-primary" OnClick="btn_signUp_Click" /></p>
        </div>

    </div>
    </form>
</body>
</html>
