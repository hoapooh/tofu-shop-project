<%-- 
    Document   : AddProduct
    Created on : Mar 9, 2024, 5:39:12 PM
    Author     : anphu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>ADMIN | Edit Product</title>

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
        <style>
            .edit_product {
                display: flex;
                flex-direction: column;
                justify-content: center;
                margin: 0 auto;
                width: 80%;
                padding: 20px 45px;
                box-shadow: 0px 10px 15px 5px rgba(0, 0, 0, 0.1);
                border-radius: 2px;
            }
            .edit_product .title {
                font-size: 24px;
                font-weight: 600;
                margin-bottom: 10px;
            }
            .edit_product .item {
                display: flex;
                flex-direction: column;
                margin: 5px 0;
            }
            .edit_product .item label {
                margin-bottom: 2px;
            }
            .edit_product .item input,
            .edit_product .item textarea,
            .edit_product .item select {
                padding: 10px;
                border: 1px solid #000;
                border-radius: 5px;
            }
            .edit_product .btn {
                padding: 10px 20px;
                background-color: #000;
                color: #fff;
                border: none;
                border-radius: 5px;
                text-decoration: none;
            }

            .edit_product .item_last select {
                padding: 5px;
            }

            .edit_product .form_footer {
                text-align: right;
            }

            .edit_product .form_footer input {
                cursor: pointer;
            }
        </style>
    </head>

    <body>
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

        <main class="main-user main-add-product">
            <div class="content">
                <a href="./productadmin" class="back-btn">Back</a>
                <form action="edit" method="post" class="edit_product">
                    <div class="title">Edit Product</div>
                    <div class="item">
                        <label>Product ID</label>
                        <input value="${listLoad.productId}" type="text" name="id" readonly required />
                    </div>
                    <div class="item">
                        <label>Name</label>
                        <input value="${listLoad.name}" type="text" name="names" required />
                    </div>
                    <div class="item">
                        <label>Price</label>
                        <input value="${listLoad.price}" type="text" name="price" required />
                    </div>
                    <div class="item">
                        <label>image</label>
                        <input value="${listLoad.image}" type="text" name="images" required />
                    </div>
                    <div class="item">
                        <label>Description</label>
                        <textarea name="description" required>${listLoad.description}</textarea>
                    </div>
                    <div class="item">
                        <label>Quantity</label>
                        <input value="${listLoad.quantity}" type="number" name="quantity" required />
                    </div>
                    <div class="item item_last">
                        <label>Model</label>
                        <select name="model" id="">
                            <c:forEach items="${listMo}" var="mo">
                                <option value="${mo.modelId}">${mo.modelName}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form_footer">
                        <input type="submit" class="btn btn-success" value="Save" />
                    </div>
                </form>
            </div>
        </main>
    </body>
</html>

