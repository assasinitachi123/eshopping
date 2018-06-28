<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <style type="text/css">
        body {
            background: url("img/dark_embroidery.png");
            color: white;
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
            height: 510px;
        }
        .auto-style2 {
            width: 60%;
            border-radius: 20px;
            margin-top: 0px;
            height: 310px;
        }
        .tableField {
            text-align: center;
            height: 35px;
            width: 30%;
            color: #000000;
        }
        .tableData {
            text-align: center;
            width: 70%;
            color: #000000;
        }
        .Margin {
            margin-left: 25%;
        }
        .Floating {
            position: fixed;
            right: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="Floating pull-right">
            <p style="color: white;">Already a member? <a href="Login.aspx" style="color:white;"><span class="btn btn-primary">Login</span></a></p>
        </div>
    <div>
        <h2 style="text-align: center">Registration</h2>
        <div align="center">
            <asp:Label ID="lbl_success" runat="server" style="color: #006600"></asp:Label>
            <asp:Label runat="server" ID="lbl_msg" style="color: #FF0000"></asp:Label>
            <br /> 
        </div>
    <div >
        <h4 style="margin-left: 20%;">Personal Details:</h4>
        <table class="auto-style1" align="center" id="tbl_personal">
            <tr>
                <td class="tableField">Name</td>
                <td class="tableData">
                    <asp:TextBox ID="txt_name" runat="server" Width="80%" CssClass="form-control" TabIndex="1" Height="20px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_name" Display="Dynamic" ErrorMessage="RequiredField" style="color: #CC3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="tableField">E-mail ID</td>
                <td class="tableData">
                    <asp:TextBox ID="txt_email" runat="server" Width="80%" CssClass="form-control" TabIndex="2" Height="20px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_email" Display="Dynamic" ErrorMessage="RequiredField" style="color: #CC3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="tableField">Password</td>
                <td class="tableData">
                    <asp:TextBox ID="txt_pass" runat="server" Width="80%"  CssClass="form-control" TabIndex="3" TextMode="Password" Height="20px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_pass" Display="Dynamic" ErrorMessage="RequiredField" style="color: #CC3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="tableField">Confirm Password</td>
                <td class="tableData">
                    <asp:TextBox ID="txt_passConfirm" runat="server" Width="80%"  CssClass="form-control" TabIndex="3" TextMode="Password" Height="20px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_pass" ControlToValidate="txt_passConfirm" Display="Dynamic" ErrorMessage="Password Do Not Match" style="color: #CC3300">  *</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="tableField">Phone Number</td>
                <td class="tableData">
                    <asp:TextBox ID="txt_phone" runat="server" Width="80%"  CssClass="form-control" TabIndex="3" Height="20px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_phone" Display="Dynamic" ErrorMessage="RequiredField" style="color: #CC3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="tableField">Profile Picture</td>
                <td class="tableData">
                    <asp:Image runat="server" Height="100px" Width="100px" ImageUrl="~/img/default_profile_pic.jpg" ID="img_upload" /><br />
                </td>
            </tr>
            <tr>
                <td class="tableField"></td>
                <td class="tableData">
                    <asp:FileUpload runat="server" CssClass="Margin" ID="fu_img"/>
                </td>
            </tr>
            </table>
        <br />       
        </div>
    
        <div>
            <h4 style="margin-left: 20%;">Permanent Address:</h4>
            <table align="center" class="auto-style2" id="tbl_address">
                <tr>
                    <td class="tableField">House Number</td>
                    <td class="tableData">
                    <asp:TextBox ID="txt_house" runat="server" Width="80%"  CssClass="form-control" TabIndex="3" Height="20px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_house" Display="Dynamic" ErrorMessage="RequiredField" style="color: #CC3300">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                <tr>
                    <td class="tableField">Street Number</td>
                    <td class="tableData">
                    <asp:TextBox ID="txt_street" runat="server" Width="80%"  CssClass="form-control" TabIndex="3" Height="20px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_street" Display="Dynamic" ErrorMessage="RequiredField" style="color: #CC3300">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="tableField">City</td>
                    <td class="tableData">
                    <asp:TextBox ID="txt_city" runat="server" Width="80%"  CssClass="form-control" TabIndex="3" Height="20px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_city" Display="Dynamic" ErrorMessage="RequiredField" style="color: #CC3300">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="tableField">Pincode</td>
                    <td class="tableData">
                    <asp:TextBox ID="txt_pincode" runat="server" Width="80%"  CssClass="form-control" TabIndex="3" Height="20px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txt_pincode" Display="Dynamic" ErrorMessage="RequiredField" style="color: #CC3300">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="tableField">State</td>
                    <td class="tableData">
                    <asp:TextBox ID="txt_state" runat="server" Width="80%"  CssClass="form-control" TabIndex="3" Height="20px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txt_state" Display="Dynamic" ErrorMessage="RequiredField" style="color: #CC3300">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                    <asp:Button ID="btn_submit" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="btn_submit_Click"/>
                    </td>
                </tr>
            </table>
        </div>
        <br /><br />
        </div>
    </form>
</body>
</html>
