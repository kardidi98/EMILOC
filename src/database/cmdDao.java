package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import bean.commande;


public class cmdDao {

    public int AddCmd(commande cmd) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO commandes" +
            "  (numC,nomProduit,QteProduit,PrixUnitaire) VALUES " +
            " (?, ?, ?, ?);";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd", "root", "");

          
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
        	
            preparedStatement.setString(1, cmd.getNum());
            preparedStatement.setString(2, cmd.getNom());
            preparedStatement.setString(3, cmd.getQte());
            preparedStatement.setString(4, cmd.getPrixU());
            

            System.out.println(preparedStatement);
        
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
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
