<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form:form method="post" modelAttribute="client">

    DANE ZAMAWIAJĄCEGO<br><br>

    IMIĘ                    <form:input path="firstName" type="text"/>
                            <form:errors path="firstName"/><br>
    NAZWISKO                <form:input path="lastName" type="text"/>
                            <form:errors path="lastName"/><br>
    TELEFON KONTAKTOWY      <form:input path="phoneNumber" type="number"/>
                            <form:errors path="phoneNumber"/><br>
                            <form:button type="submit">ZAPISZ</form:button>

</form:form>

</body>
</html>
