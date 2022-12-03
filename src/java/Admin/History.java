/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Admin;

import Admin.Object.HistoryModel;
import javax.servlet.http.HttpServlet;
import ConnectionDB.ConnectionDB;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
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
public class History extends HttpServlet{
    
    private final Connection conn;
    public History() throws SQLException {
        conn = ConnectionDB.getConnectionDB();
    }
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        
            HttpSession session = request.getSession();
            String id = request.getPathInfo().substring(1);
            System.out.println(id);
            // db connection
            PreparedStatement prSt = null;
            ResultSet rs = null;
            

            String selectQuery = "select * FROM history_tracking WHERE id_registration = "+id+" ORDER BY tanggal;";

            System.out.println(selectQuery);
                   
                       
        try {
            prSt = (PreparedStatement) conn.prepareStatement(selectQuery);
        } catch (SQLException ex) {
            Logger.getLogger(History.class.getName()).log(Level.SEVERE, null, ex);
        }
         try {
            rs = prSt.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(History.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        List<HistoryModel> history = new ArrayList<>();
                                                 
        try {
            while (rs.next()) {
                HistoryModel historyData = new HistoryModel();
                historyData.setId(rs.getInt("id"));
                historyData.setTanggal(rs.getString("tanggal"));
                historyData.setHistory(rs.getString("history"));
                historyData.setId_registration(rs.getString("id_registration"));
                history.add(historyData);    
            }
        } catch (SQLException ex) {
            Logger.getLogger(History.class.getName()).log(Level.SEVERE, null, ex);
        }
            System.out.println("data berhasil diupdate");
            request.setAttribute("history", history);
            request.setAttribute("id", id);
            
            request.getRequestDispatcher("../../admin/history.jsp").forward(request, response);
    }
    
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        HttpSession session = request.getSession();

        // get id from path
        String id = request.getPathInfo().substring(1);
        System.out.println(id);
        PreparedStatement prSt = null;
        String txtTanggal = request.getParameter("tanggal"); 
        String txtHistory = request.getParameter("history"); 
        
        String insertQuery = "insert into history_tracking(tanggal,history,id_registration) "
                    + "values ('"
                    +txtTanggal+"','"
                    +txtHistory+"','"
                    +id+"') ";
              
        try {
            prSt = conn.prepareStatement(insertQuery);
        } catch (SQLException ex) {
            Logger.getLogger(History.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            prSt.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(History.class.getName()).log(Level.SEVERE, null, ex);
        }
       
        response.sendRedirect(id);
    }
}
