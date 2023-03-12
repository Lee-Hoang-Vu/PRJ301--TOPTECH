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

                <div style="background-color: white" class="container">
                    <div class="row">
                        <div class="col-md-12 title">
                               <img style="width: 100%; border-radius: 0px;margin-top:-63px; margin-bottom: -84px; margin-left: -3px" src="./images/head.png">
                            <div class="title">
                                <form action="ProductList"  method="get">
                                    <select style="
                                            background-color: black;
                                            color: wheat;
                                            margin-right: 56%;
                                            height: 40px;
                                            border-radius: 10px;" name="categoryId" class="form-select" onchange="this.form.submit()" >
                                        <option value="">All Category</option>
                                        <c:forEach var="c" items="${clist}">
                                            <option value="${c.getId()}" ${param['categoryId']==c.getId()?"selected":""}>${c.getName()}</option>
                                        </c:forEach>
                                    </select>

                                    <select style="
                                            background-color: black;
                                            color: wheat;
                                            height: 40px;
                                            border-radius: 10px;" name="sort" class="form-select"  onchange="this.form.submit()">
                                        <option value="0" ${param['sort']==0?"selected":""}>Sort Default</option>
                                        <option value="1" ${param['sort']==1?"selected":""}>Newest</option>
                                        <option value="2" ${param['sort']==2?"selected":""}>Price ascending</option>
                                        <option value="3" ${param['sort']==3?"selected":""}>Price descending</option>
                                    </select>
                                </form>
                            </div>
                        </div>
                    </div>

                    <div id="brand"  class="brand-bg">
                        <div class="row">
                            <div>
                                <div class="places-list">
                                    <c:forEach var="p" items="${plist}">
                                        <div class="place-item">                                                                    
                                            <a href="./ProductDetails?pid=${p.getId()}" class="place-img">
                                                <img src="${p.getImg()}" alt="img">
                                            </a>                                     
                                            <div class="place-body">
                                                <h4 class="place-heading"><a href="./ProductDetails?pid=${p.getId()}" class="pr-name">${p.getName()}</a></h4>
                                                <div class="place-price">
                                                    <ins ><span>Price: <span class="currencySymbol">$</span >${p.getPrice()}</span></ins>
                                                </div>
                                                <a href="./AddToCart?pid=${p.getId()}&quantity=1"  class="place-buy"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i>add to cart</a>                                               
                                            </div>                         
                                        </div>
                                    </c:forEach>       
                                </div>
                            </div>
                        </div>
                    </div>

                    <div style="background-color: gray; display: flex; justify-content: center; box-shadow: #ddd 0px 0px 19px 8px; border-radius: 10px">
                        <ul class="pagination" >
                            <li><a style="background: wheat;padding: 3px 12px 14px 14px;" href="ProductList?index=1&categoryId=${param['categoryId']}"><i class="fa fa-angle-left" class="page-link" aria-hidden="true"></i></a></li>
                                    <c:forEach var = "i" begin = "1" end = "${numberPage}">
                                <li class="${param['index']==i?'page-item active':'page-item'}"><a href="ProductList?index=${i}&categoryId=${param['categoryId']}"   class="page-link">${i}</a></li>
                                </c:forEach>
                            <li><a style="background: wheat;padding: 3px 12px 14px 2px;" href="ProductList?index=${numberPage}&categoryId=${param['categoryId']}"><i class="fa fa-angle-right" class="page-link" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <jsp:include page="footer.jsp"/>
        </div>
        <div class="overlay"></div>
    </body>
</html>
