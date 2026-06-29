<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="bean.ExampleFormularBean"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Example Formular</title>

<script>
function validateForm() {

    let vorname = document.forms["personForm"]["vorname"].value.trim();
    let nachname = document.forms["personForm"]["nachname"].value.trim();
    let alter = document.forms["personForm"]["alter"].value;

    if (vorname === "") {
        alert("Bitte geben Sie einen Vornamen ein.");
        return false;
    }

    if (nachname === "") {
        alert("Bitte geben Sie einen Nachnamen ein.");
        return false;
    }

    if (alter === "" || alter <= 0) {
        alert("Bitte geben Sie ein gültiges Alter ein.");
        return false;
    }

    return true;
}
</script>

</head>

<body>

<h2>Person eingeben</h2>

<form name="personForm"
      action="index"
      method="post"
      onsubmit="return validateForm()">

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