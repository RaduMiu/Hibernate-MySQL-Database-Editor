
package Controller;

import DAO.ClientiDao;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.Clienti;
import DAOImpl.ClientiDaoImpl;


public class ClientiController extends HttpServlet {

	Clienti client = new Clienti();
	ClientiDaoImpl clientDaoImpl = new ClientiDaoImpl();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("adaugaClient") != null) {
			String nume = request.getParameter("nume");
			String prenume = request.getParameter("prenume");
			String adresa = request.getParameter("adresa");
			String telefon = request.getParameter("telefon");
			String email = request.getParameter("email");
			client.setNume(nume);
			client.setPrenume(prenume);
			client.setAdresa(adresa);
			client.setTelefon(telefon);
			client.setEmail(email);
			clientDaoImpl.adaugaClienti(client);
			RequestDispatcher rd = request.getRequestDispatcher("adauga_Client.jsp");
			rd.forward(request, response);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("afiseazaClienti") != null) {
			List<Clienti> listaClienti = new ArrayList();
			listaClienti = clientDaoImpl.afiseazaClienti();
			request.setAttribute("listaClienti", listaClienti);
			RequestDispatcher rd = request.getRequestDispatcher("tabela_Clienti.jsp");
			rd.forward(request, response);
		}

		if (request.getParameter("modificaClient") != null) {
			int id1 = Integer.parseInt(request.getParameter("idclient"));
			String nume = request.getParameter("nume");
			String prenume = request.getParameter("prenume");
			String adresa = request.getParameter("adresa");
			String telefon = request.getParameter("telefon");
			String email = request.getParameter("email");
			clientDaoImpl.modificaClienti(id1, nume, prenume, adresa, telefon, email);
			RequestDispatcher rd = request.getRequestDispatcher("adauga_Client.jsp");
			rd.forward(request, response);

		}

		if (request.getParameter("stergeClient") != null) {
			int id2 = Integer.parseInt(request.getParameter("idclient"));
			client.setIdclient(id2);
			clientDaoImpl.stergeClient(client);
			RequestDispatcher rd = request.getRequestDispatcher("adauga_Client.jsp");
			rd.forward(request, response);
		}
	}

	/**
	 * Returns a short description of the servlet.
	 *
	 * @return a String containing servlet description
	 */
	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>
}


