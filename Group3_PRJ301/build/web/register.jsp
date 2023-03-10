<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
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
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="./css/login.css">
    </head>
    

    <body class="main-layout" onload="generate()">
        <div class="wrapper">
            <div id="content">
                <jsp:include page="header1.jsp"/>
                <section>
                    <div class="noi-dung">
                        <div class="form">
                            <h2>REGISTER</h2>
                            <form action="register" name="frm-login" method="post">
                                <div class="input-form">
                                    <label for="fid-name">User Name<span style="color: red">*</span></label>
                                    <input type="text" id="fid-name" name="name" value="" class="txt-input">
                                </div>
                                <div class="input-form">
                                    <label for="fid-name">Email<span style="color: red">*</span></label>
                                    <input type="email" id="fid-name" name="email" value="" class="txt-input">
                                </div>
                                <div class="input-form">
                                    <label for="fid-name">Phone<span style="color: red">*</span></label>
                                    <input type="text" id="fid-name" name="phone" value="" class="txt-input">
                                </div>
                                <div class="input-form">
                                    <label for="fid-name">Address<span style="color: red">*</span></label>
                                    <input type="text" id="fid-name" name="address" value="" class="txt-input">
                                </div>
                                <div class="input-form">
                                    <label for="fid-name">Gender<span style="color: red">*</span></label>
                                    <div style="display: flex;padding: 0px 125px;
                                         display: flex;
                                         font-size: 12px">
                                        <input type="radio" name="gender" value="1" > Male  
                                        <input type="radio" name="gender" value="0" > Female
                                    </div>
                                </div>
                                <div class="input-form">
                                    <label for="fid-pass">Password:<span style="color: red">*</span></label>
                                    <input type="password" id="fid-pass" name="pass" value="" class="txt-input">
                                </div>
                                <div style="width: 25%" class="input-form">
                                    <input type="text" id="submitLogin"
                                           placeholder="Captcha code" >
                                </div>
                                <span 
                                    style="
                                    display: inline-block;
                                    width: 11%;
                                    box-shadow: 0px 2px 4px 2px grey;
                                    font-weight: 400;
                                    font-weight: 400;
                                    margin: 0px 10px -8px;
                                    padding: 15px;
                                    text-decoration: line-through;" id="image" class="inline" selectable="False">
                                </span>

                                <span onclick="generate()" 
                                      style="
                                      display: inline-block;
                                      cursor: pointer;
                                      background-color: wheat;
                                      font-size: 18px;
                                      border-radius: 10px;
                                      box-shadow: 0px 2px 2px 2px grey;">
                                    Change
                                </span>
                                <span id="bt" onclick="printmsg()" 
                                      style="display: inline-block;
                                      cursor: pointer;
                                      background-color: wheat;
                                      font-size: 18px;
                                      border-radius: 10px;
                                      box-shadow: 0px 2px 2px 2px grey;
                                      margin: 0px 10px 0px;" >Check</span><br/><br/>

                                <p id="key" style="color: red" ></p>

                                <p class="form-row" style="color: red">
                                    ${messregis}
                                </p>
                                <div class="input-form">
                                    <button class="btn btn-submit"  disabled="" id="btnRegister" type="submit">Register</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </section>   
            </div>
            <jsp:include page="footer.jsp"/>

            <!-- Scroll Top Button -->
            <a class="btn-scroll-top"><i class="biolife-icon icon-left-arrow"></i></a>

            <script src="assets/js/jquery-3.4.1.min.js"></script>
            <script src="assets/js/bootstrap.min.js"></script>
            <script src="assets/js/jquery.countdown.min.js"></script>
            <script src="assets/js/jquery.nice-select.min.js"></script>
            <script src="assets/js/jquery.nicescroll.min.js"></script>
            <script src="assets/js/slick.min.js"></script>
            <script src="assets/js/biolife.framework.js"></script>
            <script src="assets/js/functions.js"></script>
            <script>
                                    var captcha;
                                    function generate() {

                                        // Clear old input
                                        document.getElementById("submitLogin").value = "";

                                        // Access the element to store
                                        // the generated captcha
                                        captcha = document.getElementById("image");
                                        var uniquechar = "";

                                        const randomchar =
                                                "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

                                        // Generate captcha for length of
                                        // 5 with random character
                                        for (let i = 1; i < 6; i++) {
                                            uniquechar += randomchar.charAt(
                                                    Math.random() * randomchar.length)
                                        }

                                        // Store generated input
                                        captcha.innerHTML = uniquechar;
                                    }

                                    function printmsg() {
                                        const usr_input = document
                                                .getElementById("submitLogin").value;

                                        // Check whether the input is equal
                                        // to generated captcha or not
                                        if (usr_input == captcha.innerHTML) {
                                            document.getElementById("btnRegister")
                                                    .disabled = false;
                                            var s = document.getElementById("key")
                                                    .innerHTML = "CapCha Matched";
                                            generate();
                                        } else {
                                            var s = document.getElementById("key")
                                                    .innerHTML = "CapCha Not Matched";
                                            generate();
                                        }
                                    }
            </script>
    </body>

</html>