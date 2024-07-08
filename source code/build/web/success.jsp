<%-- 
    Document   : success
    Created on : Mar 17, 2024, 9:18:23 PM
    Author     : anphu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
    <head>
        <meta charset="UTF-8" />
        <meta name="description" content="Ogani Template" />
        <meta name="keywords" content="Ogani, unica, creative, html" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>Success | Tofu shop</title>

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

        <style>
            body {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
                padding: 0;
                flex-direction: column; 
            }

            .image-wrapper {
                display: flex;
                justify-content: center;
                align-items: center;
                margin-bottom: 20px;
            }

            img {
                width: 150px; 
                height: auto;
                margin-right: 20px; 
            }

            .success-message {
                text-align: center; 
                margin-bottom: 20px;
            }

            .button-group {
                display: flex;
                justify-content: center;
                align-items: center;
            }

            button {
                margin: 10px;
            }

            .button-group button:hover {
                opacity: 0.9;
            }
        </style>
    </head>
    <body>
        <div class="image-wrapper">
            <img src="img/checkout.jpg" alt="Success icon" /> 
            <h1>Order Successfully Placed!</h1>
        </div>
        <div style="text-align: center;">
            <p style="font-weight: bold; font-size: 24px;">
                Your order has been successfully placed. Thank you for shopping with us!
            </p>
        </div>

        <div class="button-group">
            <form action="index.jsp" method="post" style="text-align: center;">
                <button style="cursor: pointer; background-color: #f2d349; color: white; border-radius: 25px; padding: 15px 30px; font-size: 20px; font-weight: bold; border: none;">
                    Back to Home
                </button>
            </form>

            <form action="shopcontrol" method="post" style="text-align: center;">
                <button style="cursor: pointer; background-color: white; color: #f2d349; box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.2); border-radius: 25px; padding: 15px 30px; font-size: 20px; font-weight: bold; border: none;">
                    Continue shopping
                </button>
            </form>
        </div>
        <!--  footer section code  -->
    </body>
</html>
