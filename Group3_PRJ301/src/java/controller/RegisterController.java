/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.UserDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Roles;
import model.User;

/**
 *
 * @author Admin
 */
public class RegisterController extends HttpServlet {
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("register.jsp").forward(request, response);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            String gender = request.getParameter("gender");
            String pass = request.getParameter("pass");
            String confirmpass = request.getParameter("confirmpass"); 
            UserDAO udao = new UserDAO();
            User checkExist = udao.getUserByEmail(email);
            if(pass.equals(confirmpass) == false){
                request.setAttribute("messregis","Confirm Password is not correct");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            }else{
            if (checkExist == null) {
                udao.inserUser(name, email, phone, address, pass, Integer.valueOf(gender));
//                User u = new User(name, email, pass, address, phone, new Roles(1));
                User u = new User();
                u.setName(name);
                u.setEmail(email);
                u.setPhone(phone);
                u.setAddress(address);
                u.setPassword(pass);
                u.setRoles( new Roles(1));
                u.setGender(Boolean.parseBoolean(gender));
                request.getSession().setAttribute("newuser", u);
                response.sendRedirect("./sendMail");
            } else {
                request.setAttribute("messregis", "Email already exist in system!");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            }
            }

        } catch (Exception e) {
            request.setAttribute("messregis", "Invalid input.Please Try again!");
            request.getRequestDispatcher("register.jsp").forward(request, response);

        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    public static String messageProcess(String verifyCode) {
        String message = "Hello,\n"
                + "You have sign uo successfully\n"
                + "Welcome to TOPTECH Official " + verifyCode;
        return message;
    }    
}
