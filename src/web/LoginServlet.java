
package web;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;




import bean.LoginBean;
import database.LoginDao;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private LoginDao loginDao;
  
    public void init() {
        loginDao = new LoginDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	
    	/* Création ou récupération de la session */
    	//HttpSession session = request.getSession();
    	
   
    	String matricule = request.getParameter("matricule");
        String password = request.getParameter("password");
        LoginBean loginBean = new LoginBean();
        loginBean.setMatricule(matricule);
        loginBean.setPassword(password);

        try {
            if (loginDao.validate(loginBean)) {
            	//session.setAttribute("non",loginBean.getMatricule());
                try{
                	String INSERT_USERS_SQL_2 = "INSERT INTO usersession" +
                            "  (matricule,Role,nom,prenom,email,mdp) VALUES " +
                            " (?, ?, ?, ?,?,?);";
                	
                	Class.forName("com.mysql.jdbc.Driver");
                    
                   
                    ResultSet resultSet = null;
                    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd", "root", "");
                    
                    String sql ="SELECT * FROM utilisateurs  where matricule='"+loginBean.getMatricule()+"'";
                    PreparedStatement preparedStatement1 = connection.prepareStatement(INSERT_USERS_SQL_2);
        				
        				
        				resultSet = preparedStatement1.executeQuery(sql);
        				while(resultSet.next()) {
        				
	                    PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL_2);
	                    preparedStatement.setString(1, loginBean.getMatricule());
	                    preparedStatement.setString(2, resultSet.getString("Role").toLowerCase());
	                    preparedStatement.setString(3, resultSet.getString("nom"));
	                    preparedStatement.setString(4, resultSet.getString("prenom"));
	                    preparedStatement.setString(5, resultSet.getString("email"));
	                    preparedStatement.setString(6, loginBean.getPassword());
                    

                    System.out.println(preparedStatement);
                  
                    	preparedStatement.executeUpdate();
        				}
                } catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
                if(loginBean.getMatricule().equals("admin")) {
                	response.sendRedirect("admin.jsp");
                }else {
                	response.sendRedirect("choix_ev_acceuil.jsp");
                }
                
            } else {
               
                response.sendRedirect("index_erreur.jsp");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        
        	
       
}
}  
