<%-- 
    Document   : login
    Created on : Mar 5, 2024, 9:33:40 PM
    Author     : anphu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Tofu shop | Login</title>

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

        <!-- Bootstrap -->
        <link
            href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
            rel="stylesheet"
            id="bootstrap-css"
            />
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <!-- Icon CSS -->
        <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css" />
        <link href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css" rel="stylesheet" />

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

        <!-- Reset CSS -->
        <link rel="stylesheet" href="./css/reset.css" />
        <!-- Style CSS -->
        <link rel="stylesheet" href="./css/login.css" />
    </head>
    <body>
        <div id="logreg-forms">
            <form action="login" method="post" class="form-signin">
                <div class="image">
                    <img src="./img/Logo-favicon.png" alt="" class="thumb" />
                </div>
                <h1 class="title">Log In</h1>
                <p style="color: red; text-align: center; font-size: 20px;">${requestScope.ms}</p>
                <div class="input-box">
                    <input name="user" type="text" placeholder="Username" required="" />
                    <i class="bx bxs-user"></i>
                </div>

                <div class="input-box">
                    <input name="pass" type="password" placeholder="Password" id="myPassword" required="" />
                    <i class="bx bxs-lock" onclick="showPassword1()" id="lock"></i>
                </div>
                <!-- Remember and forgot password features
                <div class="remember-forgot">
                    <label><input type="checkbox" name="" id="" />Remember me</label>
                    <a href="" class="forgot">Forgot password?</a>
                </div> -->

                <button class="btn" type="submit">Log in</button>

                <div class="register-link">
                    <p>New to TOFU? <a href="./signup.jsp" id="btn-signup"> Create an Account </a></p>
                </div>
            </form>
        </div>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"
        ></script>
        <script src="./js/main.js"></script>
    </body>
</html>


