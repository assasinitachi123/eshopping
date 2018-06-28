<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="ShoppingCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Your Cart</title>
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
            height: 700px;
            background: white;
            border: 2px solid black;
            border-radius: 10px;
            margin-left: 8%;
            margin-bottom: 20px;
            margin-top: 20px;
        }
        h5 {
            display: inline;
        }
        .imageMargin {
            margin-top: 10px;
        }
        .WhiteGrid {
            background:white;
        }
        .Centric {
            text-align: center;
            height: 10px;
        }
        .LabelColor {
            color: #009900;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="row">
            <div class="col-md-2">
                <nav class="nav navbar-inverse navbar-fixed-top">
                    <ul class="nav sidebar-nav">  
                        <li><asp:Image runat="server" ImageUrl="~/img/Logo.png" ImageAlign="Middle" Width="90%"/></li>
                        <li><div align="center"><asp:ImageButton runat="server" CssClass="img-circle boundary" ImageUrl="~/img/004.jpg" ImageAlign="Middle" ID="img_propic" /></div>
                            <h4 style="color:white;text-align:center;">Welcome <asp:Label runat="server" Text="" ID="Label1"></asp:Label></h4>
                        </li>
                        <li><a href="Home.aspx">Home<span class="glyphicon glyphicon-home pull-right"></span></a></li>
                        <li><a href="User.aspx">User<span class="glyphicon glyphicon-user pull-right"></span></a></li>
                        <li><hr /></li>
                        <li class="dropdown">
                          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Clothing<span class="caret"></span></a>
                          <ul class="dropdown-menu" role="menu">
                            <li><a href="Men.aspx">Mens Clothing</a></li>
                            <li><a href="#">Womens Clothing</a></li>
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
            <div class="col-md-10">   
                <h1> Welcome to your Shopping Cart <asp:Label runat="server" Text="" ID="lbl_username"></asp:Label> </h1>
               <div class="text-center">
                <asp:GridView runat="server" ID="GridView1" AutoGenerateColumns="False" CssClass="WhiteGrid" OnRowDeleting="GridView1_RowDeleting" ShowFooter="True" >
                    <Columns>
                        <asp:TemplateField HeaderText="Product Image" HeaderStyle-CssClass="Centric" ItemStyle-Height="120px">
                            <ItemTemplate>
                                <asp:Image ID="img_prod" runat="server" Height="100px" ImageUrl='<%# Eval("t_image") %>'/>
                            </ItemTemplate>
                            <HeaderStyle CssClass="Centric"></HeaderStyle>
                            <ItemStyle Height="120px"></ItemStyle>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Product name" HeaderStyle-CssClass="Centric" ItemStyle-Height="120px">
                            <FooterTemplate>
                                <asp:Button ID="btn_chk" runat="server" Height="66px" Text="Checkout" Width="168px" OnClick="btn_chk_Click1" />
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label runat="server" ID="prod_name" Text='<%# Eval("t_prod") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle CssClass="Centric"></HeaderStyle>
                            <ItemStyle Height="120px"></ItemStyle>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Price" HeaderStyle-CssClass="Centric" ItemStyle-Height="120px">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="prod_mrp" Text='<%# Eval("t_mrp") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle CssClass="Centric"></HeaderStyle>
                            <ItemStyle Height="120px"></ItemStyle>
                        </asp:TemplateField>

                        <asp:CommandField HeaderText="Remove From Cart"  HeaderStyle-CssClass="Centric" ShowDeleteButton="True" ItemStyle-Height="120px" >
                            <HeaderStyle CssClass="Centric"></HeaderStyle>
                            <ItemStyle Height="120px"></ItemStyle>
                        </asp:CommandField>
                    </Columns>  
                </asp:GridView>
                </div>
                <div align="center">
                    <h3 >Total: Rs. <asp:Label runat="server" Text="" ID="lbl_total"></asp:Label></h3>
                    <br />
                    <asp:Label runat="server" ID="lbl_checkout" Text="" CssClass="LabelColor"></asp:Label>
                    <br/>
                    <asp:Label runat="server" ID="lbl_finish" Text="" CssClass="LabelColor"></asp:Label>
                </div>
                <br />
            </div>
        </div>
        </div>
    </form>
</body>
</html>
