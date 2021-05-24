<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Product</title>
</head>
<body>
<h2>List Product</h2>
<a href="/products?action=create">Create new product</a>
    <table>
        <tr>
            <td>Name</td>
            <td>Price</td>
            <td>Description</td>
            <td>Edit</td>
            <td>Delete</td>
        </tr>
        <c:forEach items="${products}" var="product">
            <tr>
                <td>${product.getName()}</td>
                <td>${product.getPrice()}</td>
                <td>${product.getDescription()}</td>
                <td><a href="/products?action=update&id=${product.getId()}">Edit</a></td>
                <td><a href="/products?action=delete&id=${product.getId()}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
