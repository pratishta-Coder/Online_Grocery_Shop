/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Shree
 */
@WebServlet(urlPatterns = {"/Update_Category"})
@MultipartConfig(maxFileSize = 16177215)
public class Update_Category extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Update_Category</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Update_Category at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
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
        String old_category=request.getParameter("oldcate");
        String category = request.getParameter("category");
        String desc = request.getParameter("description");
        InputStream inputStream = null;
        Part filePart = request.getPart("photo");
        Connection conn = null; // connection to the database
        PreparedStatement statement=null;
        String message=null;
        int row=0;
       try 
       {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
            if(filePart!=null)
            {
               inputStream = filePart.getInputStream();  
               String sql = "update category set Category_Name=?,Description=?,Category_img=? where Category_Name=?";
               statement = conn.prepareStatement(sql);
               statement.setString(1,category);
               statement.setString(2,desc);
                if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                 statement.setBlob(3, inputStream);
               }
               statement.setString(4,old_category);
              
            }
            row = statement.executeUpdate();
            if (row > 0) 
            {
               response.sendRedirect("edit_category.jsp");   
            }
           
    }
    catch (Exception e)
    {
           message = "ERROR: " + e.getMessage();
           e.printStackTrace();
    } 
    finally 
    {
             if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
          }
    }
    processRequest(request, response);
    
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
