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
                <jsp:include page="header1.jsp"/>
                <!-- Categories -->
                <div class="container">
                    <h1 class="your">Your Account Profile</h1><br>
                    <div class="ipform">
                        <form method="post" action="Profile">
                            <div  class="name">
                                <label class="name1" >Name</label><input class="name2" type="text" value="${sessionScope['account'].getName()}" name="name">
                            </div>
                            <br/>
                            <div  class="phone">
                                <label class="phone1" >Phone</label><input class="phone2" type="text" value="${sessionScope['account'].getPhone()}" name="phone">
                            </div>
                            <br/>
                            <div  class="email">
                                <label class="email1" >Email</label><input class="email2" type="text" value="${sessionScope['account'].getEmail()}" name="email">
                            </div>
                            <br/>
                            <div  class="gender">
                                <label class="gender1" >Gender</label>
                                <label class="gender2"> 
                                    <input type="radio" name="gender" value="1"  ${sessionScope['account'].getGender()?"Checked":""}> Male  
                                    <input type="radio" name="gender" value="0"  ${!sessionScope['account'].getGender()?"Checked":""}> Female
                                </label>
                            </div>
                            <br/>
                            <div  class="address">
                                <label class="address1" >Address</label><input class="address2" type="text" value="${sessionScope['account'].getAddress()}" name="address">
                            </div>
                            <a style="margin-left: 21%;" href="Changepassword" class="change">Change password</a>
                            <div  class="" style="padding: 2px;">           
                                <input value="${sessionScope['account'].getId()}" name="id" type="hidden">
                            </div>
                            <div  class="" style="padding: 2px;">           
                                <p style="color: green;">${mess}</p>
                            </div>                
                            <input class="edit" type="submit" value="Edit" >             
                        </form>
                    </div>
                </div>
            </div>
            <jsp:include page="footer.jsp"/>
            <!-- end footer -->
        </div>

        <div class="overlay"></div>
    </body>
</html>
