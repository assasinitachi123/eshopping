<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Mobiles.aspx.cs" Inherits="Mobiles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mobiles</title>
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
        tr {
            height:200px;
        }
        td {
            width: 33%;
            height: 200px;
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
                        <li><a href="User.aspx">User<span class="glyphicon glyphicon-user pull-right"></span></a></li>
                        <li><hr /></li>
                        <li class="dropdown">
                          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Clothing<span class="caret"></span></a>
                          <ul class="dropdown-menu" role="menu">
                            <li><a href="Men.aspx">Mens Clothing</a></li>
                            <li><a href="Women.aspx">Womens Clothing</a></li>
                          </ul>
                        </li>
                        <li><a href="Books.aspx">Books</a></li>
                        <li><a href="Games.aspx">Games</a></li>
                        <li><a href="Electronics.aspx">Electronics</a></li>
                        <li><a href="Beauty.aspx">Beauty Products</a></li>
                        <li><a href="#">Mobiles</a></li>
                        <li><a href="BabyAndKids.aspx">Kids and Baby Products</a></li>
                    </ul>
                </nav>
            </div>
            
            <div class="col-md-10 col-sm-9 col-xs-6 row">
                <div class="Cart pull-right btn btn-warning"><a href="ShoppingCart.aspx" style="text-decoration: none; color: white;"><span class="pull-right">Your Cart <span class="glyphicon glyphicon-shopping-cart"></span></span></a></div>
                <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
                        <div class="col-md-5 prod">
                            <div align="center"><asp:Image runat="server" Height="200px" ID="prod_img" ImageUrl='<%# Eval("image") %>' CssClass="imageMargin" /></div><br />
                            <div align="center"><asp:Label runat="server" ID="prod_name" Text='<%# Eval("prod_name") %>' Font-Bold="True" Font-Size="Large"></asp:Label>
                                <asp:Label runat="server" ID="prod_id" Text='<%# Eval("prod_id") %>' Visible="false"></asp:Label>
                            </div>
                            <br />
                            <div align="center">
                                <asp:Button runat="server" ID="btn_add" Text="Add to Cart" CssClass="btn btn-warning button"  CommandName="AddToCart" CommandArgument='<%# Container.DataItemIndex %>' OnCommand="btn_add_Command" />
                                <asp:Button runat="server" ID="btn_buy" Text="Buy Now" CssClass="btn btn-success button" CommandName="Buy" CommandArgument='<%# Container.DataItemIndex %>'  OnCommand="btn_buy_Command" />
                            </div>
                            <hr />
                            <h5>Price : </h5> Rs. <asp:Label runat="server" ID="prod_amount" Text='<%# Eval("mrp") %>'></asp:Label><br />
                            <h5>Quantity : </h5><asp:Label runat="server" ID="prod_quantity" Text='<%# Eval("qty") %>'></asp:Label><br />
                            <h5>Description: </h5>
                            <asp:Label runat="server" ID="prod_desc" Text='<%# Eval("desc") %>'></asp:Label>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </div>  
        </div>
    </div>
    </form>
</body>
</html>
