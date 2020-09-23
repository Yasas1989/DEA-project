<%-- 
    Document   : contact
    Created on : Sep 20, 2020, 12:54:24 PM
    Author     : Ukdmp Kasun
--%>


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
<div class="offcanvas-menu-wrapper " style="background-color: black">
    <div class="offcanvas__close">+</div>
   
    <div class="offcanvas__logo">
        <a href="./index.jsp">Your Store</a>
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
                        <li><a style="color: white;" href="all_products.jsp">All Products</a></li>

                        <li><a style="color: white;" href="./Dashboard/dashboard.jsp">My Account</a></li>
                          <li class="active"><a style="color: white;" href="./contact.jsp">Contact US</a></li>
                    </ul>
                </nav>
            </div>
 <div class="col-lg-3">
                <div class="header__right">
                    <a style="color: white; font-size: 130%" class="btn btn-success"  href="./Auth/login.jsp">Login</a>
                      <a style="color: white; font-size: 130%" class="btn btn-success offset-1"  href="./Auth/signup.jsp">Register</a>
         

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
                    <h4>Contact US</h4>
                </div>
            </div>

        </div>
            <section class="contact spad">
        <div class="container">
            
            <div class="row">
                <div class="col-lg-6 col-md-6" style="margin-top: 20px">
                    <div class="contact__content">
                        <div class="contact__address">
                            <h5>Contact info</h5>
                            <ul>
                                <li>
                                    <h6><i class="fa fa-map-marker"></i> Address</h6>
                                    <p>NSBM green University, Pitipana, Homagama</p>
                                </li>
                                <li>
                                    <h6><i class="fa fa-phone"></i> Phone</h6>
                                    <p><span>011 980 72345</span><span>0777123456</span></p>
                                </li>
                                <li>
                                    <h6><i class="fa fa-headphones"></i> Support</h6>
                                    <p>Support.NSBMSTORE@gmail.com</p>
                                </li>
                            </ul>
                        </div>
                       
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="contact__map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d31691.402331108595!2d80.0243555183494!3d6.839507333648406!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1snsbm%20green%20university%20map!5e0!3m2!1sen!2slk!4v1600586820806!5m2!1sen!2slk" width="700" height="780" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                       
                    </iframe>
                </div>
            </div>
        </div>
    </div>
</section>
          
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
