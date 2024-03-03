
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Conturi</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="styletabela.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
            $(document).ready(function () {
                $("#stergeCont").hide();
                $("#modificaCont").hide();

                $("#update").click(function () {
                    $("#modificaCont").show();
                    $("#stergeCont").hide();
                });
                $("#delete").click(function () {
                    $("#stergeCont").show();
                    $("#modificaCont").hide();
                });
            });
        </script>

</head>
<body>
	<h1 align="center">Tabela Conturi:</h1>
	<table border="1" align="center">
		<tr>
			<td><b>IdCont:</b></td>
			<td><b>Iban:</b></td>
			<td><b>Data</b></td>
			<td><b>TipCont:</b></td>
			<td><b>Sold:</b></td>
		</tr>
		<c:forEach var="conturi" items="${listaConturi}">
			<tr>
				<td>${conturi.idcont}</td>
				<td>${conturi.iban}</td>
				<td>${conturi.date}</td>
				<td>${conturi.tipCont}</td>
				<td>${conturi.sold}</td>

			</tr>
		</c:forEach>
	</table>
	<form action="ConturiController" method="POST">
		<p align="center">
			Modifica: <input type="checkbox" id="update"> Sterge: <input
				type="checkbox" id="delete"
				onclick="document.getElementById('nume').disabled = this.checked;
                        document.getElementById('prenume').disabled = this.checked;
                        document.getElementById('adreasa').disabled = this.checked;"><br>
			<br> <select name="idcont">
				<c:forEach items="${listaConturi}" var="conturi">
					<option value="${conturi.idcont}">${conturi.idcont}</option>
				</c:forEach>
			</select> <br>
			<br> Modifica Iban: <input id="iban" type="text" name="iban"><br>
			<br> Modifica Data: <input id="dataCont" type="text"
				name="dataCont"> <br>
			<br> Modifica Tip Cont: <input id="tipCont" type="text"
				name="tipCont"> <br>
			<br> Modifica Sold: <input id="sold" type="text" name="sold">
			<br>
			<br>
			<button type="submit" id="modificaCont" name="modificaCont">
				Modifica</button>
			<br> <br>
			<button type="submit" id="stergeCont" name="stergeCont">
				Sterge</button>
		</p>
	</form>
	<p align="center">
		<a href="index.html"><b>Home</b></a>
	</p>
</body>
</html>
