package pojo;



import java.util.Date;

public class AsociereClientCont  implements java.io.Serializable {

	private Integer idasociere;
	private Conturi conturi;
	private Clienti clienti;
	private String rolclient;
	

	public AsociereClientCont() {
	}

	public AsociereClientCont(Conturi conturi, Clienti clienti, String rolClient) {
		this.conturi = conturi;
		this.clienti = clienti;
		this.rolclient = rolClient;
		
	}

	public Integer getIdasociere() {
		return this.idasociere;
	}

	public void setIdasociere(Integer idasociere) {
		this.idasociere = idasociere;
	}
	public Conturi getConturi() {
		return this.conturi;
	}

	public void setConturi(Conturi conturi) {
		this.conturi = conturi;
	}
	public Clienti getClienti() {
		return this.clienti;
	}

	public void setClienti(Clienti clienti) {
		this.clienti = clienti;
	}
	
	public String getRolclient() {
		return this.rolclient;
	}

	public void setRolclient(String rolclient) {
		this.rolclient = rolclient;
	}
	
}




