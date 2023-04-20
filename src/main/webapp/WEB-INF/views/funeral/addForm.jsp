<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Funeral</title>
</head>
<body>
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
                            <form:button type="submit">ZAPISZ</form:button>

</form:form>
</body>
</html>
