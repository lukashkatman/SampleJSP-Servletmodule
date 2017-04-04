/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Lokesh
 */
@WebServlet(name = "MenuServlet", urlPatterns = {"/MenuServlet"})
public class MenuServlet extends HttpServlet {

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
        
        
       String button = request.getParameter("button");
        if ("send".equals(button)) {
            String product = request.getParameter("product");
            String s=request.getParameter("ing1");
             if (s !=null)
                {
                    System.out.println("Selected ingredient is : "+s);
                }
            String s2=request.getParameter("ing2");
             if (s2 !=null)
                {
                    System.out.println("Selected ingredient is : "+s2);
                }
            int kiloA = Integer.parseInt(request.getParameter("kilo1"));
            System.out.println("the selected amount is :" +kiloA);
            int percentage1 = Integer.parseInt(request.getParameter("percentage1"));
            int kiloB = Integer.parseInt(request.getParameter("kilo2"));
            int percentage2 = Integer.parseInt(request.getParameter("percentage2"));
            
           String Product = product;
            String Ingredients = s +" , "+ s2;
            int TotalW = kiloA + kiloB;
            System.out.println("total weight :" + TotalW);
            int PW = percentage1+percentage2;
            int ProteinPercentage = PW * 100/TotalW;
            System.out.println("total protein percentage :" + ProteinPercentage);
            
            
            request.setAttribute("Product", Product);
            request.setAttribute("Ingredients", Ingredients);
            request.setAttribute("TotalWeight", TotalW);
            request.setAttribute("ProteinPercentage", ProteinPercentage);
            
            
            request.getSession().setAttribute("Product", Product);
             request.getSession().setAttribute("Ingredients", Ingredients);
            
            request.getSession().setAttribute("TotalWeight", TotalW);
            request.getSession().setAttribute("ProteinPercentage", ProteinPercentage);
            
            
            
            RequestDispatcher rd = request.getRequestDispatcher("/confirmation.jsp");
            rd.forward(request, response); 
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
