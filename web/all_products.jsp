<%-- 
    Document   : all_products
    Created on : Sep 19, 2020, 10:22:56 PM
    Author     : Ukdmp Kasun
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="servlets.DbCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ashion Template">
    <meta name="keywords" content="Ashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Your Store</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
          rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Offcanvas Menu Begin -->
<div class="offcanvas-menu-overlay"></div>
<div class="offcanvas-menu-wrapper">
    <div class="offcanvas__close">+</div>
    <ul class="offcanvas__widget">
        <li><span class="icon_search search-switch"></span></li>
        <li><a href="#"><span class="icon_heart_alt"></span>
            <div class="tip">2</div>
        </a></li>
        <li><a href="#"><span class="icon_bag_alt"></span>
            <div class="tip">2</div>
        </a></li>
    </ul>
    <div class="offcanvas__logo">
        <a href="./index.jsp"><img src="img/logo.png" alt=""></a>
    </div>
    <div id="mobile-menu-wrap"></div>
    <div class="offcanvas__auth">
        <a href="#">Login</a>
        <a href="#">Register</a>
    </div>
</div>
<!-- Offcanvas Menu End -->

<!-- Header Section Begin -->
<header class="header col-xl-12 col-xl-12" style="background-color: black; ">
    <div class="container-fluid">
        <div class="row ">
            <div class="col-xl-3 col-lg-2">
                <div class="header__logo">
                    <a href="./index.jsp"><img src="img/logo.webp" class="img-fluid" style="width: 33%;"></a>
                </div>
            </div>
            <div class="col-xl-6 col-lg-7">
                <nav class="header__menu">
                    <ul>
                        <li ><a style="color: white;" href="./index.jsp">Home</a></li>
                        <li class="active"><a style="color: white;" href="all_products.jsp">All Products</a></li>

                        <li><a style="color: white;" href="./Dashboard/dashboard.jsp">My Account</a></li>
                          <li><a style="color: white;" href="contact.jsp">Contact US</a></li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3">
                <div class="header__right">
                    <a style="color: white; font-size: 130%" class="btn btn-success"  href="./Auth/login.jsp">Login</a>
                      <a style="color: white; font-size: 130%" class="btn btn-success offset-1"  href="./Auth/signup.jsp">Register</a>
         

                </div>
            </div>
        </div>
        <div class="canvas__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
</header>
<!-- Header Section End -->


<!-- Product Section Begin -->
<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4">
                <div class="section-title">
                    <h4>ALL Products</h4>
                </div>
            </div>

        </div>
        <div class="row property__gallery">
            <%
                                        DbCon db = new DbCon();
                                        Connection con1 = db.getConnection();
                                        Statement st1 = con1.createStatement();

                                        ResultSet res1 = st1.executeQuery("SELECT * FROM products  ");
                                        while (res1.next()) {
                                            String title = res1.getString("title");
                                            String des = res1.getString("description");
                                            String price = res1.getString("price");
                                            String id = res1.getString("id");
                                            String seller = res1.getString("user");
                                            String cat = res1.getString("category");
                                            String con = res1.getString("contact");
                                    %>
            <div class="col-lg-3 col-md-4 col-sm-6 mix men">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="getImage.jsp?id=<%=id%>">
                         <ul class="product__hover" style="width:100%">
                            <li><span class="badge badge-light"><% out.println(des); %></span><br>
                                <span class="badge badge-pill badge-warning"><% out.println(seller); %></span><br>
                                <span class="badge badge-pill badge-secondary"><% out.println(con); %></span>
                            </li>

                        </ul>
                    </div>
                   <div class="product__item__text">
                        <h6><a href="#"><% out.println(title); %></a></h6>
<span class="badge badge-pill badge-info"><% out.println(cat); %></span>
                        <div class="product__price"><% out.println(price); %></div>
                    </div>
                </div>
            </div>
           
            <%
                                        }
                                    %> 
        </div>
    </div>
</section>
<!-- Product Section End -->

<footer class="footer bg-dark">
        <div class="row">
            <div class="col-lg-12">
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                <div class="footer__copyright__text">
                    <p style="color: white">Copyright &copy; <script>document.write(new Date().getFullYear());</script> All rights reserved | Team Your Store</p>
                </div>
               
          
        </div>
    </div>
      
</footer>

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/jquery.countdown.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.nicescroll.min.js"></script>
<script src="js/main.js"></script>
</body>

</html>

