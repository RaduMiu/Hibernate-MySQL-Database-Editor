
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
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <link rel="stylesheet" type="text/css" href="styleadauga.css">
    </head>
    <body>
<%
ClientiDaoImpl clientDaoImpl = new ClientiDaoImpl();
        ConturiDaoImpl contDaoImpl = new ConturiDaoImpl();
        List<Clienti> listaClienti = new ArrayList();
        listaClienti = clientDaoImpl.afiseazaClienti();
        List<Conturi> listaConturi = new ArrayList();
        listaConturi = contDaoImpl.afiseazaConturi();
        request.setAttribute("listaClienti", listaClienti);
        request.setAttribute("listaConturi", listaConturi);
%>
        <div id="add">
            <h1> Adauga o noua asociere  </h1>
            <h1>  client-cont </h1>
            <form action="AsociereController" method="GET">
                <table>
                    <tr>
                        <td> Client: </td>
                        <td>
                            <select name="idclient">
                                <c:forEach items="${listaClienti}" var="clienti">
                                    <option value="${clienti.idclient}">${clienti.idclient}, ${clienti.nume}, ${clienti.prenume}, ${clienti.adresa} , ${clienti.telefon} , ${clienti.email}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td> Cont: </td>
                        <td>
                            <select name="idcont">
                                <c:forEach items="${listaConturi}" var="conturi">
                                    <option value="${conturi.idcont}">${conturi.idcont}, ${conturi.iban}, ${conturi.date}, ${conturi.tipCont} , ${conturi.sold}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td> Rol Client: </td>
                        <td><input type="text" name="rolClient"></td>
                    </tr>
                   
                        <td><input type="submit" name="adaugaAsociere" value="Adauga"></td>

                    </tr>
                </table>
            </form>
        </div>

        <form action="AsociereController" method="POST">
            <input type="submit" name="afiseazaAsociere" value="Afiseaza"> &nbsp; &nbsp;<br>
        </form>
        <br>
        <a href="index.html"><b>Home</b></a>
    </body>
</html>
