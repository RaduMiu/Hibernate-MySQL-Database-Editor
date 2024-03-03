package Controller;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.Conturi;
import DAOImpl.ConturiDaoImpl;
import java.util.Date;

public class ConturiController extends HttpServlet {

	Conturi cont = new Conturi();
	ConturiDaoImpl contDaoImpl = new ConturiDaoImpl();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("adaugaCont") != null) {
			String iban = request.getParameter("iban");
			String tipCont = request.getParameter("tipCont");
			DateFormat date = new SimpleDateFormat("yyyy-MM-dd");
			System.out.println(request.getParameter("date"));
			Date dataCont = null;
			try {
				dataCont = date.parse(request.getParameter("date"));
			} catch (ParseException e) {
				e.printStackTrace();
			}
			float sold =0;
			try {
			    String soldParam = request.getParameter("sold");
			    sold = Float.parseFloat(soldParam);
			} catch (NumberFormatException e) {
				e.printStackTrace();
			}
			
			cont.setIban(iban);
			cont.setTipCont(tipCont);
			cont.setDate(dataCont);
			cont.setSold(sold);
			contDaoImpl.adaugaConturi(cont);
			RequestDispatcher rd = request.getRequestDispatcher("adauga_Cont.jsp");
			rd.forward(request, response);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("afiseazaConturi") != null) {
			List<Conturi> listaConturi = new ArrayList();
			listaConturi = contDaoImpl.afiseazaConturi();
			request.setAttribute("listaConturi", listaConturi);
			RequestDispatcher rd = request.getRequestDispatcher("tabela_Conturi.jsp");
			rd.forward(request, response);
		}

		if (request.getParameter("modificaCont") != null) {
			int id1 = Integer.parseInt(request.getParameter("idcont"));
			String iban = request.getParameter("iban");
			
			DateFormat date = new SimpleDateFormat("yyyy-MM-dd");
			Date dataCont = null;
			try {
				dataCont = date.parse(request.getParameter("dataCont"));
			} catch (ParseException e) {
				e.printStackTrace();
			}
			
			String tipCont = request.getParameter("tipCont");
			float sold = 0;
			try {
			    String soldParam = request.getParameter("sold");
			    sold = Float.parseFloat(soldParam);
			} catch (NumberFormatException e) {
				e.printStackTrace();
			}
			
			contDaoImpl.modificaCont(id1, iban, dataCont, tipCont, sold);
			RequestDispatcher rd = request.getRequestDispatcher("adauga_Cont.jsp");
			rd.forward(request, response);

		}

		if (request.getParameter("stergeCont") != null) {
			int id2 = Integer.parseInt(request.getParameter("idcont"));
			cont.setIdcont(id2);
			contDaoImpl.stergeCont(cont);
			RequestDispatcher rd = request.getRequestDispatcher("adauga_Cont.jsp");
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


