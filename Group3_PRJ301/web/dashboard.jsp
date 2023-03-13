<%-- 
    Document   : userprofile
    Created on : Mar 2, 2023, 11:15:05 PM
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
        <link rel="stylesheet" href="css/profile.css">
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
                <header>
                    <!-- header inner -->
                    <div class="head_top">
                        <div class="header">

                            <div class="container-fluid">

                                <div class="row">
                                    <div class="col-lg-1 logo_section">
                                        <div class="full">
                                            <div class="center-desk">
                                                <div class="logo">
                                                    <img style="    padding-bottom: 192px;
                                                 margin-bottom: -194px;"  src="images/logo.png" alt="#">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-9">
                                        <div class="right_header_info">
                                            <ul>
                                                <li class="menu_iconb">
                                                    <a href="ManagerUser">MANAGE USER</a>
                                                </li>
                                                <li class="menu_iconb">
                                                    <a href="ManagerProduct">MANAGE PRODUCT </a>
                                                </li>
                                                <li class="menu_iconb">
                                                    <a href="HomePage">BACK</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>     
                    </div>
                </header>
                
                <section style="padding-top: 59px; padding-left: 80px; padding-bottom: 209px">
                <table>
                    <tr> 
                        <td colspan="3"><h1 style="font-weight: 500; text-align: center">DASH BOARD</h1> </td>  
                    </tr>
                    <tr> 
                        <td> <div class="col-md-3">
                                <button type="button" class="btn btn-info btn-lg " data-toggle="modal" data-target="#myModalAddNew">Number Of Product: ${nump}</button>
                            </div> </td>  
                        <td>  
                            <div class="col-md-3">
                                <button type="button" class="btn btn-info btn-lg " data-toggle="modal" data-target="#myModalAddNew">Number Of Order: ${numo}</button>
                            </div> </td>  
                        <td>     <div class="col-md-3">
                                <button type="button" class="btn btn-info btn-lg " data-toggle="modal" data-target="#myModalAddNew">Number Of Customer: ${numu}</button>
                            </div></td>  
                        <td>   <div class="col-md-3">
                                <button type="button" class="btn btn-info btn-lg " data-toggle="modal" data-target="#myModalAddNew">Profit : ${profit}$</button>
                            </div> </td>  
                    </tr>
                </table>
                </section>
                <jsp:include page="footer.jsp"/>
            </div>
        </div>         

        <!-- end footer -->

        <div class="overlay"></div>
    </body>
</html>
