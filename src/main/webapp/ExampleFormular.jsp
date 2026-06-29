<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="bean.ExampleFormularBean"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>CRM Formular</title>

<style>

body{
    font-family: Arial, sans-serif;
    margin:40px;
}

label{
    display:inline-block;
    width:100px;
    margin-bottom:12px;
    font-weight:bold;
}

input[type=text],
input[type=number]{
    width:220px;
    padding:5px;
}

input[type=submit]{
    margin-left:104px;
    padding:6px 14px;
}

</style>

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

<label>Vorname:</label>
<input type="text" name="vorname">

<br>

<label>Nachname:</label>
<input type="text" name="nachname">

<br>

<label>Alter:</label>
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

<p><b>Vorname:</b> <%= person.getVorname() %></p>

<p><b>Nachname:</b> <%= person.getNachname() %></p>

<p><b>Alter:</b> <%= person.getAlter() %></p>

<%
}
%>

</body>
</html>