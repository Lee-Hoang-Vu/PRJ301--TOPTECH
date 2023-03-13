/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

/**
 *
 * @author Sio8
 */
public class VerifyEmail extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       this.doPost(req, resp);
    }
    
    void processRequest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String verifyCode = req.getParameter("verifyCode");
        
        HttpSession verifyPremium = req.getSession();
        String Code = String.valueOf(verifyPremium.getAttribute("verifyCode"));
        
        req.setAttribute("tk", "Thank you!");
        
        if(verifyCode.equals(Code)){
            req.setAttribute("alertTitle", "Thank you!");
            req.getRequestDispatcher("./login").forward(req, resp);
        }else{
            req.setAttribute("alertTitle", "The verify code is wrong, please enter again!");
            req.getRequestDispatcher("Verify.jsp").forward(req, resp);
        }
    }
    
}
