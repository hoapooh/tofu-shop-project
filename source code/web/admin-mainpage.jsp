<%-- 
    Document   : admin-mainpage
    Created on : Mar 7, 2024, 10:12:33 PM
    Author     : anphu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>ADMIN | ADMIN</title>

        <!-- Favicon -->
        <link rel="apple-touch-icon" sizes="57x57" href="favicon/apple-icon-57x57.png" />
        <link rel="apple-touch-icon" sizes="60x60" href="favicon/apple-icon-60x60.png" />
        <link rel="apple-touch-icon" sizes="72x72" href="favicon/apple-icon-72x72.png" />
        <link rel="apple-touch-icon" sizes="76x76" href="favicon/apple-icon-76x76.png" />
        <link rel="apple-touch-icon" sizes="114x114" href="favicon/apple-icon-114x114.png" />
        <link rel="apple-touch-icon" sizes="120x120" href="favicon/apple-icon-120x120.png" />
        <link rel="apple-touch-icon" sizes="144x144" href="favicon/apple-icon-144x144.png" />
        <link rel="apple-touch-icon" sizes="152x152" href="favicon/apple-icon-152x152.png" />
        <link rel="apple-touch-icon" sizes="180x180" href="favicon/apple-icon-180x180.png" />
        <link rel="icon" type="image/png" sizes="192x192" href="favicon/android-icon-192x192.png" />
        <link rel="icon" type="image/png" sizes="32x32" href="favicon/favicon-32x32.png" />
        <link rel="icon" type="image/png" sizes="96x96" href="favicon/favicon-96x96.png" />
        <link rel="icon" type="image/png" sizes="16x16" href="favicon/favicon-16x16.png" />
        <link rel="manifest" href="favicon/manifest.json" />
        <meta name="msapplication-TileColor" content="#ffffff" />
        <meta name="msapplication-TileImage" content="favicon/ms-icon-144x144.png" />
        <meta name="theme-color" content="#ffffff" />

        <!-- Remix Icon -->
        <link href="https://cdn.jsdelivr.net/npm/remixicon@4.1.0/fonts/remixicon.css" rel="stylesheet" />

        <!-- Luskiest font -->
        <link href="https://fonts.googleapis.com/css2?family=Luckiest+Guy&display=swap" rel="stylesheet" />

        <!-- Font poppins -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
            rel="stylesheet"
            />

        <!-- Font Sen -->
        <link
            href="https://fonts.googleapis.com/css2?family=Sen:wght@400..800&amp;display=swap"
            rel="stylesheet"
            />

        <!-- Reset CSS -->
        <link rel="stylesheet" href="css/reset.css" type="text/css" />

        <!-- Admin style -->
        <link rel="stylesheet" href="css/admin-style.css" type="text/css" />
    </head>
    <body>
        <!-- Header -->
        <header class="header">
            <div class="content">
                <div class="row">
                    <a href="./admin-mainpage.jsp"><img src="img/logo.png" alt="" class="image" /></a>
                    <ul class="list">
                        <li class="item"><a href="./user">User</a></li>
                        <li class="item"><a href="./income">Income</a></li>
                        <li class="item"><a href="./productadmin">Product</a></li>
                        <li class="item"><a href="./userservice">Service</a></li>
                    </ul>
                    <div class="action">
                        <a href="login.jsp" class="btn"
                           ><img src="img/logout-circle-r-line.svg" alt=""
                              /></a>
                    </div>
                </div>
            </div>
        </header>

        <main class="main-mainpage">
            <div class="content">
                <div class="row">
                    <!-- Info -->
                    <div class="info">
                        <h1 class="title">Shop Info</h1>
                        <div class="body">
                            <div class="item">
                                <span>Name</span>
                                <p class="desc">TOFU SHOP</p>
                            </div>
                            <div class="item">
                                <span>Email</span>
                                <p class="desc">example@gmail.com</p>
                            </div>
                            <div class="item">
                                <span>Phone</span>
                                <p class="desc">0 123 456 789</p>
                            </div>
                            <div class="item">
                                <span>Address</span>
                                <p class="desc">Ho Chi Minh City, Vietnam</p>
                            </div>
                        </div>
                    </div>

                    <!-- Slogan -->
                    <div class="slogan">
                        Your <span>Model</span> <br />
                        Your <span>Passion</span>
                    </div>
                </div>
            </div>
        </main>

        <!-- Footer -->
        <footer class="footer">
            <div class="content">
                <div class="social-media">
                    <a target="_blank" rel="noopener" href="https://www.instagram.com/">
                        <img src="img/instagram.svg" alt="" class="image" />
                    </a>
                    <a target="_blank" rel="noopener" href="https://www.facebook.com/">
                        <img src="img/facebook.svg" alt="" class="image" />
                    </a>
                    <a target="_blank" rel="noopener" href="https://twitter.com/">
                        <img src="img/twiiter.svg" alt="" class="image" />
                    </a>
                </div>
            </div>
        </footer>
    </body>
</html>

