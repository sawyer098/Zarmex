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

<table border="1">
    <tr>
        <td>NUMER POGRZEBU</td>
        <td>${funeral.id}</td>
    </tr>
    <tr>
        <td>Imię zmarłego</td>
        <td>${funeral.departed.firstName}</td>
    </tr>
    <tr>
        <td>Nazwisko zmarłego</td>
        <td>${funeral.departed.lastName}</td>
    </tr>
    <tr>
        <td>Data urodzenia</td>
        <td>${funeral.departed.dateOfBirth}</td>
    </tr>
    <tr>
        <td>Wiek</td>
        <td>${funeral.departed.age}</td>
    </tr>
    <tr>
        <td>Data śmierci</td>
        <td>${funeral.departed.dateOfDeath}</td>
    </tr>
    <tr>
        <td>Miejsce zamieszkania</td>
        <td>${funeral.departed.placeOfLive}</td>
    </tr>
    <tr>
        <td>Data pogrzebu</td>
        <td>${funeral.funeralDate}</td>
    </tr>
    <tr>
        <td>Miejsce pogrzebu</td>
        <td>${funeral.funeralPlace}</td>
    </tr>
    <tr>
        <td>Trumna</td>
        <td>${funeral.coffin}</td>
    </tr>
    <tr>
        <td>tabliczka na trumnę</td>
        <td>${funeral.plateOnCoffin}</td>
    </tr>
    <tr>
        <td>Nekrolog</td>
        <td>${funeral.necrology}</td>
    </tr>
    <tr>
        <td>Transport</td>
        <td>${funeral.transport}</td>
    </tr>
    <tr>
        <td>Obsługa pogrzebu</td>
        <td>${funeral.funeralService}</td>
    </tr>
    <tr>
        <td>Doby chłodni</td>
        <td>${funeral.freezer}</td>
    </tr>
    <tr>
        <td>Ubieranie zmarłego</td>
        <td>${funeral.dressing}</td>
    </tr>
    <tr>
        <td>Ubranie dla zmarłego</td>
        <td>${funeral.clothes}</td>
    </tr>
    <tr>
        <td>Książeczka</td>
        <td>${funeral.book}</td>
    </tr>
    <tr>
        <td>Różaniec</td>
        <td>${funeral.rosary}</td>
    </tr>
    <tr>
        <td>Koszt pogrzebu</td>
        <td>${funeral.cost}</td>
    </tr>
    <tr>
        <td>Data utworzenia pogrzebu</td>
        <td>${funeral.created}</td>
    </tr>
    <tr>
        <td>Imię klienta</td>
        <td>${funeral.client.firstName}</td>
    </tr>
    <tr>
        <td>Nazwisko klienta</td>
        <td>${funeral.client.lastName}</td>
    </tr>
    <tr>
        <td>Telefon kontaktowy</td>
        <td>${funeral.client.phoneNumber}</td>
    </tr>
    <tr>
        <td><a href="<c:out value="/funeral/edit/${funeral.id}"/>">Edytuj</a></td>
        <td><a href="<c:out value="/funeral/delete/${funeral.id}"/>">Usuń</a></td>
    </tr>
</table>
</body>
</html>
