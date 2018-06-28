<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Your Profile</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <script src="js/jquery-1.11.2.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <style type="text/css">
        body{
            background: url("img/confectionary.png");
            min-width: 450px;
        }
        .sidebar-nav {
            position: absolute;
            top: 0;
            width: 220px;
            margin: 0;
            padding: 0;
            list-style: none;
            background: black;
        }
        .boundary {
            height: 125px;
            width: 125px;
            border: 5px solid white;
        }
        .circle-img-bann {
            border-radius: 100px;
            border: 5px solid black;
        }
        .prod {
            padding: 15px;
            min-height: 700px;
            background: white;
            border: 2px solid black;
            border-radius: 10px;
            margin-left: 5%;
            margin-bottom: 20px;
            margin-top: 20px;
        }
        h5 {
            display: inline;
        }
        .imageMargin {
            margin-top: 10px;
        }
        .button {
            margin-left:0px;
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
            box-shadow: -10px 10px 5px #888888;
        }
        .auto-style2 {
            width: 60%;
            border-radius: 20px;
            margin-top: 0px;
            height: 310px;
            box-shadow: -10px 10px 5px #888888;
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
        .Margin {
            margin-left: 25%;
        }
        .Cart {
            color: white;
            margin-top: 15px;
            position: fixed;
            right: 15px;
            z-index: 10;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="row">
            <div class="col-md-2 col-sm-3 col-xs-6">
                <nav class="nav navbar-inverse navbar-fixed-top">
                    <ul class="nav sidebar-nav">  
                        <li><asp:Image runat="server" ImageUrl="~/img/Logo.png" ImageAlign="Middle" Width="90%"/></li>
                        <li><div align="center"><asp:ImageButton runat="server" CssClass="img-circle boundary" ImageUrl="~/img/004.jpg" ImageAlign="Middle" ID="img_propic" /></div>
                            <h4 style="color:white;text-align:center;">Welcome <asp:Label runat="server" Text="" ID="lbl_username"></asp:Label></h4>
                        </li>
                        <li><a href="Home.aspx">Home<span class="glyphicon glyphicon-home pull-right"></span></a></li>
                        <li><a href="#">User<span class="glyphicon glyphicon-user pull-right"></span></a></li>
                        <li><hr /></li>
                        <li class="dropdown">
                          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Clothing<span class="caret"></span></a>
                          <ul class="dropdown-menu" role="menu">
                            <li><a href="Men.aspx">Mens Clothing</a></li>
                            <li><a href="Women.aspx">Womens Clothing</a></li>
                          </ul>
                        </li>
                        <li><a href="Books.aspx">Books</a></li>
                        <li><a href="Men.aspx">Games</a></li>
                        <li><a href="Electronics.aspx">Electronics</a></li>
                        <li><a href="Beauty.aspx">Beauty Products</a></li>
                        <li><a href="Mobiles.aspx">Mobiles</a></li>
                        <li><a href="BabyAndKids.aspx">Kids and Baby Products</a></li>
                    </ul>
                </nav>
            </div>
            
            <div class="col-md-10 col-sm-9 col-xs-6 row">
                <div class="Cart pull-right btn btn-warning"><a href="ShoppingCart.aspx" style="text-decoration: none; color: white;"><span class="pull-right">Your Cart <span class="glyphicon glyphicon-shopping-cart"></span></span></a></div>
                <div>
                    <h2 style="text-align: center">Your Profile</h2>
                    <div style="text-align: center">
                        <asp:Label runat="server" ID="lbl_msg" style="color: #FF0000"></asp:Label>
                        <br />
                        <asp:Label ID="lbl_success" runat="server" style="color: #006600"></asp:Label>
                    </div>
                    <br />
                    <div >
                        <h4 style="margin-left: 20%;">Personal Details:</h4>
                        <table class="auto-style1" align="center" id="tbl_personal">
                            <tr>
                                <td class="tableField">Name</td>
                                <td class="tableData">
                                    <asp:TextBox ID="txt_name" runat="server" Width="80%" TabIndex="1" Height="20px" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="tableField">E-mail ID</td>
                                <td class="tableData">
                                    <asp:TextBox ID="txt_email" runat="server" Width="80%" TabIndex="2" Height="20px" CssClass="form-control" EnableViewState="True" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="tableField">Previous Password</td>
                                <td class="tableData">
                                    <asp:TextBox ID="txt_prevPass" runat="server" Width="80%" TabIndex="3" TextMode="Password" Height="20px" CssClass="form-control"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="tableField">New Password</td>
                                <td class="tableData">
                                    <asp:TextBox ID="txt_newPass" runat="server" Width="80%" TabIndex="3" TextMode="Password" Height="20px" CssClass="form-control"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="tableField">Phone Number</td>
                                <td class="tableData">
                                    <asp:TextBox ID="txt_phone" runat="server" Width="80%" TabIndex="3" Height="20px" CssClass="form-control"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="tableField">Profile Picture</td>
                                <td class="tableData">
                                    <asp:Image runat="server" Height="100px" Width="100px" ImageUrl="~/img/default_profile_pic.jpg" ID="img_data" /><br />
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
                                <asp:TextBox ID="txt_house" runat="server" Width="80%" TabIndex="3" Height="20px" CssClass="form-control"></asp:TextBox>
                                </td>
                            </tr>
                
                            <tr>
                                <td class="tableField">Street Number</td>
                                <td class="tableData">
                                <asp:TextBox ID="txt_street" runat="server" Width="80%" TabIndex="3" Height="20px" CssClass="form-control"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="tableField">City</td>
                                <td class="tableData">
                                <asp:TextBox ID="txt_city" runat="server" Width="80%" TabIndex="3" Height="20px" CssClass="form-control"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="tableField">Pincode</td>
                                <td class="tableData">
                                <asp:TextBox ID="txt_pincode" runat="server" Width="80%" TabIndex="3" Height="20px" CssClass="form-control"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="tableField">State</td>
                                <td class="tableField">
                                <asp:TextBox ID="txt_state" runat="server" Width="80%" TabIndex="3" Height="20px" CssClass="form-control"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                <asp:Button ID="btn_edit" runat="server" Text="Edit" CssClass="btn btn-success" OnClick="btn_edit_Click"/>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <br /><br />
                    
                </div>  
            </div>
        </div>
        </div>
    </form>
</body>
</html>
