    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.List;

import pojo.AsociereClientCont;
import pojo.Clienti;

import pojo.Conturi;


public interface AsociereDao {
    public void adaugaAsociere (AsociereClientCont asociere);
    public List<AsociereClientCont> afiseazaAsociere();
    public void modificaAsociere (Integer idasociere, Clienti client, Conturi cont, String rolclient);
    public void stergeAsociere (AsociereClientCont asociere);
}

    
