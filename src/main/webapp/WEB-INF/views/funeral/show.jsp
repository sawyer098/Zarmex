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
    <h2 style="text-align: center;">LISTA KLIENTÓW</h2>
    <div style="padding: 50px;">
        <table class="funeral-table" border="1">
            <tr style="text-align: center;">
                <td>NUMER POGRZEBU</td>
                <td>${funeral.id}</td>
            </tr>
            <tr style="text-align: center;">
                <td>Imię zmarłego</td>
                <td>${funeral.departed.firstName}</td>
            </tr>
            <tr style="text-align: center;">
                <td>Nazwisko zmarłego</td>
                <td>${funeral.departed.lastName}</td>
            </tr>
            <tr style="text-align: center;">
                <td>Data urodzenia</td>
                <td>${funeral.departed.dateOfBirth}</td>
            </tr>
            <tr style="text-align: center;">
                <td>Wiek</td>
                <td>${funeral.departed.age}</td>
            </tr>
            <tr style="text-align: center;">
                <td>Data śmierci</td>
                <td>${funeral.departed.dateOfDeath}</td>
            </tr>
            <tr style="text-align: center;">
                <td>Miejsce zamieszkania</td>
                <td>${funeral.departed.placeOfLive}</td>
            </tr>
            <tr style="text-align: center;">
                <td>Data pogrzebu</td>
                <td>${funeral.funeralDate}</td>
            </tr>
            <tr style="text-align: center;">
                <td>Miejsce pogrzebu</td>
                <td>${funeral.funeralPlace}</td>
            </tr>
            <tr style="text-align: center;">
                <td>Trumna</td>
                <td>${funeral.coffin}</td>
            </tr>
            <tr style="text-align: center;">
                <td>tabliczka na trumnę</td>
                <td>${funeral.plateOnCoffin}</td>
            </tr>
            <tr style="text-align: center;">
                <td>Nekrolog</td>
                <td>${funeral.necrology}</td>
            </tr>
            <tr style="text-align: center;">
                <td>Transport</td>
                <td>${funeral.transport}</td>
            </tr>
            <tr style="text-align: center;">
                <td>Obsługa pogrzebu</td>
                <td>${funeral.funeralService}</td>
            </tr>
            <tr style="text-align: center;">
                <td>Doby chłodni</td>
                <td>${funeral.freezer}</td>
            </tr>
            <tr style="text-align: center;">
                <td>Ubieranie zmarłego</td>
                <td>${funeral.dressing}</td>
            </tr>
            <tr style="text-align: center;">
                <td>Ubranie dla zmarłego</td>
                <td>${funeral.clothes}</td>
            </tr>
            <tr style="text-align: center;">
                <td>Książeczka</td>
                <td>${funeral.book}</td>
            </tr>
            <tr style="text-align: center;">
                <td>Różaniec</td>
                <td>${funeral.rosary}</td>
            </tr>
            <tr style="text-align: center;">
                <td>Koszt pogrzebu</td>
                <td>${funeral.cost}</td>
            </tr>
            <tr style="text-align: center;">
                <td>Data utworzenia pogrzebu</td>
                <td>${funeral.created}</td>
            </tr>
            <tr style="text-align: center;">
                <td>Imię klienta</td>
                <td>${funeral.client.firstName}</td>
            </tr>
            <tr style="text-align: center;">
                <td>Nazwisko klienta</td>
                <td>${funeral.client.lastName}</td>
            </tr>
            <tr style="text-align: center;">
                <td>Telefon kontaktowy</td>
                <td>${funeral.client.phoneNumber}</td>
            </tr>
            <tr style="text-align: center;">
                <td><a href="<c:out value="/funeral/edit/${funeral.id}"/>">Edytuj</a></td>
                <td><a href="<c:out value="/funeral/delete/${funeral.id}"/>">Usuń</a></td>
            </tr>
</table>
</body>
</html>
