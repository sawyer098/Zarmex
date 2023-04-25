<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Zarmex</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<div class="sidebar">
    <a href="<c:url value="/funeral/all"/>"> Lista pogrzebów</a><br>
    <a href="<c:url value="/funeral/add"/>"> Dodaj pogrzeb</a><br>
    <a href="<c:url value="/client/all"/>"> Lista klientów</a><br>
    <a href="<c:url value="/client/add"/>"> Dodaj klienta</a><br>
    <a href="<c:url value="/departed/all"/>"> Lista zmarłych</a><br>
    <a href="<c:url value="/departed/add"/>"> Dodaj zmarłego</a><br>
</div>

Lista pogrzebów<br>
<table border="1" class="funeral-table">
    <tr>
        <td>DANE OSOBY ZMARŁEJ</td>
        <td>Numer</td>
        <td>Imię zmarłego</td>
        <td>Nazwisko zmarłego</td>
        <td>Data śmierci</td>

        <td>Data pogrzebu</td>
        <td>Miejsce pogrzebu</td>
        <td>Data utworzenia pogrzebu</td>

        <td>Imię klienta</td>
        <td>Nazwisko klienta</td>
        <td>Telefon kontaktowy</td>
    </tr>
    <c:forEach items="${funeralList}" var="funeral">
        <tr>
            <td></td>
            <td>${funeral.id}</td>
            <td>${funeral.departed.firstName}</td>
            <td>${funeral.departed.lastName}</td>
            <td>${funeral.departed.dateOfDeath}</td>

            <td>${funeral.funeralDate}</td>
            <td>${funeral.funeralPlace}</td>
            <td>${funeral.created}</td>

            <td>${funeral.client.firstName}</td>
            <td>${funeral.client.lastName}</td>
            <td>${funeral.client.phoneNumber}</td>

            <td><a href="<c:out value="/funeral/edit/${funeral.id}"/>">Edytuj</a></td>
            <td><a onclick="if (confirm('Usunąć?')) {href='/funeral/delete/${funeral.id}'} else {return false;}">Usuń</a></td>
            <td><a href="<c:out value="/funeral/show/${funeral.id}"/>">Pokaż</a></td>


        </tr>
    </c:forEach>
</table>

</body>
</html>
