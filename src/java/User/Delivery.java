/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package User;

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
import javax.swing.JOptionPane;

/**
 *
 * @author Administrator
 */
public class Delivery extends HttpServlet{
    private final Connection conn;
    
    public Delivery() throws SQLException {
        conn = ConnectionDB.ConnectionDB.getConnectionDB();        
    }
    
    
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
            request.getRequestDispatcher("user/delivery.jsp").forward(request, response);
    }
    
     @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
            
        String txtNamaPengirim = request.getParameter("txtNamaPengirim");
        String txtNamaPenerima = request.getParameter("txtNamaPenerima");
        String txtAlamatPengirim = request.getParameter("txtAlamatPengirim");
        String txtAlamatPenerima = request.getParameter("txtAlamatPenerima");
        String txtNoTelephonePengirim = request.getParameter("txtNoTelephonePengirim");
        String txtNoTelephonePenerima = request.getParameter("txtNoTelephonePenerima");
        String txtKodePosPengirim = request.getParameter("txtKodePosPengirim");
        String txtKodePosPenerima = request.getParameter("txtKodePosPenerima");
        String txtInfoBarang = request.getParameter("txtInfoBarang");
        String txtKg = request.getParameter("txtKg");
        String txtServis = request.getParameter("txtServis");
        String txtTotalBiaya = request.getParameter("txtTotalBiaya");
        
        PreparedStatement prSt = null;
        
                
        String insertQuery = "insert into registration_spk(NamaPengirim,NamaPenerima,AlamatPengirim,AlamatPenerima,NoTelephonePengirim,NoTelephonePenerima,KodePosPengirim,KodePosPenerima,InfoBarang,Kg,Servis,TotalBiaya) "
                    + "values ('"
                    +txtNamaPengirim+"','"
                    +txtNamaPenerima+"','"
                    +txtAlamatPengirim+"','"
                    +txtAlamatPenerima+"','"
                    +txtNoTelephonePengirim+"','"
                    +txtNoTelephonePenerima+"','"
                    +txtKodePosPengirim+"','"
                    +txtKodePosPenerima+"','"
                    +txtInfoBarang+"','"
                    +txtKg+"','"
                    +txtServis+"','"
                    +txtTotalBiaya+"') ";
        
     
        try {
            prSt = conn.prepareStatement(insertQuery);
        } catch (SQLException ex) {
            Logger.getLogger(Delivery.class.getName()).log(Level.SEVERE, null, ex);
        }
                                            
        try {
            prSt.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(Delivery.class.getName()).log(Level.SEVERE, null, ex);
        }
            
        response.sendRedirect("delivery");
    }
    
}
