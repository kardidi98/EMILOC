package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import bean.ajoutProduit;


public class ajoutProduitDao {

    public int registerproduct(ajoutProduit ajoutProduit) throws ClassNotFoundException {
        String INSERT_PRDT_SQL = "INSERT INTO stock" +
            "  (id,nom_produit,categorie,qte_stock,prix_unitaire,description) VALUES " +
            " (?, ?, ?, ?,?,?);";
      

        
        Class.forName("com.mysql.jdbc.Driver");
        int result = 0;
        
        try{
        
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd", "root", "");
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PRDT_SQL);
            preparedStatement.setInt(1, ajoutProduit.getId());
            preparedStatement.setString(2, ajoutProduit.getNom());
            preparedStatement.setString(3, ajoutProduit.getCategorie());
            preparedStatement.setInt(4, ajoutProduit.getQte());
            preparedStatement.setDouble(5, ajoutProduit.getPrix());
            preparedStatement.setString(6, ajoutProduit.getDescription());
            

            System.out.println(preparedStatement);
          
            	result = preparedStatement.executeUpdate();
            
       

        } catch (SQLException e) {
            
            printSQLException(e);
        }
        
		return result;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
