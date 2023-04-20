<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

Lista zmarłych<br>
<table border="1">
    <tr>
        <td>Imię</td>
        <td>Nazwisko</td>
        <td>Data śmierci</td>
    </tr>
    <c:forEach items="${departedList}" var="departed">
        <tr>
            <td>${departed.firstName}</td>
            <td>${departed.lastName}</td>
            <td>${departed.dateOfDeath}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
