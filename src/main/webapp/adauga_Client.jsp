
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="styleadauga.css">
<title>Clienti</title>
</head>
<body>

	<div id="add">
		<h1>Adauga client</h1>
		<form action="ClientiController" method="GET">
			<table>
				<tr>
					<td>Nume Client:</td>
					<td><input type="text" name="nume"></td>
				</tr>
				<tr>
					<td>Prenume Client:</td>
					<td><input type="text" name="prenume"></td>
				</tr>
				<tr>
					<td>Adresa Client:</td>
					<td><input type="text" name="adresa"></td>
				</tr>
				<tr>
					<td>Telefon Client:</td>
					<td><input type="text" name="telefon"></td>
				</tr>
				<tr>
					<td>Email Client:</td>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td><input type="submit" name="adaugaClient" value="Adauga"></td>

				</tr>
			</table>
		</form>
	</div>

	<form action="ClientiController" method="POST">
		<input type="submit" name="afiseazaClienti" value="Afiseaza">
		&nbsp; &nbsp;<br>
	</form>
	<br>
	<a href="index.html"><b>Home</b></a>
</body>
</html>
