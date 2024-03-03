package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import pojo.AsociereClientCont;
import pojo.Clienti;

import pojo.Conturi;
import DAOImpl.AsociereDaoImpl;

import DAOImpl.HibernateUtil;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.hibernate.Session;


public class AsociereController extends HttpServlet {

	AsociereClientCont asociere = new AsociereClientCont();
	AsociereDaoImpl asociereDaoImpl = new AsociereDaoImpl();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("adaugaAsociere") != null) {
			// preluarea parametrilor de interes
			Integer idclient = java.lang.Integer.parseInt(request.getParameter("idclient"));
			Integer idcont = java.lang.Integer.parseInt(request.getParameter("idcont"));
			Session session = HibernateUtil.getSessionFactory().openSession();
			Clienti client = (Clienti) session.get(Clienti.class, idclient);
			Conturi cont = (Conturi) session.get(Conturi.class, idcont);

			
			String rolClient = request.getParameter("rolClient");
			

			asociere.setClienti(client);
			asociere.setConturi(cont);
			asociere.setRolclient(rolClient);

			asociereDaoImpl.adaugaAsociere(asociere);
			RequestDispatcher rd = request.getRequestDispatcher("adauga_Asociere.jsp");
			rd.forward(request, response);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("afiseazaAsociere") != null) {
			List<AsociereClientCont> listaAsociere = new ArrayList();
			listaAsociere = asociereDaoImpl.afiseazaAsociere();
			request.setAttribute("listaAsociere", listaAsociere);
			RequestDispatcher rd = request.getRequestDispatcher("tabela_Asociere.jsp");
			rd.forward(request, response);
		}

		if (request.getParameter("modificaAsociere") != null) {
			Integer id1 = Integer.parseInt(request.getParameter("idasociere"));
			// preluarea parametrilor de interes
			Integer idclient = java.lang.Integer.parseInt(request.getParameter("idclient"));
			Integer idcont = java.lang.Integer.parseInt(request.getParameter("idcont"));
			Session session = HibernateUtil.getSessionFactory().openSession();
			Clienti client = (Clienti) session.get(Clienti.class, idclient);
			Conturi cont = (Conturi) session.get(Conturi.class, idcont);

			String rolClient = request.getParameter("rolClient");

			asociereDaoImpl.modificaAsociere(id1, client, cont, rolClient);
			RequestDispatcher rd = request.getRequestDispatcher("adauga_Asociere.jsp");
			rd.forward(request, response);

		}

		if (request.getParameter("stergeAsociere") != null) {
			Integer id2 = Integer.parseInt(request.getParameter("idasociere"));
			asociere.setIdasociere(id2);
			asociereDaoImpl.stergeAsociere(asociere);
			RequestDispatcher rd = request.getRequestDispatcher("adauga_Asociere.jsp");
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


