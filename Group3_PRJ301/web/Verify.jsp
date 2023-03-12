<%-- 
    Document   : Verify
    Created on : Mar 8, 2023, 8:35:05 PM
    Author     : Sio8 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verify</title>
    </head>
    <body>
        <div style="text-align: center; font-family: tahoma; margin-top: 10em; font-size: 30px;">
            <form action="verify" method="POST">
                <label>Enter your code here</label><br>
                <input type="text" style="height: 20px; width: 200px" name="verifyCode"><br>
                <p style="font-size: 15px; color: red">Code is valid for 1 minute</p>
                <input type="submit" value="Verify">
            </form>
        </div>
    </body>
</html>
