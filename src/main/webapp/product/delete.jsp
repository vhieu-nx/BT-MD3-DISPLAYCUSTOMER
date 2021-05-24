<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 2/3/2021
  Time: 5:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Product</title>
</head>
<body>
<a href="/products">List Product</a>
<form method="post">
    <table>
        <tr>
            <td>Name</td>
            <td>${products.getName()}</td>
        </tr>
        <tr>
            <td>Price</td>
            <td>${products.getPrice()}</td>
        </tr>
        <tr>
            <td>Description</td>
            <td>${products.getDescription()}</td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="submit"></td>
        </tr>
    </table>
</form>
</body>
</html>
