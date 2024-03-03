package pojo;



import java.util.Date;
import java.util.HashSet;
import java.util.Set;



public class Conturi  implements java.io.Serializable {


	private Integer idcont;		//idmedic
	private String iban;	//nume
	private Date date;    //prenume
	private String tipCont;		//sectie
	private float sold;
	private Set consultaties = new HashSet(0);

	public Conturi() {
	}

	public Conturi(String iban, Date data, String tipCont, float sold, Set consultaties) {
		this.iban = iban;
		this.date = data;
		this.tipCont = tipCont;
		this.sold = sold;
		this.consultaties = consultaties;
	}

	public Integer getIdcont() {
		return this.idcont;
	}

	public void setIdcont(Integer idcont) {
		this.idcont = idcont;
	}
	public String getIban() {
		return this.iban;
	}

	public void setIban(String nume) {
		this.iban = nume;
	}
	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
	public String getTipCont() {
		return this.tipCont;
	}

	public void setTipCont(String tipCont) {
		this.tipCont = tipCont;
	}
	
	public Float getSold() {
		return this.sold;
	}

	public void setSold(float sold) {
		this.sold = sold;
	}
	
	public Set getConsultaties() {
		return this.consultaties;
	}

	public void setConsultaties(Set consultaties) {
		this.consultaties = consultaties;
	}
}




