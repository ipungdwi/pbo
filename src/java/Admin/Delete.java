/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Admin;

import ConnectionDB.ConnectionDB;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Administrator
 */
public class Delete extends HttpServlet{
    private final Connection conn;
    
    public Delete () throws SQLException {
        conn = ConnectionDB.getConnectionDB();
    }
       
   @Override
   public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
            String referer = request.getHeader("Referer");
            HttpSession session = request.getSession();
            String id = request.getPathInfo().substring(1);
            System.out.println(id);

            // delete data from db
            String deleteQuery = "DELETE FROM history_tracking WHERE id = " + id + ";";

            System.out.println(deleteQuery);

            PreparedStatement prSt = null;
          
        try {
            prSt = conn.prepareStatement(deleteQuery);
        } catch (SQLException ex) {
            Logger.getLogger(Delete.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            prSt.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(Delete.class.getName()).log(Level.SEVERE, null, ex);
        }
      

        response.sendRedirect(referer);
    } 
}
