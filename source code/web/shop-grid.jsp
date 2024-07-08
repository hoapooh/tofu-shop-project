<%-- 
    Document   : shop-grid
    Created on : Mar 5, 2024, 9:35:40 PM
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
        <title>Tofu | Shop</title>

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

        <!-- Css Styles -->
        <link rel="stylesheet" href="./css/bootstrap.min.css" type="text/css" />
        <link rel="stylesheet" href="./css/font-awesome.min.css" type="text/css" />
        <link rel="stylesheet" href="./css/elegant-icons.css" type="text/css" />
        <link rel="stylesheet" href="./css/nice-select.css" type="text/css" />
        <link rel="stylesheet" href="./css/jquery-ui.min.css" type="text/css" />
        <link rel="stylesheet" href="./css/owl.carousel.min.css" type="text/css" />
        <link rel="stylesheet" href="./css/slicknav.min.css" type="text/css" />
        <link rel="stylesheet" href="./css/style.css" type="text/css" />
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
                        <a href="./index.jsp"><img src="img/logo.png" alt="" class="logo" /></a>
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
                            <li class="item">
                                <form action="search" method="post" class="search">
                                    <input value="${txtSave}" name="txt" type="text" placeholder="Search" class="search-box" />
                                    <button type="submit" class="btn"><i class="bx bx-search"></i></button>
                                </form>
                            </li>
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
        <!-- Header Section End -->

        <!-- Breadcrumb Section Begin -->
        <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb-car.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="breadcrumb__text">
                            <h2>Tofu Shop</h2>
                            <div class="breadcrumb__option">
                                <a href="./index.jsp">Home</a>
                                <span>Shop</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Section End -->

        <!-- Product Section Begin -->
        <section class="product spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-5">
                        <div class="sidebar">
                            <div class="sidebar__item">
                                <h4>Model</h4>
                                <ul>
                                    <c:forEach items="${listMo}" var="mo">
                                        <li class="${tag == mo.modelId ? "active" : ""}"><a href="model?mid=${mo.modelId}">${mo.modelName}</a></li>
                                        </c:forEach>
                                </ul>
                            </div>
                            <div class="sidebar__item">
                                <div class="latest-product__text">
                                    <h4>Latest Products</h4>
                                    <div class="latest-product__slider owl-carousel">
                                        <div class="latest-prdouct__slider__item">
                                            <c:forEach items="${listLatestPro}" begin="0" end="2" var="pro">
                                                <a href="productdetail?proid=${pro.productId}" class="latest-product__item">
                                                    <div class="latest-product__item__pic">
                                                        <img src="${pro.image}" alt="" />
                                                        <c:if test="${pro.discountRate != 0}">
                                                            <div class="product__discount__percent">-${pro.discountRate}%</div>
                                                        </c:if>
                                                    </div>
                                                    <div class="latest-product__item__text">
                                                        <h6>${pro.name}</h6>
                                                        <c:if test="${pro.discountRate != 0}">
                                                            <div class="product__item__price">
                                                                $${pro.price * (100 - pro.discountRate) / 100} <span>$${pro.price}</span>
                                                            </div>
                                                        </c:if>
                                                        <c:if test="${pro.discountRate == 0}">
                                                            <h5>$${pro.price}</h5>
                                                        </c:if>
                                                    </div>
                                                </a>
                                            </c:forEach>
                                        </div>
                                        <div class="latest-prdouct__slider__item">
                                            <c:forEach items="${listLatestPro}" begin="3" end="5" var="pro">
                                                <a href="productdetail?proid=${pro.productId}" class="latest-product__item">
                                                    <div class="latest-product__item__pic">
                                                        <img src="${pro.image}" alt="" />
                                                        <c:if test="${pro.discountRate != 0}">
                                                            <div class="product__discount__percent">-${pro.discountRate}%</div>
                                                        </c:if>
                                                    </div>
                                                    <div class="latest-product__item__text">
                                                        <h6>${pro.name}</h6>
                                                        <c:if test="${pro.discountRate != 0}">
                                                            <div class="product__item__price">
                                                                $${pro.price * (100 - pro.discountRate) / 100} <span>$${pro.price}</span>
                                                            </div>
                                                        </c:if>
                                                        <c:if test="${pro.discountRate == 0}">
                                                            <h5>$${pro.price}</h5>
                                                        </c:if>
                                                    </div>
                                                </a>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-7">
                        <div class="product__discount">
                            <div class="section-title product__discount__title">
                                <h2>Sale Off</h2>
                            </div>
                            <div class="row">
                                <div class="product__discount__slider owl-carousel">
                                    <c:forEach items="${listProDiscount}" var="pro">
                                        <c:if test="${pro.discountRate != 0}">
                                            <div class="col-lg-4">
                                                <div class="product__discount__item">
                                                    <div
                                                        class="product__discount__item__pic set-bg"
                                                        data-setbg="${pro.image}"
                                                        >
                                                        <div class="product__discount__percent">-${pro.discountRate}%</div>
                                                        <ul class="product__item__pic__hover">
                                                            <li>
                                                                <a href="productdetail?proid=${pro.productId}"><i class="fa fa-shopping-cart"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="product__discount__item__text">
                                                        <span>${pro.modelName}</span>
                                                        <h5><a href="productdetail?proid=${pro.productId}">${pro.name}</a></h5>
                                                        <div class="product__item__price">
                                                            $${pro.price * (100 - pro.discountRate) / 100} <span>$${pro.price}</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                        <div class="filter__item">
                            <div class="row">
                                <div class="col-lg-12 col-md-12">
                                    <div class="filter__found">
                                        <h6><span id="num__product"></span> Products found</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <c:forEach items="${listPro}" var="pro">
                                <div class="col-lg-4 col-md-6 col-sm-6 product__item__list">
                                    <div class="product__item" data-price="">
                                        <div
                                            class="product__item__pic set-bg"
                                            data-setbg="${pro.image}"
                                            >
                                            <c:if test="${pro.discountRate != 0}">
                                                <div class="product__discount__percent">-${pro.discountRate}%</div>
                                            </c:if>
                                            <ul class="product__item__pic__hover">
                                                <li>
                                                    <a href="productdetail?proid=${pro.productId}"><i class="fa fa-shopping-cart"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="product__item__text">
                                            <h6><a href="productdetail?proid=${pro.productId}">${pro.name}</a></h6>
                                                <c:if test="${pro.discountRate != 0}">
                                                <div class="product__item__price">
                                                    $${pro.price * (100 - pro.discountRate) / 100} <span>$${pro.price}</span>
                                                </div>
                                            </c:if>
                                            <c:if test="${pro.discountRate == 0}">
                                                <h5>$${pro.price}</h5>
                                            </c:if>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        <div class="product__pagination">
                            <a href="#!" class="first-btn" onclick="backBtn()"
                               ><i class="fa fa-long-arrow-left"></i
                                ></a>
                            <div class="list"></div>
                            <a href="#!" class="last-btn" onclick="nextBtn()"
                               ><i class="fa fa-long-arrow-right"></i
                                ></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Product Section End -->

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


        <script>
                                        //Pagination            
                                        let thisPage = 1;
                                        let limit = 9;
                                        let list = document.querySelectorAll(".product .product__item");
                                        document.getElementById("num__product").innerHTML = list.length;

                                        function loadItem() {
                                            let beginGet = limit * (thisPage - 1);
                                            let endGet = limit * thisPage - 1;
                                            for (let i = 0; i < list.length; i++) {
                                                if (i >= beginGet && i <= endGet) {
                                                    list[i].style.display = "";
                                                } else {
                                                    list[i].style.display = "none";
                                                }
                                            }
                                            listPage();
                                        }
                                        loadItem();

                                        function listPage() {
                                            let count = Math.ceil(list.length / limit);
                                            document.querySelector(".product__pagination .list").innerHTML = "";
                                            for (i = 1; i <= count; i++) {
                                                let newPage = document.createElement("a");
                                                newPage.classList.add("link");
                                                newPage.innerHTML = i;
                                                if (i == thisPage) {
                                                    newPage.classList.add("active");
                                                }
                                                newPage.setAttribute("onclick", "activeLink(" + i + ")");
                                                document.querySelector(".product__pagination .list").appendChild(newPage);
                                            }
                                        }

                                        function activeLink(i) {
                                            thisPage = i;
                                            loadItem();
                                        }

                                        let link = document.getElementsByClassName("link");

                                        function backBtn() {
                                            if (thisPage > 1) {
                                                for (l of link) {
                                                    l.classList.remove("active");
                                                }
                                                thisPage--;
                                                link[thisPage - 1].classList.add("active");
                                            }
                                            loadItem();
                                        }
                                        function nextBtn() {
                                            let count = Math.ceil(list.length / limit);
                                            if (thisPage < count) {
                                                for (l of link) {
                                                    l.classList.remove("active");
                                                }
                                                thisPage++;
                                                link[thisPage - 1].classList.add("active");
                                            }
                                            loadItem();
                                        }
        </script>
    </body>
</html>

