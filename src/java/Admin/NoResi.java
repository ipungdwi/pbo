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
public class NoResi extends HttpServlet{
    
    private final Connection conn;
    public NoResi() throws SQLException {
        conn = ConnectionDB.getConnectionDB();
    }
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
            request.getRequestDispatcher("../../admin/noresi.jsp").forward(request, response);
    }
    
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {

        HttpSession session = request.getSession();

        // get id from path
        String id = request.getPathInfo().substring(1);
        System.out.println(id);
        PreparedStatement prSt = null;
        String txtNoResi = request.getParameter("noresi");        

        String updateQuery = "UPDATE registration_spk SET NoResi = '" + txtNoResi +
                "' WHERE id = " + id + ";";

        System.out.println(updateQuery);    
        try {
            prSt = conn.prepareStatement(updateQuery);
        } catch (SQLException ex) {
            Logger.getLogger(NoResi.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            prSt.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(NoResi.class.getName()).log(Level.SEVERE, null, ex);
        }
          System.out.println("data berhasil diupdate");
            response.sendRedirect("../");
//        response.sendRedirect("dashboardadmincustomers" + id);
    }
                
}
