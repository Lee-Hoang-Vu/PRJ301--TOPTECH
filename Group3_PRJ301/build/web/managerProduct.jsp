<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title> Shop</title>
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/nice-select.css">
    </head>

    <body class="biolife-body">

        <nav class="navbar navbar-default">
            <div class="container">
                <!-- COLLAPSIBLE NAVBAR -->
                <div class="collapse navbar-collapse" id="alignment-example">
                    <!-- Links -->
                    <ul class="nav navbar-nav">
                        <li >
                            <a style="text-decoration: none;" href="ManagerUser"> Manage User</a>
                        </li>
                        <li >
                            <a style="text-decoration: none;" href="ManagerProduct"> Manage Product</a>
                        </li>

                        <li >
                            <a style="text-decoration: none;" href="HomePage">Back</a>
                        </li>
                    </ul>
                </div>

            </div>
        </nav>
        <!-- Main content -->
        <div id="main-content" class="main-content">
            <div class="container-fluid">

                <div class="row" >

                    <div class="col-md-12">
                        <h1 style="text-align: center;">Manager Product</h1>
                        <button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModalAddNew">Add Product</button>
                        <!-- Modal -->
                        <div class="modal fade" id="myModalAddNew" role="dialog">
                            <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">Add New product:</h4>
                                    </div>
                                    <form action="AddNewProduct" method="post">
                                        <div class="modal-body">
                                            <b>Name: </b><input type="text" class="form-control" value="" required name="name"><br>
                                            <b>Price: </b><input type="number" step="0.1" class="form-control"  required value="" name="price"><br>
                                            <b>Category: </b>
                                            <div style="height: 50px; w30pxidth: 100%">
                                                <select  class="form-control" style="display: block;" name="category" >
                                                    <c:forEach var="c" items="${clist}">
                                                        <option value="${c.getId()}" ${p.getCategory().getName()==c.getName()?"selected":""} >${c.getName()} </option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <b>Stock: </b><input type="number" class="form-control" required value="" name="stock"><br>
                                            <b>Description: </b><input type="text" class="form-control" required value="" name="descri"><br>
                                            <b>Image link:</b><input type="text" class="form-control" required  value="" name="img"><br>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            <button type="submit" class="btn btn-success" value="submit">Submit</button>
                                        </div>
                                    </form>
                                </div>

                            </div>
                        </div>

                        <table class="table" style="margin-top: 20px; margin-bottom: 20px;">
                            <thead >
                                <tr style="font-size: 20px;">
                                    <th scope="col">ID</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Category</th>
                                    <th scope="col">Stock</th>
                                    <th scope="col">Create Date</th>
                                    <th scope="col">Description</th>
                                    <th scope="col">Image</th>
                                    <th scope="col" colspan="2" style="text-align: center">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="p" items="${pl}">
                                    <tr>
                                        <th scope="row">${p.getId()}</th>
                                        <td>${p.getName()}</td>
                                        <td>${p.getPrice()}</td>
                                        <td>${p.getCategory().getName()}</td>
                                        <td>${p.getStock()}</td>
                                        <td>${p.getCreateDate()}</td>
                                        <td style="width: 30%;">${p.getDescription()}</td>
                                        <td><img style="width:150px;height:150px;"src="${p.getImg()}"></td>
                                        <td ><a href="DeleteProduct?pid=${p.getId()}" class="btn- btn-danger  btn-lg" style="display: block;" > Delete</a></td>
                                        <td> <button type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal${p.getId()}">Edit</button></td>

                                    </tr>
                                    <!-- Modal -->
                                <div class="modal fade" id="myModal${p.getId()}" role="dialog">
                                    <div class="modal-dialog">

                                        <!-- Modal content-->
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h4 class="modal-title">Edit product:</h4>
                                            </div>
                                            <form action="EditProduct" method="post">
                                                <div class="modal-body">
                                                    <b>ID: </b><input type="text" class="form-control" name="id" value="${p.getId()}" readonly=""><br>
                                                    <b>Name: </b><input type="text" class="form-control" value="${p.getName()}" name="name"><br>
                                                    <b>Price: </b><input type="number" step="0.1" class="form-control" value="${p.getPrice()}" name="price"><br>
                                                    <b>Category: </b>
                                                    <div style="height: 50px; w30pxidth: 100%">
                                                        <select  class="form-control" style="display: block;" name="category" >
                                                            <c:forEach var="c" items="${clist}">
                                                                <option value="${c.getId()}" ${p.getCategory().getName()==c.getName()?"selected":""} >${c.getName()} </option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                    <b>Stock: </b><input type="number" class="form-control" value="${p.getStock()}" name="stock"><br>
                                                    <b>Create Date: </b><input type="date" class="form-control" value="${p.getCreateDate()}" name="creDate"><br>
                                                    <b>Description: </b><input type="text" class="form-control" value="${p.getDescription()}" name="descri"><br>
                                                    <b>Image link:</b><input type="text" class="form-control" value="${p.getImg()}" name="img"><br>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                    <button type="submit" class="btn btn-success" value="submit">Submit</button>
                                                </div>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

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
    </body>

</html>