package beans;

import java.sql.*;

public class Contact {
	private int id;
	private String nom;
    private String prenom;
    private String email;
    
    public Contact() {
    	this.id=id;
        this.nom = nom;
        this.prenom = prenom;
        this.email = email;
        
    }
    public int getId() {
        return id;
    }
    
    public void setId(int id) {
        this.id = id;
        
    }
    
    public String getNom() {
        return nom;
    }
    
    public void setNom(String nom) {
        this.nom = nom;
    }
    
    public String getPrenom() {
        return prenom;
    }
    
    public void setPrenom(String prenom) {
        this.prenom = prenom;
        
    }
    public String getEmail() {
        return email;
    }
    
    public void setEmail(String email) {
        this.email = email;
        
    }
    public void load(int contactId) {
        try {
            //connexion � la base de donn�es
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:8080/maBaseDeDonnees", "utilisateur", "motDePasse");

            // requ�te pour r�cup�rer les informations du contact avec l'id correspondant
            String query = "SELECT * FROM contact WHERE id = ?";
            PreparedStatement statement = conn.prepareStatement(query);
            statement.setInt(1, contactId);

            // ex�cution de la requ�te
            ResultSet result = statement.executeQuery();

            // si le contact est trouv�, on r�cup�re ses informations
            if (result.next()) {
                this.id = result.getInt("id");
                this.nom = result.getString("nom");
                this.prenom = result.getString("prenom");
                this.email = result.getString("email");
            }
            
            // fermeture de la connexion
            conn.close();
        } catch (SQLException e) {
            System.out.println("Erreur lors de la r�cup�ration du contact : " + e.getMessage());
        }
    }
}
