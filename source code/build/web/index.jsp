<%-- 
    Document   : index
    Created on : Mar 5, 2024, 9:31:18 PM
    Author     : anphu
--%>

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
        <title>Tofu shop</title>

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
                        <a href="./home"><img src="img/logo.png" alt="" class="logo" /></a>
                    </div>
                    <nav class="header__menu">
                        <ul class="list">
                            <li class="item active"><a href="./index.jsp">Home</a></li>
                            <li class="item"><a href="./shopcontrol">Shop</a></li>
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
                                    <a href="./shopping-cart.jsp"><i class="fa fa-shopping-bag"></i><c:if test="${sessionScope.listCart.size() > 0}"><span>${sessionScope.listCart.size()}</span></c:if></a>
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
        <!-- Header Section End -->

        <!-- Hero Section Begin -->
        <section class="hero hero-mainpage">
            <div class="container">
                <div class="hero__item">
                    <div class="hero__ads">
                        <div class="item">
                            <p class="sub-title">100+</p>
                            <p class="sub-desc">Satisfied Customers</p>
                        </div>
                        <div class="item">
                            <p class="sub-title">20+</p>
                            <p class="sub-desc">Quality Products</p>
                        </div>
                        <div class="separate"></div>
                        <div class="item">
                            <p class="sub-title">30 Days</p>
                            <p class="sub-desc">Satisfaction Guaranteed</p>
                        </div>
                        <div class="item">
                            <p class="sub-title">3+</p>
                            <p class="sub-desc">Difference Model</p>
                        </div>
                        <a href="./about.jsp" class="btn"
                           >More about us<i class="bx bxs-right-arrow-circle"></i
                            ></a>
                    </div>
                    <div class="hero__text">
                        <p class="pre-title">Welcome to Tofu toy car model shop</p>
                        <h1 class="title">
                            Your <strong class="text1">Model</strong> <br />Your
                            <strong class="text2">Passion</strong>
                        </h1>
                        <p class="desc">
                            We are here to guide you through lanes of excitement, helping you find the perfect
                            car toy for any occasion with guaranteed quality
                        </p>
                    </div>
                    <div class="hero__image">
                        <div class="car-block">
                            <img src="./img/hero/ornament.svg" alt="" class="ornament" />
                        </div>
                        <img src="./img/hero/car-hero.png" alt="" class="car-hero" />
                    </div>
                </div>
            </div>
        </section>
        <!-- Hero Section End -->

        <!-- Categories Section Begin -->
        <section class="categories">
            <div class="container">
                <div class="row">
                    <div class="categories__slider owl-carousel">
                        <div class="col-lg-3">
                            <div class="categories__item set-bg" data-setbg="img/product/rollsroycephantom-sedan.jpg">
                                <h5><a href="model?mid=3">Sedan</a></h5>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="categories__item set-bg" data-setbg="img/product/lexusgx5502_suv.jpg">
                                <h5><a href="model?mid=2">SUV</a></h5>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="categories__item set-bg" data-setbg="img/product/bugattichiron-sport.jpg">
                                <h5><a href="model?mid=1">Sport</a></h5>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="categories__item set-bg" data-setbg="img/product/gmcsierra1500-truck.jpg">
                                <h5><a href="model?mid=5">Truck</a></h5>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="categories__item set-bg" data-setbg="img/product/maseratigranturismo-coupes.jpg">
                                <h5><a href="model?mid=4">Coupes</a></h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Categories Section End -->

        <!-- Featured Section Begin -->
        <section class="featured spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title">
                            <h2>Featured Product</h2>
                        </div>
                        <div class="featured__controls">
                            <ul>
                                <li class="active" data-filter="*">All</li>
                                <li data-filter=".sedan">Sedan</li>
                                <li data-filter=".suv">SUV</li>
                                <li data-filter=".truck">Truck</li>
                                <li data-filter=".sport">Sport</li>
                                <li data-filter=".coupes">Coupes</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="row featured__filter">
                    <div class="col-lg-3 col-md-4 col-sm-6 mix suv all">
                        <div class="featured__item">
                            <div class="featured__item__pic set-bg" data-setbg="img/product/volvoxc40_suv0.jpg">
                                <ul class="featured__item__pic__hover">
                                    <li>
                                        <a href="productdetail?proid=10"><i class="fa fa-shopping-cart"></i></a>
                                    </li>
                                </ul>
                            </div>
                            <div class="featured__item__text">
                                <h6><a href="productdetail?proid=10">Volvo XC40</a></h6>
                                <h5>$325.00</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 mix truck all">
                        <div class="featured__item">
                            <div class="featured__item__pic set-bg" data-setbg="img/product/fordranger-truck.jpg">
                                <ul class="featured__item__pic__hover">
                                    <li>
                                        <a href="productdetail?proid=21"><i class="fa fa-shopping-cart"></i></a>
                                    </li>
                                </ul>
                            </div>
                            <div class="featured__item__text">
                                <h6><a href="productdetail?proid=21">Ford Ranger</a></h6>
                                <h5>$268.00</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 mix suv all">
                        <div class="featured__item">
                            <div class="featured__item__pic set-bg" data-setbg="img/product/landroverdefender-suv.jpg">
                                <ul class="featured__item__pic__hover">
                                    <li>
                                        <a href="productdetail?proid=6"><i class="fa fa-shopping-cart"></i></a>
                                    </li>
                                </ul>
                            </div>
                            <div class="featured__item__text">
                                <h6><a href="productdetail?proid=6">Land Rover Defender</a></h6>
                                <h5>$55.00</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 mix sedan all">
                        <div class="featured__item">
                            <div class="featured__item__pic set-bg" data-setbg="img/product/audia8-sedan.jpg">
                                <ul class="featured__item__pic__hover">
                                    <li>
                                        <a href="productdetail?proid=11"><i class="fa fa-shopping-cart"></i></a>
                                    </li>
                                </ul>
                            </div>
                            <div class="featured__item__text">
                                <h6><a href="productdetail?proid=11">Audi A8</a></h6>
                                <h5>$83.00</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 mix coupes all">
                        <div class="featured__item">
                            <div class="featured__item__pic set-bg" data-setbg="img/product/maseratigranturismo-coupes.jpg">
                                <ul class="featured__item__pic__hover">
                                    <li>
                                        <a href="productdetail?proid=18"><i class="fa fa-shopping-cart"></i></a>
                                    </li>
                                </ul>
                            </div>
                            <div class="featured__item__text">
                                <h6><a href="productdetail?proid=18">Maserati GranTurismo</a></h6>                       
                                <h5>$193.00</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 mix sedan all">
                        <div class="featured__item">
                            <div class="featured__item__pic set-bg" data-setbg="img/product/nissanaltima-sedan.jpg">
                                <ul class="featured__item__pic__hover">
                                    <li>
                                        <a href="productdetail?proid=14"><i class="fa fa-shopping-cart"></i></a>
                                    </li>
                                </ul>
                            </div>
                            <div class="featured__item__text">
                                <h6><a href="productdetail?proid=14">Nissan Altima</a></h6>
                                <h5>$35.00</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 mix coupes all">
                        <div class="featured__item">
                            <div class="featured__item__pic set-bg" data-setbg="img/product/porschecayman-coupes.jpg">
                                <ul class="featured__item__pic__hover">
                                    <li>
                                        <a href="productdetail?proid=19"><i class="fa fa-shopping-cart"></i></a>
                                    </li>
                                </ul>
                            </div>
                            <div class="featured__item__text">
                                <h6><a href="productdetail?proid=19">Porsche Cayman</a></h6>
                                <h5>$89.00</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 mix sport all">
                        <div class="featured__item">
                            <div class="featured__item__pic set-bg" data-setbg="img/product/fordmustangshelbygt350r-sport.jpg">
                                <ul class="featured__item__pic__hover">
                                    <li>
                                        <a href="productdetail?proid=3"><i class="fa fa-shopping-cart"></i></a>
                                    </li>
                                </ul>
                            </div>
                            <div class="featured__item__text">
                                <h6><a href="productdetail?proid=3">Ford Mustang Shelby GT350R</a></h6>
                                <h5>$75.00</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Featured Section End -->

        <!-- Client Feedback Begin -->
        <section class="testimonial spad">
            <h2 class="title">Clients Feedbacks</h2>
            <div class="container mySwiper">
                <div class="swiper-wrapper">
                    <div class="testi__slide swiper-slide">
                        <img src="./img/testimonial/user1.jpg" alt="" class="image" />
                        <p>
                            Outstanding experience! The website was user-friendly, checkout was smooth, and
                            delivery was prompt. The toy car exceeded expectations with its impeccable design
                            and durability. My child adores it and plays with it non-stop. Highly recommend
                            this store for quality products and excellent service. Will definitely purchase
                            from them again!
                        </p>

                        <i class="bx bxs-quote-alt-left"></i>
                        <div class="testi__details">
                            <span class="name">An Phúc Hòa</span>
                            <span class="job">FPTU Student</span>
                        </div>
                    </div>
                    <div class="testi__slide swiper-slide">
                        <img src="./img/testimonial/user4.jpg" alt="" class="image" />
                        <p>
                            What a fantastic purchase! From browsing to delivery, every step was seamless. The
                            toy car arrived promptly and was well-packaged. Its quality surpassed my
                            expectations—durable, detailed, and beautifully crafted.
                        </p>

                        <i class="bx bxs-quote-alt-left"></i>
                        <div class="testi__details">
                            <span class="name">Michael Davis</span>
                            <span class="job">Toy Car Enthusiast</span>
                        </div>
                    </div>
                    <div class="testi__slide swiper-slide">
                        <img src="./img/testimonial/user3.jpg" alt="" class="image" />
                        <p>
                            Impressed! Fast delivery, well-packaged. The toy car is top-notch—durable,
                            detailed, and a hit with my child. Excellent service, highly recommend!
                        </p>

                        <i class="bx bxs-quote-alt-left"></i>
                        <div class="testi__details">
                            <span class="name">Emily Brown</span>
                            <span class="job">Housewife</span>
                        </div>
                    </div>
                    <div class="testi__slide swiper-slide">
                        <img src="./img/testimonial/user2.jpg" alt="" class="image" />
                        <p>
                            Amazing toy car! Fast shipping, great quality. My kid loves it! Highly recommend
                            this shop!
                        </p>

                        <i class="bx bxs-quote-alt-left"></i>
                        <div class="testi__details">
                            <span class="name">John Doe</span>
                            <span class="job">Officer</span>
                        </div>
                    </div>
                </div>
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-pagination"></div>
                <div class="autoplay-progress">
                    <svg viewBox="0 0 48 48">
                    <circle cx="24" cy="24" r="20"></circle>
                    </svg>
                    <span></span>
                </div>
            </div>
        </section>
        <!-- Client Feedback End -->

        <!-- FAQ Begin -->
        <section class="faq spad">
            <div class="container">
                <h2 class="title">Frequently Asked Questions</h2>
                <div class="faq__wrapper">
                    <button class="faq__accordion">
                        How to Search for Products to Buy on TOFU?
                        <i class="bx bx-chevron-down"></i>
                    </button>
                    <div class="faq__panel">
                        <p>
                            Step 1: On the TOFU application, select Search bar > enter related keywords >
                            Search
                        </p>
                        <p>
                            Step 2: On the Search Results page , you can choose to sort/filter the displayed
                            search results by quick criteria (for example: Model, Price Ascending/Decending).
                        </p>
                    </div>
                </div>
                <div class="faq__wrapper">
                    <button class="faq__accordion">
                        How can I change my password?
                        <i class="bx bx-chevron-down"></i>
                    </button>
                    <div class="faq__panel">
                        <p>
                            On the TOFU website, please log in to your TOFU account, select My Account at
                            account name > select Change Password > select Verify by password > enter Current
                            password & click Confirm > enter and confirm Get New Password > select Confirm
                        </p>
                    </div>
                </div>
                <div class="faq__wrapper">
                    <button class="faq__accordion">
                        Can I add products to a paid order?
                        <i class="bx bx-chevron-down"></i>
                    </button>
                    <div class="faq__panel">
                        <p>
                            Unfortunately, you cannot add products to an order after the order has been
                            successfully paid. In case you still want to add more products, please place
                            another order or you can cancel the paid order (only in case you can click cancel
                            on the system) and place a new order.
                        </p>
                    </div>
                </div>
                <div class="faq__wrapper">
                    <button class="faq__accordion">
                        How can I send message if I have any question?
                        <i class="bx bx-chevron-down"></i>
                    </button>
                    <div class="faq__panel">
                        <p>Step 1: Click on the Contact on the header of the page.</p>
                        <p>
                            Step 2: Scroll down to the bottom of the page, where you'll find the 'Leave Message' section. 
                            This is where you can send us a message if you have any questions about the product or need assistance.
                            Please enter your name, the email address you used to register and use our website, and then type your
                            message requesting assistance.
                        </p>
                    </div>
                </div>
            </div>
        </section>
        <!-- FAQ End -->

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
        <script src="js/swiper-bundle.min.js"></script>
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

