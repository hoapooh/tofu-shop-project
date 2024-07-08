<%-- 
    Document   : profile
    Created on : Mar 5, 2024, 9:34:06 PM
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
        <title>Tofu | Profile</title>

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
                                        <li><a href="#!">Profile</a></li>
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

        <!-- Profile Settings Begin -->
        <div class="profile">
            <h1 class="title">Account Settings</h1>
            <p style="color: red; text-align: center; font-size: 20px; margin-top: 10px;">${requestScope.ms}</p>
            <div class="container">
                <div class="row no-gutters row-bordered row-border-light">
                    <div class="col-md-3">
                        <div class="list-group list-group-flush account-settings-links">
                            <a
                                class="list-group-item list-group-item-action active"
                                data-toggle="list"
                                href="#account-profile"
                                >Profile</a
                            >
                            <a
                                class="list-group-item list-group-item-action"
                                data-toggle="list"
                                href="#account-change-password"
                                >Change password</a
                            >
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="tab-content">
                            <form action="saveprofile" class="tab-pane fade active show" id="account-profile">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="form-group col-md-6">
                                            <label class="form-label">Fullname</label>
                                            <input
                                                type="text"
                                                name="fullname"
                                                class="form-control mb-1"
                                                value="${sessionScope.usersession.name}"
                                                />
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="form-label">Address</label>
                                            <input
                                                name="address"
                                                type="text"
                                                class="form-control"
                                                value="${sessionScope.usersession.address}"
                                                />
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-6">
                                            <label class="form-label">E-mail</label>
                                            <input
                                                type="email"
                                                name="email"
                                                class="form-control mb-1"
                                                value="${sessionScope.usersession.email}"
                                                />
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="form-label">Phone</label>
                                            <input type="tel" name="phone" class="form-control mb-1" value="${sessionScope.usersession.phone}" />
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <button type="submit" class="btn">Save</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <form action="changepass" class="tab-pane fade" id="account-change-password">
                                <div class="card-body pb-2">
                                    <div class="form-group">
                                        <label class="form-label" for="password">Current password</label>
                                        <input type="password" class="form-control" name="pass" />
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label" for="new-password">New password</label>
                                        <input type="password" class="form-control" name="newpass" />
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label">Repeat new password</label>
                                        <input
                                            type="password"
                                            class="form-control"
                                            name="renewpass"
                                            />
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <button type="submit" class="btn">Save</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Profile Settings End -->

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

