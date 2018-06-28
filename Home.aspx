<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
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
        .images {
            height: 200px;
        }
        .col-md-4,col-sm-12 {
            background: white;
 
            border: 3px solid black;
            overflow: hidden;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <div class="col-md-2 col-sm-4 col-xs-6">
                <nav class="nav navbar-inverse navbar-fixed-top">
                    <ul class="nav sidebar-nav">  
                        <li><asp:Image runat="server" ImageUrl="~/img/Logo.png" ImageAlign="Middle" Width="90%"/></li>
                        <li><div align="center"><asp:ImageButton runat="server" CssClass="img-circle boundary" ImageUrl="~/img/004.jpg" ImageAlign="Middle" ID="img_propic" /></div>
                            <h4 style="color:white;text-align:center;">Welcome <asp:Label runat="server" Text="" ID="lbl_username"></asp:Label></h4>
                        </li>
                        <li><a href="#">Home<span class="glyphicon glyphicon-home pull-right"></span></a></li>
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
                        <li><a href="Mobiles.aspx">Mobiles</a></li>
                        <li><a href="BabyAndKids.aspx">Kids and Baby Products</a></li>
                    </ul>
                </nav>
            </div>

            <div class="col-md-10 col-sm-8 col-xs-6">
                <h1 class="page-header">Men's Clothing</h1>
                <a href="Men.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/men_product/1.jpeg" CssClass="images"/></div></a>
                <a href="Men.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/men_product/2.jpeg" CssClass="images" /></div></a>
                <a href="Men.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/men_product/3.jpeg" CssClass="images" /></div></a>
                <a href="Men.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/men_product/11.jpeg" CssClass="images" /></div></a>
                <a href="Men.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/men_product/12.jpeg" CssClass="images" /></div></a>
                <a href="Men.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/men_product/13.jpeg" CssClass="images" /></div></a>

                <h1 class="page-header">Women's Clothing</h1>
                <a href="Women.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/women/19.jpeg" CssClass="images"/></div></a>
                <a href="Women.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/women/20.jpeg" CssClass="images" /></div></a>
                <a href="Women.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/women/21.jpeg" CssClass="images" /></div></a>
                <a href="Women.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/women/22.jpeg" CssClass="images" /></div></a>
                <a href="Women.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/women/23.jpeg" CssClass="images" /></div></a>
                <a href="Women.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/women/24.jpeg" CssClass="images" /></div></a>

                <h1 class="page-header">Books</h1>
                <a href="Books.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/books/1.jpeg" CssClass="images"/></div></a>
                <a href="Books.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/books/2.jpeg" CssClass="images" /></div></a>
                <a href="Books.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/books/3.jpeg" CssClass="images" /></div></a>
                <a href="Books.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/books/4.jpeg" CssClass="images" /></div></a>
                <a href="Books.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/books/5.jpeg" CssClass="images" /></div></a>
                <a href="Books.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/books/6.jpeg" CssClass="images" /></div></a>

                <h1 class="page-header">Games</h1>
                <a href="Games.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/img_games/1.jpeg" CssClass="images"/></div></a>
                <a href="Games.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/img_games/2.jpeg" CssClass="images" /></div></a>
                <a href="Games.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/img_games/3.jpeg" CssClass="images" /></div></a>
                <a href="Games.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/img_games/17.jpeg" CssClass="images" /></div></a>
                <a href="Games.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/img_games/15.jpeg" CssClass="images" /></div></a>
                <a href="Games.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/img_games/16.jpeg" CssClass="images" /></div></a>

                <h1 class="page-header">Electronics</h1>
                <a href="Electronics.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/img_electronics/1.jpeg" CssClass="images"/></div></a>
                <a href="Electronics.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/img_electronics/7.jpeg" CssClass="images" /></div></a>
                <a href="Electronics.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/img_electronics/9.jpeg" CssClass="images" /></div></a>
                <a href="Electronics.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/img_electronics/10.jpeg" CssClass="images" /></div></a>
                <a href="Electronics.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/img_electronics/11.jpeg" CssClass="images" /></div></a>
                <a href="Electronics.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/img_electronics/12.jpeg" CssClass="images" /></div></a>

                <h1 class="page-header">Beauty Products</h1>
                <a href="Beauty.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/beauty/1.jpeg" CssClass="images"/></div></a>
                <a href="Beauty.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/beauty/2.jpeg" CssClass="images" /></div></a>
                <a href="Beauty.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/beauty/3.jpeg" CssClass="images" /></div></a>
                <a href="Beauty.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/beauty/4.jpeg" CssClass="images" /></div></a>
                <a href="Beauty.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/beauty/5.jpeg" CssClass="images" /></div></a>
                <a href="Beauty.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/beauty/6.jpeg" CssClass="images" /></div></a>

                <h1 class="page-header">Mobiles</h1>
                <a href="Mobiles.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/img_mobiles/1.jpeg" CssClass="images"/></div></a>
                <a href="Mobiles.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/img_mobiles/2.jpeg" CssClass="images" /></div></a>
                <a href="Mobiles.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/img_mobiles/3.jpeg" CssClass="images" /></div></a>
                <a href="Mobiles.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/img_mobiles/4.jpeg" CssClass="images" /></div></a>
                <a href="Mobiles.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/img_mobiles/5.jpeg" CssClass="images" /></div></a>
                <a href="Mobiles.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/img_mobiles/6.jpeg" CssClass="images" /></div></a>

                <h1 class="page-header">Kids and baby Products</h1>
                <a href="BabyAndKids.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/babyandkids/2.jpeg" CssClass="images"/></div></a>
                <a href="BabyAndKids.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/babyandkids/4.jpeg" CssClass="images" /></div></a>
                <a href="BabyAndKids.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/babyandkids/10.jpeg" CssClass="images" /></div></a>
                <a href="BabyAndKids.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/babyandkids/15.jpeg" CssClass="images" /></div></a>
                <a href="BabyAndKids.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/babyandkids/16.jpeg" CssClass="images" /></div></a>
                <a href="BabyAndKids.aspx"><div class="col-md-4 col-sm-12" align="center"><asp:Image runat="server" ImageUrl="~/img/babyandkids/20.jpeg" CssClass="images" /></div></a>
            </div>
        <br />
        <br />
    </form>
    <br />
</body>
</html>
