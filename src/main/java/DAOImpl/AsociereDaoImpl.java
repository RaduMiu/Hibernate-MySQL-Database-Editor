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
import DAO.AsociereDao;
import pojo.AsociereClientCont;
import pojo.Clienti;
import pojo.Conturi;

import java.util.Date;


public class AsociereDaoImpl implements AsociereDao{

    public void adaugaAsociere(AsociereClientCont asociere) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.save(asociere);
        transaction.commit();
        session.close();
    }

    public List<AsociereClientCont> afiseazaAsociere() {
        List<AsociereClientCont> listaAsociere = new ArrayList();
        Session session = HibernateUtil.getSessionFactory().openSession();
        org.hibernate.Query query = session.createQuery("From AsociereClientCont");
        listaAsociere = query.list();
        return listaAsociere;
    }

    public void modificaAsociere(Integer idasociere, Clienti client, Conturi cont, String rolclient) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        AsociereClientCont detaliiasociere;
        detaliiasociere = (AsociereClientCont) session.load(AsociereClientCont.class, idasociere);
        detaliiasociere.setClienti(client);
        detaliiasociere.setConturi(cont);
        detaliiasociere.setRolclient(rolclient);
        
        session.update(detaliiasociere);
        transaction.commit();
        session.close();
    }

    public void stergeAsociere(AsociereClientCont asociere) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.delete(asociere);
        transaction.commit();
        session.close();
    }
}
