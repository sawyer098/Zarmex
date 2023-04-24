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
        <h2 style="text-align: center;">Lista pogrzebów</h2>
        <div style="padding: 50px;">
        <table class="funeral-table" border="1">
            <thead>
            <tr style="text-align: center;">
                <th>Numer</th>
                <th>Imię zmarłego</th>
                <th>Nazwisko zmarłego</th>
                <th>Data śmierci</th>
                <th>Data pogrzebu</th>
                <th>Miejsce pogrzebu</th>
                <th>Data utworzenia pogrzebu</th>
                <th>Imię klienta</th>
                <th>Nazwisko klienta</th>
                <th>Telefon kontaktowy</th>
                <th>Akcje</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${funeralList}" var="funeral">
            <tr style="text-align: center;">
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

                <td class="d-flex align-items-center justify-content-center flex-wrap">
                    <a href="<c:url value='/funeral/form/edit/${funeral.id}'/>" class="btn btn-info rounded-0 text-light m-1">Edytuj</a>
                    <a onclick="if (confirm('Usunąć?')) {location.href='/funeral/delete/${funeral.id}'} else {return false;}"
                       class="btn btn-info rounded-0 text-light m-1">Usuń</a>
                    <a href="<c:url value='/funeral/show/${funeral.id}'/>"
                       class="btn btn-info rounded-0 text-light m-1">Pokaż</a>
                </td>
            </tr>
            </c:forEach>
        </table>
        </div>
    </main>
</body>
</html>