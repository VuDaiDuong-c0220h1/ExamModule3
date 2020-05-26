<%--
  Created by IntelliJ IDEA.
  User: Vu Dai Duong
  Date: 5/26/2020
  Time: 7:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>Trang chủ</title>
  </head>
  <body>
  <button><a href="/home?action=create">+ Add new product</a></button>
  <table border="1px solid black">
    <tr>Product List</tr>
    <tr>
      <td>#</td>
      <td>Product Name</td>
      <td>Price</td>
      <td>Quantity</td>
      <td>Color</td>
      <td>Category</td>
      <td>Action</td>
    </tr>
    <c:forEach var="product" items="${productList}">
      <tr>
        <td><c:out value="${product.getProductID()}"/></td>
        <td><c:out value="${product.getProductName()}"/></td>
        <td><c:out value="${product.getPrice()}"/></td>
        <td><c:out value="${product.getQuantity()}"/></td>
        <td><c:out value="${product.getColor()}"/></td>
        <td><c:out value="${product.getCategory().getCategoryName()}"/></td>
        <td>
          <button><a href="/home?action=edit&id=${product.getProductID()}">Edit</a></button>
          <button><a href="/home?action=delete&id=${product.getProductID()}">Delete</a></button>
        </td>
      </tr>
    </c:forEach>

  </table>
  </body>
</html>
