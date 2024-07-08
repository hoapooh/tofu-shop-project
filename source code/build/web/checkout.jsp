<%-- 
    Document   : checkout
    Created on : Mar 11, 2024, 5:18:22 PM
    Author     : anphu
--%>

<%@page import="model.Users"%>
<%@page import="model.Cart"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
    <head>
        <meta charset="UTF-8" />
        <meta name="description" content="Ogani Template" />
        <meta name="keywords" content="Ogani, unica, creative, html" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>Tofu shop | Checkout</title>

        <!-- Favicon -->
        <link rel="apple-touch-icon" sizes="57x57" href="./favicon/apple-icon-57x57.png" />
        <link rel="apple-touch-icon" sizes="60x60" href="./favicon/apple-icon-60x60.png" />
        <link rel="apple-touch-icon" sizes="72x72" href="./favicon/apple-icon-72x72.png" />
        <link rel="apple-touch-icon" sizes="76x76" href="./favicon/apple-icon-76x76.png" />
        <link rel="apple-touch-icon" sizes="114x114" href="./favicon/apple-icon-114x114.png" />
        <link rel="apple-touch-icon" sizes="120x120" href="./favicon/apple-icon-120x120.png" />
        <link rel="apple-touch-icon" sizes="144x144" href="./favicon/apple-icon-144x144.png" />
        <link rel="apple-touch-icon" sizes="152x152" href="./favicon/apple-icon-152x152.png" />
        <link rel="apple-touch-icon" sizes="180x180" href="./favicon/apple-icon-180x180.png" />
        <link rel="icon" type="image/png" sizes="192x192" href="./favicon/android-icon-192x192.png" />
        <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-32x32.png" />
        <link rel="icon" type="image/png" sizes="96x96" href="./favicon/favicon-96x96.png" />
        <link rel="icon" type="image/png" sizes="16x16" href="./favicon/favicon-16x16.png" />
        <link rel="manifest" href="./favicon/manifest.json" />
        <meta name="msapplication-TileColor" content="#ffffff" />
        <meta name="msapplication-TileImage" content="./favicon/ms-icon-144x144.png" />
        <meta name="theme-color" content="#ffffff" />

        <!-- Icon CSS -->
        <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css" />
        <link href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css" rel="stylesheet" />

        <!-- Google Font -->
        <link
            href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
            rel="stylesheet"
        />
        <!-- Font Poppins -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
            rel="stylesheet"
        />
        <link
            href="https://fonts.googleapis.com/css2?family=Sen:wght@400..800&amp;display=swap"
            rel="stylesheet"
        />

        <!-- Css Styles -->
        <link rel="stylesheet" href="css/swiper-bundle.min.css" />
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
        <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
        <link rel="stylesheet" href="css/elegant-icons.css" type="text/css" />
        <link rel="stylesheet" href="css/nice-select.css" type="text/css" />
        <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css" />
        <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css" />
        <link rel="stylesheet" href="css/slicknav.min.css" type="text/css" />
        <link rel="stylesheet" href="css/style.css" type="text/css" />
    </head>

    <body>
        <!-- Page Preloder -->
        <div id="preloder">
            <div class="loader"></div>
        </div>

        <!-- Header Section Begin -->
        <header class="header">
            <div class="container">
                <div class="row">
                    <div class="header__logo">
                        <a href="./index,jsp"><img src="img/logo.png" alt="" class="logo" /></a>
                    </div>
                    <nav class="header__menu">
                        <ul class="list">
                            <li class="item active"><a href="./index.jsp">Home</a></li>
                            <li class="item"><a href="./shopcontrol">Shop</a></li>
                            <li class="item">
                                <a href="#">Pages</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="./shop-details.jsp">Shop Details</a></li>
                                </ul>
                            </li>
                            <li class="item"><a href="./about.jsp">About Us</a></li>
                            <li class="item"><a href="./contact.jsp">Contact</a></li>
                        </ul>
                    </nav>
                    <div class="header__cta">
                        <ul class="header__cta__list">
                            <c:if test="${sessionScope.usersession == null}">
                                <li class="item">
                                    <a onclick="shop_alert()" href="./login.jsp"><i class="fa fa-shopping-bag"></i><c:if test="${sessionScope.listCart.size() > 0}"><span>${sessionScope.listCart.size()}</span></c:if></a>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.usersession != null}">
                                <li class="item">
                                    <a href="./shopping-cart.jsp"><i class="fa fa-shopping-bag"></i> <c:if test="${sessionScope.listCart.size() > 0}"><span>${sessionScope.listCart.size()}</span></c:if></a>
                                </li>
                            </c:if>
                            <li class="item">
                                <c:if test="${sessionScope.usersession == null}"><a href="./login.jsp" class="btn-cta">Login</a></c:if>

                                <c:if test="${sessionScope.usersession != null}">    
                                    <p class="user__auth">Hello, ${sessionScope.usersession.name}<i class='bx bxs-chevron-down-circle'></i></p>
                                    <ul class="header__menu__dropdown">
                                        <li><a href="./profile.jsp">Profile</a></li>
                                        <li><a href="./logout">Log Out</a></li>
                                    </ul>
                                </c:if>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>

        <!-- Breadcrumb Section Begin -->
        <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb-car.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="breadcrumb__text">
                            <h2>Checkout</h2>
                            <div class="breadcrumb__option">
                                <a href="./index.jsp">Home</a>
                                <span>Checkout</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Section End -->

        <c:if test="${sessionScope.usersession != null}">
            <% Users user = (Users) session.getAttribute("usersession");%>
            <%= user.getUserId()%>
        </c:if>
        <!-- Checkout Section Begin -->
        <section class="checkout spad">
            <div class="container">
                <div class="checkout__form">    
                    <h4>Billing Details</h4>
                    <form action="checkout">
                        <div class="row">
                            <div class="col-lg-8 col-md-6">
                                <div class="checkout__input">
                                    <p>Name<span>*</span></p>
                                    <input
                                        name="name"
                                        type="text"
                                        value="${sessionScope.usersession.name}"
                                        placeholder=" Name"
                                        class="checkout__input__add"
                                        />
                                </div> 

                                <div class="checkout__input">
                                    <p>Address<span>*</span></p>
                                    <input
                                        name="address"
                                        type="text"
                                        value="${sessionScope.usersession.address}"
                                        placeholder=" Address"
                                        class="checkout__input__add"
                                        />
                                </div>                               
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="checkout__input">
                                            <p>Phone<span>*</span></p>
                                            <input name="phone" type="text" value="${sessionScope.usersession.phone}"/>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="checkout__input">
                                            <p>Email<span>*</span></p>
                                            <input name="email" type="text" value="${sessionScope.usersession.email}"/>
                                        </div>
                                    </div>
                                </div>                                                          
                            </div>                    
                            <div class="col-lg-4 col-md-6">
                                <div  class="checkout__order">
                                    <h4>Your Order</h4>
                                    <div class="checkout__order__products">Products <span>Total</span></div>
                                    <ul>
                                        <c:forEach var="cart" items="${sessionScope.listCart}">
                                            <li>${cart.productName} <span>$${cart.price*cart.quantity}</span></li>
                                            </c:forEach>
                                    </ul>
                                    <%
                                        List<Cart> listTotal = (List<Cart>) session.getAttribute("listCart");
                                        double totalPrice = 0;
                                        for (Cart cart : listTotal) {
                                            totalPrice += cart.getPrice() * cart.getQuantity();
                                        }
                                        session.setAttribute("totalCartPrice", totalPrice);
                                    %>
                                    <div class="checkout__order__subtotal">Payment Method: <span>Ship COD</span></div>
                                    <div class="checkout__order__subtotal">Shipment: <span>Free ship</span></div>
                                    <div class="checkout__order__subtotal">Subtotal: <span>$${sessionScope.totalCartPrice}</span></div>                        
                                    <div class="checkout__order__total">Total: <span>$${sessionScope.totalCartPrice}</span></div>                                    
                                    <button type="submit" class="site-btn">PLACE ORDER</button>
                                </div>
                            </div>                    
                        </div>
                    </form>
                </div>
            </div>
        </section>
        <!-- Checkout Section End -->

        <!-- Footer Section Begin -->
        <footer class="footer spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-12">
                        <div class="footer__about">
                            <div class="footer__about__logo">
                                <a href="./index.jsp"><img src="img/logo.png" alt="" /></a>
                            </div>
                            <p class="desc">
                                We are a small young shop always looking for a new and creative ideas to
                                create many beautiful Car's model to satisfy every customers
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12">
                        <div class="footer__widget">
                            <h5>Contact</h5>
                            <div class="item">
                                <i class="ri-map-pin-2-fill"></i>
                                <p>Ho Chi Minh City, Vietnam</p>
                            </div>
                            <div class="item">
                                <i class="bx bxs-envelope"></i>
                                <p><a href="mailto:tofu_shop@gmail.com">tofu_shop@gmail.com</a></p>
                            </div>
                            <div class="item">
                                <i class="ri-phone-fill"></i>
                                <p><a href="tel:(+84) 123 456 789">(+84) 123 456 789</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-12">
                        <div class="footer__widget">
                            <h5>Follow Us</h5>
                            <div class="footer__widget__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-pinterest"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="footer__copyright">
                            <div class="footer__copyright__text">
                                <p>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                    Copyright &copy;
                                    <script>
                                        document.write(new Date().getFullYear());
                                    </script>
                                    All rights reserved | This template is inspired by
                                    <i class="fa fa-heart" aria-hidden="true"></i> by
                                    <a href="https://colorlib.com" target="_blank">Colorlib</a>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer Section End -->

        <!-- Js Plugins -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/mixitup.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>

