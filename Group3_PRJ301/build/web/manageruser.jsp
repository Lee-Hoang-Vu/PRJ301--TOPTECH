<%-- 
    Document   : manageruser
    Created on : Mar 3, 2023, 8:17:03 PM
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

                <div class="col-md-12">
                    <h1 style="text-align: center;">Manager User</h1>

                    <table class="table" style="margin-top: 20px; margin-bottom: 20px;">
                        <thead >
                            <tr style="font-size: 20px;">
                                <th scope="col">ID</th>
                                <th scope="col">Name</th>
                                <th scope="col">Email</th>
                                <th scope="col">Address</th>
                                <th scope="col">gender</th>
                                <th scope="col">Phone</th>
                                <th scope="col">Role</th>
                                <th scope="col" style="text-align: center">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="p" items="${pl}">
                                <tr>
                                    <th scope="row">${p.getId()}</th>
                                    <td>${p.getName()}</td>
                                    <td>${p.getEmail()}</td>
                                    <td>${p.getAddress()}</td>
                                    <td>${p.getGender()?"Male":"Female"}</td>
                                    <td>${p.getPhone()}</td>
                                    <td>${p.getRoles().getId()==2?"Admin":"Customer"}</td>
                                    <td ><a href="DeleteUser?id=${p.getId()}" class="btn- btn-danger  btn-lg" style="display: block;" >Delete</a></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>

                <jsp:include page="footer.jsp"/>
            </div>
        </div>         
        <!-- end footer -->
        <div class="overlay"></div>
    </body>
</html>
