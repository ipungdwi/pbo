/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MyAuthentication;

import ConnectionDB.ConnectionDB;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
public class Login extends HttpServlet{
    
    private final Connection conn;
    public Login() throws SQLException {
        conn = ConnectionDB.getConnectionDB();
    }
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        
            request.getRequestDispatcher("MyAuthentication/login.jsp").forward(request, response);
   
    }
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        PreparedStatement prSt = null;
        ResultSet rs = null;

        String selectQuery = "select * from user_login where " +
                "username = '" + username + "' " +
                "and password = '" + password + "';";

        System.out.println(selectQuery);

        
        try {
            prSt = (PreparedStatement) conn.prepareStatement(selectQuery);
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
        

        try {
            rs = prSt.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
            System.out.println("data berhasil diambil");

        HttpSession session = request.getSession(); /* Creating a new session */
        try {        
            if (rs.next()) {
                System.out.println("akun ditemukan");
                // if admin exist
                session.setAttribute("username", username);
                session.setAttribute("id", rs.getString("id"));
                session.setAttribute("role", "user");

                // session.invalidate(); /* Invalidating the session */
                response.sendRedirect("dashboarduser");
            } else {
                System.out.println("akun tidak ditemukan");
                // if admin not exist
                session.setAttribute("login", "failed");
                response.sendRedirect("login");
            }
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }     
}
