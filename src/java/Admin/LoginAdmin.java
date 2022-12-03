/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Admin;

import ConnectionDB.ConnectionDB;
import Kurir.LoginKurir;
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
public class LoginAdmin extends HttpServlet {
    private final Connection conn;
    public LoginAdmin() throws SQLException {
        conn = ConnectionDB.getConnectionDB();
    }
    
    
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
            request.getRequestDispatcher("admin/loginadmin.jsp").forward(request, response);
    }
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        PreparedStatement prSt = null;
        ResultSet rs = null;

        String selectQuery = "select * from admin_login where " +
                "username = '" + username + "' " +
                "and password = '" + password + "';";

        System.out.println(selectQuery);

        try {
            prSt = (PreparedStatement) conn.prepareStatement(selectQuery);
        } catch (SQLException ex) {
            Logger.getLogger(LoginAdmin.class.getName()).log(Level.SEVERE, null, ex);
        }

        try {
            rs = prSt.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(LoginAdmin.class.getName()).log(Level.SEVERE, null, ex);
        }
 
            System.out.println("data berhasil diambil");

        HttpSession session = request.getSession(); /* Creating a new session */          
        try {
            if (rs.next()) {
                System.out.println("akun ditemukan");
                // if admin exist
                session.setAttribute("username", username);
                session.setAttribute("id", rs.getString("id"));
                session.setAttribute("role", "admin");

                // session.invalidate(); /* Invalidating the session */
                response.sendRedirect("dashboardadmin");
            } else {
                System.out.println("akun tidak ditemukan");
                // if admin not exist
                session.setAttribute("login", "failed");
                response.sendRedirect("loginadmin");
            }
        } catch (SQLException ex) {
            Logger.getLogger(LoginAdmin.class.getName()).log(Level.SEVERE, null, ex);
        }
        }       
}
