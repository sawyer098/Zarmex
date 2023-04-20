<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

Lista klientów<br>
<table border="1">
    <tr>
        <td>Imię</td>
        <td>Nazwisko</td>
        <td>Telefon kontaktowy</td>
    </tr>
    <c:forEach items="${clients}" var="client">
        <tr>
            <td>${client.id}</td>
            <td>${client.firstName}</td>
            <td>${client.lastName}</td>
            <td>${client.phoneNumber}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
