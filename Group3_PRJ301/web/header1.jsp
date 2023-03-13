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

    <body>
        <!-- header -->
        <header>
            <!-- header inner -->
            <div class="head_top">
                <div class="header">

                    <div class="container-fluid">

                        <div style="margin-right: -207px" class="row">
                            <div class="col-lg-1 logo_section">
                                <div class="full">
                                    <div class="center-desk">
                                        <div class="logo">
                                            <img style="    padding-bottom: 192px;
                                                 margin-bottom: -194px;" src="images/logo.png" alt="#">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-9">
                                <div class="right_header_info">
                                    <ul>
                                        <li class="menu_iconb">
                                            <a href="HomePage">HOME</a>
                                        </li>
                                        <li class="menu_iconb">
                                            <a href="ProductList">SHOP </a>
                                        </li>
                                        <li class="menu_iconb">
                                            <a href="ViewCart">CART</a>
                                        </li>

                                        <li class="menu_iconb">
                                            <c:if test="${sessionScope['account'].getRoles().getId() == 2}">
                                            <li ><a href="Dashboard" >MANAGER PAGE</a></li>
                                            </c:if>
                                        </li>
                                        <li class="menu_iconb">
                                            <c:if test="${sessionScope['account']!=null}">
                                            <li><a href="MyOrder">MY ORDER</a>
                                            </li>
                                        </c:if>
                                        </li>
                                        <li class="menu_iconb">
                                            <c:if test="${sessionScope['account']!=null}">
                                            <li ><a href="Profile"><i class="biolife-icon icon-login"></i>PROFILE</a>
                                            </li>
                                        </c:if>
                                        </li>
                                        <li class="menu_iconb">
                                            <c:if test="${sessionScope['account']!=null}">
                                            <li><a href="Logout"><i style="font-size: 25px" class='fa fa-sign-out'></i></a></li>
                                                </c:if>
                                        </li>
                                        
                                        <li class="menu_iconb">
                                            <c:if test="${sessionScope['account']==null}">
                                            <li ><a href="login">LOG IN</a></li>
                                            </c:if>  
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>     
            </div>
        </header>
    </body>
</html>

