/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOImpl;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import DAO.ClientiDao;
import pojo.Clienti;


public class ClientiDaoImpl implements ClientiDao{

    public void adaugaClienti(Clienti client) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.save(client);
        transaction.commit();
        session.close();
    }

    public List<Clienti> afiseazaClienti() {
        List<Clienti> listaClienti = new ArrayList();
        Session session = HibernateUtil.getSessionFactory().openSession();
        org.hibernate.Query query = session.createQuery("From Clienti");
        listaClienti = query.list();
        return listaClienti;
    }

    public void modificaClienti(int idclient, String nume, String prenume, String adresa, String telefon, String email) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Clienti detaliiclienti = (Clienti) session.load(Clienti.class, idclient);
        detaliiclienti.setNume(nume);
        detaliiclienti.setPrenume(prenume);
        detaliiclienti.setAdresa(adresa);
        detaliiclienti.setTelefon(telefon);
        detaliiclienti.setEmail(email);
        session.update(detaliiclienti);
        transaction.commit();
        session.close();
    }

    public void stergeClient(Clienti client) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.delete(client);
        transaction.commit();
        session.close();
    }
}
