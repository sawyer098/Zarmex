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
        <h2 style="text-align: center;"> SZCZEGÓŁY POGRZEBU</h2>
        <div style="padding: 50px">
            <table class="funeral-table" border="1">
                <form:form method="post" modelAttribute="funeral">
                <thead>
                <tr>
                    <th>Nazwa</th>
                    <th>Cena</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>TRUMNA</td>
                    <td><form:input path="coffin" type="number"/>
                        <form:errors path="coffin"/></td>
                </tr>
                <tr>
                    <td>TABLICZKA NA TRUMNĘ</td>
                    <td><form:input path="plateOnCoffin" type="number"/>
                        <form:errors path="plateOnCoffin"/></td>
                </tr>
                <tr>
                    <td>NEKROLOG</td>
                    <td><form:input path="necrology" type="number"/>
                        <form:errors path="necrology"/></td>
                </tr>
                <tr>
                    <td>TRANSPORT</td>
                    <td><form:input path="transport" type="number"/>
                        <form:errors path="transport"/></td>
                </tr>
                <tr>
                    <td>OBSŁUGA POGRZEBU</td>
                    <td><form:input path="funeralService" type="number"/>
                        <form:errors path="funeralService"/></td>
                </tr>
                <tr>
                    <td>DOBY CHŁODNI</td>
                    <td><form:input path="freezer" type="number"/>
                        <form:errors path="freezer"/></td>
                </tr>
                <tr>
                    <td>UBIERANIE ZMARŁEGO</td>
                    <td><form:input path="dressing" type="number"/>
                        <form:errors path="dressing"/></td>
                </tr>
                <tr>
                    <td>UBRANIA DLA ZMARŁEGO</td>
                    <td><form:input path="clothes" type="number"/>
                        <form:errors path="clothes"/></td>
                </tr>
                <tr>
                    <td>KSIĄŻĘCZKA </td>
                    <td><form:input path="book" type="number"/>
                        <form:errors path="book"/></td>
                </tr>
                <tr>
                    <td>RÓŻANIEC</td>
                    <td><form:input path="rosary" type="number"/>
                        <form:errors path="rosary"/></td>
                </tr>
                <tr>
                    <th></th>
                    <th></th>
                </tr>
                <tr>
                    <td>DATA POGRZEBU </td>
                    <td><form:input path="funeralDate" type="date"/>
                        <form:errors path="funeralDate"/></td>
                </tr>
                <tr>
                    <td>GODZINA POGRZEBU</td>
                    <td><form:input path="funeralTime" type="text"/>
                        <form:errors path="funeralTime"/></td>
                </tr>
                <tr>
                    <td>MIEJSCE POGRZEBU</td>
                    <td><form:input path="funeralPlace" type="text"/>
                        <form:errors path="funeralPlace"/></td>
                </tr>
                <tr>
                    <td>ZMARŁY</td>
                    <td><form:select path="departed.id">
                        <form:options items="${departedes}"
                                      itemLabel="fullName" itemValue="id"/>
                    </form:select></td>
                </tr>
                <tr>
                    <td>KLIENT</td>
                    <td><form:select path="client.id">
                        <form:options items="${clientes}"
                                      itemLabel="fullName" itemValue="id"/>
                    </form:select></td>
                </tr>
                <tr>
                    <td><form:button type="submit">ZAPISZ</form:button></td>
                </tr>
                </tbody>
                </form:form>
            </table>
        </div>
    </main>
</body>
</html>
