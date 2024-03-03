
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Clienti</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="styletabela.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
            $(document).ready(function () {
                $("#stergeClient").hide();
                $("#modificaClient").hide();

                $("#update").click(function () {
                    $("#modificaClient").show();
                    $("#stergeClient").hide();
                });
                $("#delete").click(function () {
                    $("#stergeClient").show();
                    $("#modificaClient").hide();
                });
            });
        </script>

</head>
<body>
	<h1 align="center">Tabela Clienti:</h1>
	<table border="1" align="center">
		<tr>
			<td><b>IdClient:</b></td>
			<td><b>Nume:</b></td>
			<td><b>Prenume:</b></td>
			<td><b>Adresa:</b></td>
			<td><b>Telefon:</b></td>
			<td><b>Email:</b></td>
		</tr>
		<c:forEach var="clienti" items="${listaClienti}">
			<tr>
				<td>${clienti.idclient}</td>
				<td>${clienti.nume}</td>
				<td>${clienti.prenume}</td>
				<td>${clienti.adresa}</td>
				<td>${clienti.telefon}</td>
				<td>${clienti.email}</td>

			</tr>
		</c:forEach>
	</table>
	<form action="ClientiController" method="POST">
		<p align="center">
			Modifica: <input type="checkbox" id="update"> Sterge: <input
				type="checkbox" id="delete"
				onclick="document.getElementById('nume').disabled = this.checked;
                        document.getElementById('prenume').disabled = this.checked;
                        document.getElementById('adresa').disabled = this.checked;"><br>
			<br> <select name="idclient">
				<c:forEach items="${listaClienti}" var="clienti">
					<option value="${clienti.idclient}">${clienti.idclient}</option>
				</c:forEach>
			</select> <br>
			<br> Modifica Nume: <input id="nume" type="text" name="nume"><br>
			<br> Modifica Prenume: <input id="prenume" type="text"
				name="prenume"> <br>
			<br> Modifica Adresa: <input id="adresa" type="text"
				name="adresa"> <br>
			<br> Modifica Telefon: <input id="telefon" type="text"
				name="telefon"> <br>
			<br> Modifica Email: <input id="email" type="text" name="email">
			<br>
			<br>
			<button type="submit" id="modificaClient" name="modificaClient">
				Modifica</button>
			<br> <br>
			<button type="submit" id="stergeClient" name="stergeClient">
				Sterge</button>
		</p>
	</form>
	<p align="center">
		<a href="index.html"><b>Home</b></a>
	</p>
</body>
</html>
