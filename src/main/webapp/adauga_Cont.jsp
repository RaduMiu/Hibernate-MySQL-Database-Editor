
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="styleadauga.css">
<title>Conturi</title>
</head>
<body>

	<div id="add">
		<h1>Adauga cont</h1>
		<form action="ConturiController" method="GET">
			<table>
				<tr>
					<td>IBAN:</td>
					<td><input type="text" name="iban"></td>
				</tr>
				<tr>
					<td>Sold:</td>
					<td><input type="text" name="sold"></td>
				</tr>
				<tr>
					<td>Tip cont:</td>
					<td><input type="text" name="tipCont"></td>
				</tr>
				<tr>
					<td>Data:</td>
					<td><input type="text" name="date"></td>
				</tr>
				<tr>
					<td><input type="submit" name="adaugaCont" value="Adauga"></td>

				</tr>
			</table>
		</form>
	</div>

	<form action="ConturiController" method="POST">
		<input type="submit" name="afiseazaConturi" value="Afiseaza">
		&nbsp; &nbsp;<br>
	</form>
	<br>
	<a href="index.html"><b>Home</b></a>
</body>
</html>
