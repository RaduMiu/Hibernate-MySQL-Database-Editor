
<%@page import="DAOImpl.ConturiDaoImpl"%>
<%@page import="DAOImpl.ClientiDaoImpl"%>
<%@page import="pojo.Conturi"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pojo.Clienti"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Asociere</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="styletabela.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
            $(document).ready(function () {
                $("#stergeAsociere").hide();
                $("#modificaAsociere").hide();

                $("#update").click(function () {
                    $("#modificaAsociere").show();
                    $("#stergeAsociere").hide();
                });
                $("#delete").click(function () {
                    $("#stergeAsociere").show();
                    $("#modificaAsociere").hide();
                });
            });
        </script>

</head>
<body>
	<%
        ClientiDaoImpl clientDaoImpl = new ClientiDaoImpl();
                    ConturiDaoImpl medicDaoImpl = new ConturiDaoImpl();
                    List<Clienti> listaClienti = new ArrayList();
                    listaClienti = clientDaoImpl.afiseazaClienti();
                    List<Conturi> listaConturi = new ArrayList();
                    listaConturi = medicDaoImpl.afiseazaConturi();
                    request.setAttribute("listaClienti", listaClienti);
                    request.setAttribute("listaConturi", listaConturi);
        %>
	<h1 align="center">Tabela Asociere:</h1>
	<table border="1" align="center">
		<tr>
			<td><b>IdAsociere:</b></td>
			<td><b>IdClient:</b></td>
			<td><b>Nume:</b></td>
			<td><b>Prenume:</b></td>
			<td><b>Adresa:</b></td>
			<td><b>Telefon:</b></td>
			<td><b>Email:</b></td>
			<td><b>IdCont:</b></td>
			<td><b>Iban:</b></td>
			<td><b>Data:</b></td>
			<td><b>TipCont:</b></td>
			<td><b>Sold:</b></td>
			<td><b>RolClient:</b></td>

		</tr>
		<c:forEach var="asociere" items="${listaAsociere}">
			<tr>
				<td>${asociere.idasociere}</td>
				<td>${asociere.clienti.idclient}</td>
				<td>${asociere.clienti.nume}</td>
				<td>${asociere.clienti.prenume}</td>
				<td>${asociere.clienti.adresa}</td>
				<td>${asociere.clienti.telefon}</td>
				<td>${asociere.clienti.email}</td>
				<td>${asociere.conturi.idcont}</td>
				<td>${asociere.conturi.iban}</td>
				<td>${asociere.conturi.date}</td>
				<td>${asociere.conturi.tipCont}</td>
				<td>${asociere.conturi.sold}</td>
				<td>${asociere.rolclient}</td>

			</tr>
		</c:forEach>
	</table>
	<form action="AsociereController" method="POST">
		<p align="center">
			Modifica: <input type="checkbox" id="update"> Sterge: <input
				type="checkbox" id="delete"
				onclick="document.getElementById('idclient').disabled = this.checked;
                        document.getElementById('idcont').disabled = this.checked;
                        document.getElementById('rolClient').disabled = this.checked;"><br>
			<br> idasociere: <select name="idasociere">
				<c:forEach items="${listaAsociere}" var="asociere">
					<option value="${asociere.idasociere}">${asociere.idasociere}</option>
				</c:forEach>
			</select> <br>
			<br> idclient: <select name="idclient">
				<c:forEach items="${listaClienti}" var="clienti">
					<option value="${clienti.idclient}">${clienti.idclient},
						${clienti.nume}, ${clienti.prenume}</option>
				</c:forEach>
			</select> <br>
			<br> idcont: <select name="idcont">
				<c:forEach items="${listaConturi}" var="conturi">
					<option value="${conturi.idcont}">${conturi.idcont},
						${conturi.iban}, ${conturi.sold}</option>
				</c:forEach>
			</select> <br>
			<br> Modifica rol client: <input id="nume" type="text"
				name="rolClient"><br>
			<br>
			<!-- Modifica diagnosticul: <input id="prenume" type="text" name="diagnostic"> <br><br>
                Modifica medicametul: <input id="sectie" type="text" name="medicament"> <br><br>    -->
			<button type="submit" id="modificaAsociere" name="modificaAsociere">
				Modifica</button>
			<br> <br>
			<button type="submit" id="stergeAsociere" name="stergeAsociere">
				Sterge</button>
		</p>
	</form>
	<br>
	<p align="center">
		<a href="index.html"><b>Home</b></a>
	</p>
</body>
</html>
