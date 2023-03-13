<%-- 
    Document   : productdetails
    Created on : Mar 2, 2023, 4:46:49 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset='utf-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <title>SHOP</title>
        <link href='https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css' rel='stylesheet'>
        <link href='' rel='stylesheet'>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- style css -->
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- fevicon -->
        <link rel="icon" href="images/fevicon.png" type="image/gif" />
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <!-- Tweaks for older IEs-->
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
        <style>
            button{
                background-color: black;
                padding: 5px;
                font-size: 20px;
                color: white; 
            }
            button:hover{
                background-color: black;
                color: wheat;
                border-radius: 10px;
            }
        </style>
    </head>

    <body oncontextmenu='return false' class='snippet-body'>
        <jsp:include page="header1.jsp"/>
        <section style="
                 margin-top: 150px;
                 margin-left: 50px;
                 margin-right: 50px;">
            <table>
                <tr>
                    <td style="padding: 10px 32px;">   <img src="${p.getImg()}" alt="" width="900" height="900"></td>
                    <td>
                        <h1 style="text-align: center">Name: ${p.getName()}</h1>
                        <div style="text-decoration: none; padding: 17px 23px;"> <b>Price: </b>${p.getPrice()}$</div>
                        <div style="padding: 5px 23px;"><span>
                                <b> Information:  </b>${p.getDescription()}
                            </span></div>
                        <div style="padding: 5px 23px;"> <b>Category: </b> ${p.getCategory().getName()}</div>
                        <div style="padding: 5px 23px;">  <b>In Stock: </b>${p.getStock()}</div>

                        <div style="padding: 5px 23px;"> 
                            <form action="./AddToCart" method="post">                            
                                <b>Quantity:</b><input type="hidden" value="${p.getId()}" name="pid">
                                <input type="number" name="quantity" value="1" max="${p.getStock()}" min="1" data-step="1"><br/><br>
                                <div class="buttons" >
                                    <button style="
                                            height: 36px;
                                            width: 102px;" type="submit">
                                        add to cart
                                    </button>
                                </div>
                            </form>
                        </div>
                    </td>
                </tr>
            </table>
        </section>
        <jsp:include page="footer.jsp"/>  
    </body>
</html>
