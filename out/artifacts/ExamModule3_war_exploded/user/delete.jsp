<%--
  Created by IntelliJ IDEA.
  User: Vu Dai Duong
  Date: 5/26/2020
  Time: 11:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Delete</title>
</head>
<body>
<h1>Delete product</h1>
<p>
    <a href="/home">Back to homepage</a>
</p>
<form method="post">
    <fieldset>
        <legend>Delete Product</legend>
        <table>
            <tr>
                <td>Product ID: </td>
                <td><input type="text" name="id" id="id" value="${product.getProductID()}"></td>
            </tr>
            <tr>
                <td>Product Name: </td>
                <td><input type="text" name="name" id="name" value="${product.getProductName()}"></td>
            </tr>
            <tr>
                <td>Price: </td>
                <td><input type="text" name="price" id="price" value="${product.getPrice()}"></td>
            </tr>
            <tr>
                <td>Quantity: </td>
                <td><input type="text" name="quantity" id="quantity" value="${product.getQuantity()}"></td>
            </tr>
            <tr>
                <td>Color: </td>
                <td><input type="text" name="color" id="color" value="${product.getColor()}"></td>
            </tr>
            <tr>
                <td>Category: </td>
                <td><input type="text" name="category" id="category" value="${product.getCategory().getCategoryName()}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Delete product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>

