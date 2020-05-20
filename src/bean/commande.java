package bean;



import java.io.Serializable;

public class commande implements Serializable {
    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    private String numC;
    private String nomP;
    private String Qte;
    private String PrixU;
   
    public String getNum() {
        return numC;
    }
    public void setNom(String nom) {
        this.nomP = nom;
    }
    public String getNom() {
        return nomP;
    }
    public void setNum(String num) {
        this.numC = num;
    }
    
    public String getQte() {
        return Qte;
    }
    public void setQte(String qte) {
        this.Qte = qte;
    }
    public String getPrixU() {
        return PrixU;
    }
    public void setPrixU(String prix) {
        this.PrixU = prix;
    }
   
}
