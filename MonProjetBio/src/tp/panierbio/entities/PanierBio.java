package tp.panierbio.entities;

import java.util.Date;

public class PanierBio {
	private String code;
	private String categorie;
	private String nom;
	private double prix;
	private double poids;
	private Date date;
	private String description;
	
    public PanierBio() {
    }
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getCategorie() {
		return categorie;
	}
	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public double getPrix() {
		return prix;
	}
	public void setPrix(double prix) {
		this.prix = prix;
	}
	public double getPoids() {
		return poids;
	}
	public void setPoids(double poids) {
		this.poids = poids;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	@Override
	public String toString() {
		return "PanierBio [code=" + code + ", categorie=" + categorie + ", nom=" + nom + ", prix=" + prix + ", poids="
				+ poids + ", date=" + date + ", description=" + description + "]";
	}
}
