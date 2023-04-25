<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Zarmex</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
          crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Charmonman:400,700|Open+Sans:400,600,700&amp;subset=latin-ext"
          rel="stylesheet">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
</head>
<body>
<header class="page-header">
    <nav class="navbar navbar-expand-lg justify-content-around">
        <h1>Zarmex</h1>
        <ul class="nav nounderline text-uppercase">
            <li class="nav-item ml-4">
                <a class="nav-link disabled" href="<c:url value='/funeral/all'/>">Lista pogrzebów</a>
            </li>
            <li class="nav-item ml-4">
                <a class="nav-link disabled" href="<c:url value='/funeral/form/add'/>">Dodaj pogrzeb</a>
            </li>
            <li class="nav-item ml-4">
                <a class="nav-link disabled" href="<c:url value='/client/all'/>">Lista klientów</a>
            </li>
            <li class="nav-item ml-4">
                <a class="nav-link disabled" href="<c:url value='/client/add'/>">Dodaj klienta</a>
            </li>
            <li class="nav-item ml-4">
                <a class="nav-link disabled" href="<c:url value='/departed/all'/>">Lista zmarłych</a>
            </li>
            <li class="nav-item ml-4">
                <a class="nav-link disabled" href="<c:url value='/departed/add'/>">Dodaj zmarłego</a>
            </li>
        </ul>
    </nav>
</header>

    <main class="main-section">
        <h2 style="text-align: center"> DANE OSOBY ZMARŁEJ</h2>
        <div style="padding: 50px">
            <table class="funeral-table" border="1">
            <form:form method="post" modelAttribute="departed">
            <tr>
                <td>IMIĘ</td>
                <td><form:input path="firstName" type="text"/>
                    <form:errors path="firstName"/></td>
            </tr>
            <tr>
                <td>NAZWISKO</td>
                <td><form:input path="lastName" type="text"/>
                    <form:errors path="lastName"/></td>
            </tr>
            <tr>
                <td>DATA URODZIN</td>
                <td><form:input path="dateOfBirth" type="date"/>
                    <form:errors path="dateOfBirth"/></td>
            </tr>
            <tr>
                <td>WIEK</td>
                <td><form:input path="age" type="number"/>
                    <form:errors path="age"/></td>
            </tr>
            <tr>
                <td>DATA ŚMIERCI</td>
                <td><form:input path="dateOfDeath" type="date"/>
                    <form:errors path="dateOfDeath"/></td>
            </tr>
            <tr>
                <td>MIEJSCE ZAMIESZKANIA</td>
                <td><form:input path="placeOfLive" type="text"/>
                    <form:errors path="placeOfLive"/></td>
            </tr>
            <tr>
                <td><form:button type="submit">ZAPISZ</form:button></td>
            </tr>
            </form:form>
            </table>
        </div>
    </main>
</body>
</html>
