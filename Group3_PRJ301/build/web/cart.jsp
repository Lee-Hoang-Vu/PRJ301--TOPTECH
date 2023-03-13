<%-- 
    Document   : home
    Created on : Mar 1, 2023, 4:07:25 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- basic -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
        <title>SHOP</title>

        <!-- bootstrap css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- fevicon -->
        <link rel="icon" href="images/fevicon.png" type="image/gif" />
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <!-- Tweaks for older IEs-->
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    </head>
    <!-- body -->

    <body class="main-layout">

        <div class="wrapper">
            <div id="content">
                <jsp:include page="header1.jsp"/>
                <div class="row">
                    <div class="col-md-12">
                        <div class="title">
                            <h2> VIEW CART</h2>
                        </div>
                    </div>
                </div>
                <div id="brand"  class="brand-bg"　
                     style="box-shadow: #ddd 0px 0px 19px 8px;
                     width: 80%;
                     margin-left: 140px;">
                    <div style="justify-content: center;" class="row">
                        <div>
                            <div class="shoppingcart">
                                <table style="text-align: center" class="shoptable" border="1px">
                                    <thead class="head">
                                        <tr>
                                            <th style="font-size: 26px; color: wheat">Product Name</th>
                                            <th style="font-size: 26px; color: wheat">Product Img</th>
                                            <th style="font-size: 26px; color: wheat">Price</th>
                                            <th style="font-size: 26px; color: wheat">Quantity</th>
                                            <th style="font-size: 26px; color: wheat">Total</th>
                                            <th style="font-size: 26px; color: wheat">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody class="tbody">
                                        <c:forEach var="cart" items="${cl}">
                                            <tr class="cart_item">
                                                <td >
                                                    <a style="font-size: 22px" href="#">${cart.getProduct().getName()}</a>
                                                </td>
                                                <td class="Product Name" data-title="Product Name">
                                                    <a href="#">
                                                        <figure><img width="113" height="113" src="${cart.getProduct().getImg()}" alt="shipping cart"></figure>
                                                    </a>
                                                </td>

                                                <td class="product-price" data-title="Price">
                                                    <div class="price price-contain">
                                                        <ins><span style="font-size: 22px; text-decoration: none; "><span class="currencySymbol">$</span>${cart.getProduct().getPrice()}</span></ins>
                                                    </div>
                                                </td>
                                                <td class="" data-title="Quantity">
                                                    <div class="">
                                                        <div class="">
                                                            <input type="text" name="qty12554" value="${cart.getQuantity()}">
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="product-subtotal" data-title="Total">
                                                    <div class="price price-contain">
                                                        <ins><span  style="font-size: 22px; text-decoration: none; "><span class="currencySymbol">$</span>${cart.getProduct().getPrice()*cart.getQuantity()}</span></ins>
                                                    </div>
                                                </td>
                                                <td class="" data-title="Total">
                                                    <div class="">
                                                        <a href="./DeleteCartItem?pid=${cart.getProduct().getId()}"style="color: red; font-size: 40px;" class="remove"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </c:forEach>

                                        <tr class="check">
                                            <td class="" colspan="2">
                                                <a class="cart" href="./HomePage">Back to Shop</a>
                                            </td>
                                            <td class="" colspan="6">
                                                <a class="cart" href="./Checkout">Check Out</a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--  footer -->
            <jsp:include page="footer.jsp"/>
            <!-- end footer -->
        </div>

        <div class="overlay"></div>

    </body>

</html>
