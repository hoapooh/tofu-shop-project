/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ProductOrderDAO;
import dao.ProductsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.Products;

/**
 *
 * @author anphu
 */
@WebServlet(name = "AddToCartController", urlPatterns = {"/addcart"})
public class AddToCartController extends HttpServlet {

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

        HttpSession session = request.getSession();
        List<Cart> listCa = new ArrayList<>();

        ProductsDAO proDAO = new ProductsDAO();

        String proid = request.getParameter("proid");
        String image = request.getParameter("proimage");
        Products p = proDAO.getProductById(proid);
        double price = 0;
        if (p.getDiscountRate() != 0) {
            price = p.getPrice() * (100 - p.getDiscountRate()) / 100;
        } else {
            price = p.getPrice();
        }
        int proquantity = Integer.parseInt(request.getParameter("proquantity"));

        if (proquantity <= 0) {
            String ms = "Please input number larger than 0";
            request.setAttribute("ms", ms);
            request.getRequestDispatcher("./productdetail").forward(request, response);
        } else {
            Cart carts = new Cart(Integer.parseInt(proid), image, p.getName(), price, proquantity);

            List<Cart> listCartSession = (List<Cart>) session.getAttribute("listCart");

            if (listCartSession == null) {
                listCa.add(carts);
                session.setAttribute("listCart", listCa);
                session.setMaxInactiveInterval(1000);
                response.sendRedirect("./shopcontrol");
            } else {
                listCa = listCartSession;
                boolean isExistedProduct = false;
                for (Cart cart : listCa) {
                    if (cart.getProductId() == Integer.parseInt(proid)) {
                        isExistedProduct = true;
                        cart.setQuantity(cart.getQuantity() + proquantity);
                        session.setAttribute("listCart", listCa);
                        session.setMaxInactiveInterval(1000);
                        response.sendRedirect("./shopcontrol");
                    }
                }
                if (!isExistedProduct) {
                    listCa.add(carts);
                    session.setAttribute("listCart", listCa);
                    session.setMaxInactiveInterval(1000);
                    response.sendRedirect("./shopcontrol");
                }
            }
        }

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
