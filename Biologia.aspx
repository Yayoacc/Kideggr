<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Biologia.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="js/bootstrap4/bootstrap.min.css"/>
    <link href="js/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="js/malihu-custom-scrollbar/jquery.mCustomScrollbar.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="js/jquery-ui-1.12.1.custom/jquery-ui.css"/>
    <link rel="stylesheet" type="text/css" href="css/categories.css"/>
    <link rel="stylesheet" type="text/css" href="css/categories_responsive.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container float-right" style="width:700px">
    <div class="product_grid" style="z-index:100;">

						<!-- Product -->
						<div class="product" id="p1" runat="server">
							<div class="product_image"><img src="''"  alt="" runat="server" id="Product1"/></div>
							<div class="rating rating_4" data-rating="4" runat="server" id="rating1">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<div class="product_content clearfix">
								<div class="product_info">
									<div class="product_name"><a href="product.html" id="Name1" runat="server"></a></div>
								</div>
								<div class="product_options">
									<!-- <div class="product_buy product_option"><img src="images/shopping-bag-white.svg" alt=""/></div>-->
									<%--<div class="product_fav product_option">+</div>--%>
								</div>
							</div>
						</div>

						<!-- Product -->
						<div class="product"  id="p2" runat="server">
							<div class="product_image"><img src="images/product_2.jpg" alt="" id="Product2" runat="server"/></div>
							<div class="rating rating_5" data-rating="5" runat="server" id="rating2">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<div class="product_content clearfix">
								<div class="product_info">
									<div class="product_name"><a href="product.html" id="Name2" runat="server"></a></div>
									<%--<div class="product_price">$35.00</div>--%>
								</div>
								<div class="product_options">
									<%--<div class="product_buy product_option"><img src="images/shopping-bag-white.svg" alt=""/></div>--%>
									<%--<div class="product_fav product_option">+</div>--%>
								</div>
							</div>
						</div>

						<!-- Product -->
						<div class="product"  id="p3" runat="server">
							<div class="product_image"><img src="images/product_3.jpg" alt="" id="Product3" runat="server"/></div>
							<div class="rating rating_3" data-rating="3" runat="server" id="rating3">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<div class="product_content clearfix">
								<div class="product_info">
									<div class="product_name"><a href="product.html" id="Name3" runat="server"></a></div>
									<%--<div class="product_price">$145.00</div>--%>
								</div>
								<div class="product_options">
									<%--<div class="product_buy product_option"><img src="images/shopping-bag-white.svg" alt=""/></div>
									<div class="product_fav product_option">+</div>--%>
								</div>
							</div>
						</div>

						<!-- Product -->
						<div class="product"  id="p4" runat="server">
							<div class="product_image"><img src="images/product_4.jpg" alt="" id="Product4" runat="server"/></div>
							<div class="rating rating_3" data-rating="3" runat="server" id="rating4">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<div class="product_content clearfix">
								<div class="product_info">
									<div class="product_name"><a href="product.html" id="Name4" runat="server">""</a></div>
									<%--<div class="product_price">$145.00</div>--%>
								</div>
								<div class="product_options">
									<%--<div class="product_buy product_option"><img src="images/shopping-bag-white.svg" alt=""/></div>
									<div class="product_fav product_option">+</div>--%>
								</div>
							</div>
						</div>

						<!-- Product -->
						<div class="product"  id="p5" runat="server">
							<div class="product_image"><img src="images/product_5.jpg" alt="" id="Product5" runat="server"/></div>
							<div class="rating rating_3" data-rating="3" runat="server" id="rating5">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<div class="product_content clearfix">
								<div class="product_info">
									<div class="product_name"><a href="product.html" id="Name5" runat="server">""</a></div>
									<%--<div class="product_price">$145.00</div>--%>
								</div>
								<div class="product_options">
									<%--<div class="product_buy product_option"><img src="images/shopping-bag-white.svg" alt=""/></div>
									<div class="product_fav product_option">+</div>--%>
								</div>
							</div>
						</div>

						<!-- Product -->
						<div class="product"  id="p6" runat="server">
							<div class="product_image"><img src="imagenes/product_6.jpg" alt="" id="Product6" runat="server"/></div>
							<div class="rating rating_3" data-rating="3" runat="server" id="rating6">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<div class="product_content clearfix">
								<div class="product_info">
									<div class="product_name"><a href="product.html" id="Name6" runat="server">""</a></div>
									<%--<div class="product_price">$145.00</div>--%>
								</div>
								<div class="product_options">
									<%--<div class="product_buy product_option"><img src="images/shopping-bag-white.svg" alt=""/></div>
									<div class="product_fav product_option">+</div>--%>
								</div>
							</div>
						</div>

						<!-- Product -->
						<div class="product"  id="p7" runat="server">
							<div class="product_image"><img src="images/product_7.jpg" alt="" id="Product7" runat="server"/></div>
							<div class="rating rating_3" data-rating="3" runat="server" id="rating7">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<div class="product_content clearfix">
								<div class="product_info">
									<div class="product_name"><a href="product.html" id="Name7" runat="server">""</a></div>
									<%--<div class="product_price">$145.00</div>--%>
								</div>
								<div class="product_options">
									<%--<div class="product_buy product_option"><img src="images/shopping-bag-white.svg" alt=""/></div>
									<div class="product_fav product_option">+</div>--%>
								</div>
							</div>
						</div>

						<!-- Product -->
						<div class="product"  id="p8" runat="server">
							<div class="product_image"><img src="images/product_8.jpg" alt="" id="Product8" runat="server"/></div>
							<div class="rating rating_3" data-rating="3" runat="server" id="rating8">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<div class="product_content clearfix">
								<div class="product_info">
									<div class="product_name"><a href="product.html" id="Name8" runat="server">""</a></div>
									<%--<div class="product_price">$145.00</div>--%>
								</div>
								<div class="product_options">
									<%--<div class="product_buy product_option"><img src="images/shopping-bag-white.svg" alt="" runat="server"/></div>
									<div class="product_fav product_option">+</div>--%>
								</div>
							</div>
						</div>

						<!-- Product -->
						<div class="product"  id="p9" runat="server">
							<div class="product_image"><img src="images/product_9.jpg" alt="" id="Product9" runat="server"/></div>
							<div class="rating rating_3" data-rating="3" runat="server" id="rating9">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<div class="product_content clearfix">
								<div class="product_info">
									<div class="product_name"><a href="product.html" id="Name9" runat="server">""</a></div>
									<%--<div class="product_price">$145.00</div>--%>
								</div>
								<div class="product_options">
									<%--<div class="product_buy product_option"><img src="images/shopping-bag-white.svg" alt="" /></div>
									<div class="product_fav product_option">+</div>--%>
								</div>
							</div>
						</div>

						<!-- Product -->
						<div class="product"  id="p10" runat="server">
							<div class="product_image"><img src="images/product_10.jpg" alt="" id="Product10" runat="server"/></div>
							<div class="rating rating_3" data-rating="3" runat="server" id="rating10">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<div class="product_content clearfix">
								<div class="product_info">
									<div class="product_name"><a href="product.html" id="Name10" runat="server">""</a></div>
									<%--<div class="product_price">$145.00</div>--%>
								</div>
								<div class="product_options">
									<%--<div class="product_buy product_option"><img src="images/shopping-bag-white.svg" alt=""/></div>
									<div class="product_fav product_option">+</div>--%>
								</div>
							</div>
						</div>

						<!-- Product -->
						<div class="product"  id="p11" runat="server">
							<div class="product_image"><img src="images/product_11.jpg" alt="" id="Product11" runat="server"/></div>
							<div class="rating rating_3" data-rating="3" runat="server" id="rating11">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<div class="product_content clearfix">
								<div class="product_info">
									<div class="product_name"><a href="product.html" id="Name11" runat="server">""</a></div>
									<%--<div class="product_price">$145.00</div>--%>
								</div>
								<div class="product_options">
<%--									<div class="product_buy product_option"><img src="images/shopping-bag-white.svg" alt=""/></div>--%>
									<%--<div class="product_fav product_option">+</div>--%>
								</div>
							</div>
						</div>

						<!-- Product -->
						<div class="product"  id="p12" runat="server">
							<div class="product_image"><img src="images/product_12.jpg" alt="" id="Product12" runat="server"/></div>
							<div class="rating rating_3" data-rating="3" runat="server" id="rating12">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<div class="product_content clearfix">
								<div class="product_info">
									<div class="product_name"><a href="product.html" id="Name12" runat="server">""</a></div>
									<%--<div class="product_price">$145.00</div>--%>
								</div>
								<div class="product_options">
									<%--<div class="product_buy product_option"><img src="images/shopping-bag-white.svg" alt=""/></div>
									<div class="product_fav product_option">+</div>--%>
								</div>
							</div>
						</div>
        </div>
					</div>
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap4/popper.js"></script>
    <script src="js/bootstrap4/bootstrap.min.js"></script>
    <script src="js/easing/easing.js"></script>
    <script src="js/parallax-js-master/parallax.min.js"></script>
    <script src="js/Isotope/isotope.pkgd.min.js"></script>
    <script src="js/malihu-custom-scrollbar/jquery.mCustomScrollbar.js"></script>
    <script src="js/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="js/categories_custom.js"></script>
</asp:Content>

