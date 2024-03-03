/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOImpl;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import pojo.Conturi;

import DAO.ConturiDao;


public class ConturiDaoImpl implements ConturiDao{

    public void adaugaConturi(Conturi cont) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.save(cont);
        transaction.commit();
        session.close();
    }

    public List<Conturi> afiseazaConturi() {
        List<Conturi> listaConturi = new ArrayList();
        Session session = HibernateUtil.getSessionFactory().openSession();
        org.hibernate.Query query = session.createQuery("From Conturi");
        listaConturi = query.list();
        return listaConturi;
    }

    public void modificaCont(int idcont, String iban, Date date, String tipCont, Float sold) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Conturi detaliiconturi = (Conturi) session.load(Conturi.class, idcont);
        detaliiconturi.setIban(iban);
        detaliiconturi.setDate(date);
        detaliiconturi.setTipCont(tipCont);
        detaliiconturi.setSold(sold);
        session.update(detaliiconturi);
        transaction.commit();
        session.close();
    }

    public void stergeCont(Conturi cont) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.delete(cont);
        transaction.commit();
        session.close();
    }
}
