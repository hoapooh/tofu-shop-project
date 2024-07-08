<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>ADMIN | PRODUCT</title>

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
        <link rel="stylesheet"
              href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">

        <!-- Lusckiest font -->
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
                        <li class="item"><a href="#!">Product</a></li>
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

        <main class="main-user main-product">
            <div class="content">
                <div class="table__product__title">
                    <h1 class="title">Product Details</h1>
                    <a href="./manage" class="btn">Add new product</a>
                </div>
                <table class="table-content">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>image</th>
                            <th>Price</th>
                            <th>Model</th>
                            <th>Quantity</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody class="table-content-body">
                        <c:forEach items="${listProAdmin}" var="proad">
                            <tr class="item">
                                <td>${proad.productId}</td>
                                <td>${proad.name}</td>
                                <td><img src="${proad.image}" class="image-table" /></td>
                                <td>$ ${proad.price}</td>
                                <td>${proad.modelName}</td>
                                <td>${proad.quantity}</td>
                                <td class="view_del">   
                                    <a href="load?loadid=${proad.productId}"><i class="bx bxs-edit-alt"  style="cursor: pointer"></i></a>
                                    <a href="deleteproduct?delpid=${proad.productId}"><i class="ri-delete-bin-7-fill" style="cursor: pointer"></i></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

                <div class="pagination">
                    <button class="btn btn-l" onclick="backBtn()">
                        <img src="img/arrow.png" alt="" />prev
                    </button>
                    <ul class="list">
                        <!-- <li class="link active" value="1" onclick="activeLink()">1</li>
                        <li class="link" value="2" onclick="activeLink()">2</li>
                        <li class="link" value="3" onclick="activeLink()">3</li>
                        <li class="link" value="4" onclick="activeLink()">4</li>
                        <li class="link" value="5" onclick="activeLink()">5</li>
                        <li class="link" value="6" onclick="activeLink()">6</li> -->
                    </ul>
                    <button class="btn btn-r" onclick="nextBtn()">
                        next<img src="img/arrow.png" alt="" />
                    </button>
                </div>
            </div>
        </main>

        <!-- 
            moi trang 6 san pham 
            page 1: 0 -> 5
            page 2: 6 -> 11
            page 3: 12 -> 17

            beginGet = limit * (page - 1)
            endGet = limit * page - 1
        -->

        <script>
            let thisPage = 1;
            let limit = 5;
            let list = document.querySelectorAll(".table-content-body .item");

            function loadItem() {
                let beginGet = limit * (thisPage - 1);
                let endGet = limit * thisPage - 1;
                for (let i = 0; i < list.length; i++) {
                    if (i >= beginGet && i <= endGet) {
                        list[i].style.display = "table-row";
                    } else {
                        list[i].style.display = "none";
                    }
                }
                listPage();
            }
            loadItem();

            function listPage() {
                let count = Math.ceil(list.length / limit);
                document.querySelector(".pagination .list").innerHTML = "";
                for (i = 1; i <= count; i++) {
                    let newPage = document.createElement("li");
                    newPage.classList.add("link");
                    newPage.innerHTML = i;
                    if (i == thisPage) {
                        newPage.classList.add("active");
                    }
                    newPage.setAttribute("onclick", "activeLink(" + i + ")");
                    document.querySelector(".pagination .list").appendChild(newPage);
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
