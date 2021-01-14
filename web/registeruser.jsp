<%-- 
    Document   : registeruser
    Created on : 17-Nov-2020, 2:00:47 pm
    Author     : Shree
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  
             String dbURL = "jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull";
             String dbUser = "root";
             String dbPass = ""; 
             String firstName = request.getParameter("firstname");
             String lastName = request.getParameter("lastname");
             String email = request.getParameter("email");
             String contact = request.getParameter("contact");
             String address = request.getParameter("address");
             String loginid = request.getParameter("loginid");
             String password = request.getParameter("password");

            Connection conn = null; // connection to the database
          
           try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
                String sql = "INSERT INTO register1 (firstname, lastname, email, contact, address, loginid, password) VALUES (?, ?, ?, ?, ?,?, ?)";
                PreparedStatement statement = conn.prepareStatement(sql);
                statement.setString(1, firstName);
                statement.setString(2, lastName);
                statement.setString(3, email);
                statement.setString(4, contact);
                statement.setString(5, address);
                statement.setString(6, loginid);
                statement.setString(7, password);
                int row = statement.executeUpdate();
                if (row > 0) {
                    //message = "File uploaded and saved into database";
                    response.sendRedirect("customer_register.jsp?message=true");
                }

            }
           catch (Exception ex) {

                ex.printStackTrace();
            } 
        finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
           }
         %>
    </body>
</html>
