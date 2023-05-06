package beans;

public class Livre {
	private String auteur;
    private String titre;
    private int annee;
    
    public Livre() {
        this.auteur = "Auteur inconnu";
        this.titre = "Titre inconnu";
        this.annee = 0;
    }
    
    public String getAuteur() {
        return auteur;
    }
    
    public void setAuteur(String auteur) {
        this.auteur = auteur;
    }
    
    public String getTitre() {
        return titre;
    }
    
    public void setTitre(String titre) {
        this.titre = titre;
    }
    
    public int getAnnee() {
        return annee;
    }
    
    public void setAnnee(int annee) {
        this.annee = annee;
    }

}
