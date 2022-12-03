/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MyAuthentication;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrator
 */
public class ForgotPassword extends HttpServlet{
    @Override
   public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
            request.getRequestDispatcher("MyAuthentication/forgotpassword.jsp").forward(request, response);
    } 
   
   @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
            
//        String UsernameLogin = request.getParameter("UsernameLogin");
//        String PasswordLogin = request.getParameter("PasswordLogin");
//        
//        
//        request.setAttribute("Username", UsernameLogin);
//        request.setAttribute("Password", PasswordLogin);
//        

        response.sendRedirect("login");
    }
}
