<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="bean.ExampleFormularBean"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Example Formular</title>
</head>

<body>

<h2>Person eingeben</h2>

<form action="index" method="post">

Vorname:
<input type="text" name="vorname">

<br><br>

Nachname:
<input type="text" name="nachname">

<br><br>

Alter:
<input type="number" name="alter">

<br><br>

<input type="submit" value="Speichern">

</form>

<%
ExampleFormularBean person =
        (ExampleFormularBean) session.getAttribute("person");

if(person != null){
%>

<hr>

<h3>Gespeicherte Daten</h3>

<p>Vorname: <%= person.getVorname() %></p>

<p>Nachname: <%= person.getNachname() %></p>

<p>Alter: <%= person.getAlter() %></p>

<%
}
%>

</body>
</html>