package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import bean.user;

public class userDao {

    public int registeruser(user user) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO utilisateurs" +
            "  (matricule,Role,nom,prenom,email,mdp) VALUES " +
            " (?, ?, ?, ?,?,?);";
        String INSERT_USERS_SQL_2 = "INSERT INTO usersession" +
                "  (matricule,Role,nom,prenom,email,mdp) VALUES " +
                " (?, ?, ?, ?,?,?);";

        
        Class.forName("com.mysql.jdbc.Driver");
        int result = 0;
        
        try{
        
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd", "root", "");
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL);
            preparedStatement.setString(1, user.getMatricule());
            preparedStatement.setString(2, "Utilisateur".toLowerCase());
            preparedStatement.setString(3, user.getNom());
            preparedStatement.setString(4, user.getPrenom());
            preparedStatement.setString(5, user.getEmail());
            preparedStatement.setString(6, user.getPassword());
           

            System.out.println(preparedStatement);
          
            	result = preparedStatement.executeUpdate();
            
            PreparedStatement preparedStatement2 = connection.prepareStatement(INSERT_USERS_SQL_2); 
            	
            preparedStatement2.setString(1, user.getMatricule());
            preparedStatement2.setString(2, "Utilisateur".toLowerCase());
            preparedStatement2.setString(3, user.getNom());
            preparedStatement2.setString(4, user.getPrenom());
            preparedStatement2.setString(5, user.getEmail());
            preparedStatement2.setString(6, user.getPassword());

                System.out.println(preparedStatement);
              
                result = preparedStatement2.executeUpdate();

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
