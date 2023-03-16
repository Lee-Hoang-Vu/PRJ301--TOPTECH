/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import dao.OrderDAO;
import dao.ProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import static java.lang.System.out;
import java.sql.PreparedStatement;
import model.User;

/**
 *
 * @author HC
 */
public class AddQuanlity extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        String quanlityS = request.getParameter("qty12554");
        int quanlity = Integer.parseInt(quanlityS);
        try {
            OrderDAO odao = new OrderDAO();
            ProductDAO productDao = new ProductDAO();
            User u = (User) session.getAttribute("account");
            String productId = request.getParameter("pid");
            switch(request.getParameter("act")){
                case "minus":
                    if(quanlity == 1) {
                    odao.deleteCartItem(u.getId(), productId);
                    }
                    if(quanlity > 0){
                        quanlity--;
                    }      
                    break;
                case "add":
                    quanlity++;
                    break;
                default:break;
            }
            odao.addCartItem(u.getId(), productId, quanlity);
            response.sendRedirect("./ViewCart");
        } catch (Exception e) {
            response.sendRedirect("./404.html");
        }

    }

}
