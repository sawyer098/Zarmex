<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
Lista pogrzebów<br>
<table border="1">
    <tr>
        <td>Trumna</td>
        <td>Nekrolog</td>
        <td>Transport</td>
    </tr>
    <c:forEach items="${funerals}" var="funeral">
    <tr>
        <td>${funeral.coffin}</td>
        <td>${funeral.necrology}</td>
        <td><${funeral.transport}</td>
    </tr>
    </c:forEach>
</table>

</body>
</html>
