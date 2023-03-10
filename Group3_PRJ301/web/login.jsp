<%-- 
    Document   : login
    Created on : Mar 1, 2023, 11:49:46 PM
    Author     : asus
--%>
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
    <body class="main-layout">
        <div class="wrapper">
            <div id="content">
                <jsp:include page="header2.jsp"/>

                <section>
                    <div class="noi-dung">
                        <div class="form">
                            <h2>LOGIN</h2>
                            <form action="./login" name="frm-login" method="post">
                                <div class="input-form">
                                    <label for="fid-name">Email<span style="color: red">*</span></label>
                                    <input type="email" id="fid-name" name="email" value="" class="txt-input">
                                </div>
                                <div class="input-form">
                                    <label for="fid-pass">Password:<span style="color: red">*</span></label>
                                    <input type="password" id="fid-pass" name="pass" value="" class="txt-input">
                                </div>

                                <p style="color: red;">${mess}</p>
                                <div class="input-form">
                                    <button class="btn btn-submit"  id="btnLogin" type="submit">LOGIN</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </section>
            </div>
            <jsp:include page="footer.jsp"/>
        </div>
        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.countdown.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery.nicescroll.min.js"></script>
        <script src="js/slick.min.js"></script>
        <script src="js/biolife.framework.js"></script>
        <script src="js/functions.js"></script>
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
                                                Math.random() * randomchar.length);
                                    }

                                    // Store generated input
                                    captcha.innerHTML = uniquechar;
                                }

                                function printmsg() {
                                    const usr_input = document
                                            .getElementById("submitLogin").value;

                                    // Check whether the input is equal
                                    // to generated captcha or not
                                    if (usr_input === captcha.innerHTML) {
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
