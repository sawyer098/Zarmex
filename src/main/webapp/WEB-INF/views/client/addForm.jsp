<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<a href="<c:url value="/funeral/all"/>"> Lista pogrzebów</a><br>
<a href="<c:url value="/funeral/add"/>"> Dodaj pogrzeb</a><br>
<a href="<c:url value="/client/all"/>"> Lista klientów</a><br>
<a href="<c:url value="/client/add"/>"> Dodaj klienta</a><br>
<a href="<c:url value="/departed/all"/>"> Lista zmarłych</a><br>
<a href="<c:url value="/departed/add"/>"> Dodaj zmarłego</a><br>

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
