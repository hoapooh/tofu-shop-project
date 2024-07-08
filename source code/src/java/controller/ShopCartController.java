/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ProductOrderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;

/**
 *
 * @author anphu
 */
@WebServlet(name = "ShopCartController", urlPatterns = {"/shopcart"})
public class ShopCartController extends HttpServlet {

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
        
        String increasing = request.getParameter("increasing");
        String decreasing = request.getParameter("decreasing");
        String caId = request.getParameter("caID");
        String isDeleted = request.getParameter("isDeleted");

        HttpSession session = request.getSession();
//        BookDAO bookDAO = new BookDAOImp();
        //giá trị lưu trữ thực
        List<Cart> listCartSession = (List<Cart>) session.getAttribute("listCart");
//        List<Cart> cartProduct = null;
        //giá trị kiểm định
        List<Cart> listCart = new ArrayList<>(listCartSession);

        if (caId != null) {
            int cartId = Integer.parseInt(caId);

            if (increasing != null && decreasing == null) {
                for (Cart ca : listCart) {
                    if (ca.getProductId() == cartId) {
                        ca.setQuantity(ca.getQuantity()+ 1);
                        listCartSession = listCart;
                        session.setAttribute("listCart", listCartSession);
                    }
                }
            } else if (decreasing != null && increasing == null) {
                Iterator<Cart> iterator = listCart.iterator();
                while (iterator.hasNext()) {
                    Cart cart = iterator.next();
                    if (cart.getProductId()== cartId) {
                        int newAmount = cart.getQuantity()- 1;
                        if (newAmount > 0) {
                            cart.setQuantity(newAmount);
                            listCartSession = listCart;
                        } else if (newAmount == 0) {
                            iterator.remove();
                            listCartSession = listCart;
                            System.out.println("removed");
                            session.getAttribute("totalCartPrice");
                        }
                        session.setAttribute("listCart", listCartSession);
                        break;
                    }
                }
            }

            if (isDeleted != null) {
                Iterator<Cart> iterator = listCart.iterator();
                while (iterator.hasNext()) {
                    Cart cart = iterator.next();
                    if (cart.getProductId() == cartId) {
                        iterator.remove();
                        listCartSession = listCart;
                        System.out.println("removed");
                        session.getAttribute("totalCartPrice");
                        session.setAttribute("listCart", listCartSession);
                        break;
                    }
                }
            }
        }

        if (listCartSession != null) {
//            cartBook = bookDAO.getCartBook(listCartSession);
//            double totalPrice = bookDAO.getTotalCartPrice(listCart);

//            session.setAttribute("cartBook", cartBook);
            session.setAttribute("listCart", listCartSession);
        }

        response.sendRedirect("./shopping-cart.jsp");

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
        processRequest(request, response);
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

}
