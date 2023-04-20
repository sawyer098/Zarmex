<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

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
