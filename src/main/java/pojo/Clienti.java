package pojo;


import java.util.HashSet;
import java.util.Set;

public class Clienti  implements java.io.Serializable {

	private Integer idclient;		//idpacient
	private String nume;			//nume
	private String prenume;			//prenume
	private String adresa;			//adresa
	private String telefon;
	private String email;
	private Set consultaties = new HashSet(0);

	public Clienti() {
	}

	public Clienti(String nume, String prenume, String adresa, String telefon, String email, Set consultaties) {
		this.nume = nume;
		this.prenume = prenume;
		this.adresa = adresa;
		this.telefon = telefon;
		this.email = email;
		this.consultaties = consultaties;
	}

	public Integer getIdclient() {
		return this.idclient;
	}

	public void setIdclient(Integer idclient) {
		this.idclient = idclient;
	}
	public String getNume() {
		return this.nume;
	}

	public void setNume(String nume) {
		this.nume = nume;
	}
	public String getPrenume() {
		return this.prenume;
	}

	public void setPrenume(String prenume) {
		this.prenume = prenume;
	}
	public String getAdresa() {
		return this.adresa;
	}

	public void setAdresa(String adresa) {
		this.adresa = adresa;
	}
	public String getTelefon() {
		return this.telefon;
	}

	public void setTelefon(String telefon) {
		this.telefon = telefon;
	}
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	public Set getConsultaties() {
		return this.consultaties;
	}

	public void setConsultaties(Set consultaties) {
		this.consultaties = consultaties;
	}
}




