/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Admin;

import Admin.Object.CustomersModel;
import ConnectionDB.ConnectionDB;
import MyAuthentication.BuatAkun;
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
public class DashboardAdminCustomers extends HttpServlet{
    private final Connection conn;
    public DashboardAdminCustomers() throws SQLException {
        conn = ConnectionDB.getConnectionDB();
    }
    
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
         HttpSession session = request.getSession();
        
            // db connection
            PreparedStatement prSt = null;
            ResultSet rs = null;

            String selectQuery = "select * FROM registration_spk ORDER BY id;";

            System.out.println(selectQuery);

            
            try {
                prSt = (PreparedStatement) conn.prepareStatement(selectQuery);
            } catch (SQLException ex) {
                Logger.getLogger(DashboardAdminCustomers.class.getName()).log(Level.SEVERE, null, ex);
            }
                   
            try {
                rs = prSt.executeQuery();
                System.out.println("data berhasil diambil");
            } catch (SQLException ex) {
                Logger.getLogger(DashboardAdminCustomers.class.getName()).log(Level.SEVERE, null, ex);
            }
                System.out.println("data berhasil diambil");
           
            List<CustomersModel> customers = new ArrayList<>();
                                    
             try {
                 while (rs.next()) {
                     CustomersModel customer = new CustomersModel();
                     customer.setId(rs.getInt("id"));
                     customer.setNamaPengirim(rs.getString("NamaPengirim"));
                     customer.setNamaPenerima(rs.getString("NamaPenerima"));
                     customer.setAlamatPengirim(rs.getString("AlamatPengirim"));
                     customer.setAlamatPenerima(rs.getString("AlamatPenerima"));
                     customer.setNoTelephonePengirim(rs.getString("NoTelephonePengirim"));
                     customer.setNoTelephonePenerima(rs.getString("NoTelephonePenerima"));
                     customer.setKodePosPengirim(rs.getString("KodePosPengirim"));
                     customer.setKodePosPenerima(rs.getString("KodePosPenerima"));
                     customer.setInfoBarang(rs.getString("InfoBarang"));
                     customer.setKg(rs.getString("Kg"));
                     customer.setServis(rs.getString("Servis"));
                     customer.setTotalBiaya(rs.getString("TotalBiaya"));
                     customer.setNoResi(rs.getString("NoResi"));
                     customers.add(customer); 
                 }
             } catch (SQLException ex) {
                 Logger.getLogger(DashboardAdminCustomers.class.getName()).log(Level.SEVERE, null, ex);
             }
            

            request.setAttribute("customers", customers);
            System.out.println("data berhasi");
            
            
            request.getRequestDispatcher("admin/dashboardadmincustomers.jsp").forward(request, response);
    }
    
   
}
