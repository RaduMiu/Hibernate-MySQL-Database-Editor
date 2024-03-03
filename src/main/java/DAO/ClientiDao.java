    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.List;

import pojo.Clienti;


public interface ClientiDao {
    public void adaugaClienti (Clienti client);
    public List<Clienti> afiseazaClienti();
    public void modificaClienti (int idclient, String nume, String prenume, String adresa, String telefon, String email);
    public void stergeClient (Clienti client);
}

    
