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
public class BuatAkun extends HttpServlet {
   private final Connection conn;
    
    public BuatAkun () throws SQLException {
        conn = ConnectionDB.getConnectionDB();
    }
     
    
   @Override
   public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
            request.getRequestDispatcher("MyAuthentication/buatakun.jsp").forward(request, response);
    } 
   
   @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
            
//      String txtKode = request.getParameter("txtKode");
        String txtUsername = request.getParameter("username");
        String txtNamaAsli = request.getParameter("namaAsli");
        String txtAlamat = request.getParameter("alamat");
        String txtNoHp = request.getParameter("noHp");
        String txtPassword = request.getParameter("password");
        
        PreparedStatement prSt = null;
        
                
        String insertQuery = "insert into user_login(username,namaAsli,alamat,noHp,password) "
                    + "values ('"
                    +txtUsername+"','"
                    +txtNamaAsli+"','"
                    +txtAlamat+"','"
                    +txtNoHp+"','"
                    +txtPassword+"') ";
        System.out.println("data berhasil ditambah");
             
       try {
           prSt = conn.prepareStatement(insertQuery);
       } catch (SQLException ex) {
           Logger.getLogger(BuatAkun.class.getName()).log(Level.SEVERE, null, ex);
       }
                 
         
       try {
           prSt.executeUpdate();
       } catch (SQLException ex) {
           Logger.getLogger(BuatAkun.class.getName()).log(Level.SEVERE, null, ex);
       }
       System.out.println("data berhasil ditambah");
       
       HttpSession session = request.getSession();
       session.setAttribute("register", "success");
       
       response.sendRedirect("login");
    }
}