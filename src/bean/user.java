package bean;



import java.io.Serializable;

public class user implements Serializable {
    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    private String matricule;
    private String nom;
    private String prenom;
    private String password;
    private String email;
    private String role;
   
    public String getMatricule() {
        return matricule;
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
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getNom() {
        return nom;
    }
    public void setMatricule(String matricule) {
        this.matricule = matricule;
    }
    public String getRole() {
        return role;
    }
    public void setRole(String role) {
        this.role = role;
    }
   
}
