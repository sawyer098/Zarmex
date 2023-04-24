<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Funeral</title>
</head>
<body>

<a href="<c:url value="/funeral/all"/>"> Lista pogrzebów</a><br>
<a href="<c:url value="/funeral/add"/>"> Dodaj pogrzeb</a><br>
<a href="<c:url value="/client/all"/>"> Lista klientów</a><br>
<a href="<c:url value="/client/add"/>"> Dodaj klienta</a><br>
<a href="<c:url value="/departed/all"/>"> Lista zmarłych</a><br>
<a href="<c:url value="/departed/add"/>"> Dodaj zmarłego</a><br>

<form:form method="post" modelAttribute="funeral">

    SZCZEGÓŁY POGRZEBU<br><br>

    TRUMNA                  <form:input path="coffin" type="number"/>
                            <form:errors path="coffin"/><br>
    TABLICZKA NA TRUMNĘ     <form:input path="plateOnCoffin" type="number"/>
                            <form:errors path="plateOnCoffin"/><br>
    NEKROLOG                <form:input path="necrology" type="number"/>
                            <form:errors path="necrology"/><br>
    TRANSPORT               <form:input path="transport" type="number"/>
                            <form:errors path="transport"/><br>
    OBSŁUGA POGRZEBU        <form:input path="funeralService" type="number"/>
                            <form:errors path="funeralService"/><br>
    DOBY CHŁODNI            <form:input path="freezer" type="number"/>
                            <form:errors path="freezer"/><br>
    UBIERANIE ZMARŁEGO      <form:input path="dressing" type="number"/>
                            <form:errors path="dressing"/><br>
    UBRANIA DLA ZMARŁEGO    <form:input path="clothes" type="number"/>
                            <form:errors path="clothes"/><br>
    KSIĄŻĘCZKA              <form:input path="book" type="number"/>
                            <form:errors path="book"/><br>
    RÓŻANIEC                <form:input path="rosary" type="number"/>
                            <form:errors path="rosary"/><br>
    DATA POGRZEBU           <form:input path="funeralDate" type="date"/>
                            <form:errors path="funeralDate"/><br>
    GODZINA POGRZEBU        <form:input path="funeralTime" type="text"/>
                            <form:errors path="funeralTime"/><br>
    MIEJSCE POGRZEBU        <form:input path="funeralPlace" type="text"/>
                            <form:errors path="funeralPlace"/><br>

    ZMARŁY                  <form:select path="departed.id">
                            <form:option value="0" label="--Wybierz zmarłego--"/>
                            <form:options items="${departedes}"
                                        itemLabel="fullName" itemValue="id"/>
                            </form:select><br>

    KLIENT                  <form:select path="client.id">
                            <form:option value="0" label="--Wybierz klienta--"/>
                            <form:options items="${clientList}"
                                        itemLabel="lastName" itemValue="id"/>
                            </form:select><br>
                            <form:button type="submit">ZAPISZ</form:button>

</form:form>
</body>
</html>
