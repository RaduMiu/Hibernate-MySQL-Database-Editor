    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;

import pojo.Conturi;


public interface ConturiDao {
    public void adaugaConturi (Conturi cont);
    public List<Conturi> afiseazaConturi();
    public void modificaCont (int idcont, String iban, Date date, String tipCont, Float sold);
    public void stergeCont (Conturi cont);
}

    
