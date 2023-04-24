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

<form:form method="post" modelAttribute="departed">

    DANE OSOBY ZMARŁEJ<br><br>

    IMIĘ                    <form:input path="firstName" type="text"/>
                            <form:errors path="firstName"/><br>
    NAZWISKO                <form:input path="lastName" type="text"/>
                            <form:errors path="lastName"/><br>
    DATA URODZIN            <form:input path="dateOfBirth" type="date"/>
                            <form:errors path="dateOfBirth"/><br>
    WIEK                    <form:input path="age" type="number"/>
                            <form:errors path="age"/><br>
    DATA ŚMIERCI            <form:input path="dateOfDeath" type="date"/>
                            <form:errors path="dateOfDeath"/><br>
    MIEJSCE ZAMIESZKANIA    <form:input path="placeOfLive" type="text"/>
                            <form:errors path="placeOfLive"/><br>
                            <form:button type="submit">ZAPISZ</form:button>

</form:form>
</body>
</html>
