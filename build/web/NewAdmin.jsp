<%-- 
    Document   : NewAdmin
    Created on : 01-Oct-2020, 1:28:49 pm
    Author     : Shree
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"
    </head>
    <body>
     <%
       String id=request.getParameter("login_id");
       String pass=request.getParameter("password");
       Connection con=null;
        Statement st=null;
       try{
            
          Class.forName("com.mysql.jdbc.Driver");
          con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
          st=con.createStatement();
         int rs=st.executeUpdate("INSERT INTO login(username,password)VALUES('"+id+"','"+pass+"')");
         if(rs!=0)
         {
             response.sendRedirect("Add_Addmin.jsp");
         }
         else
         {
             response.sendRedirect("index.jsp");
         }
          con.close();
       }
       catch(Exception e)
       {
          e.printStackTrace();
       }
       
    %>
    </body>
</html>