<%-- 
    Document   : NewAdmin
    Created on : 20-Nov-2020, 2:44:08 pm
    Author     : RADHIII
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
       String id=request.getParameter("login_id");
       String pass=request.getParameter("password1");
      String fname=request.getParameter("firstname");
      String lname=request.getParameter("lastname");
      String email=request.getParameter("Email");
      String mob=request.getParameter("mobile_no");
      
       Connection con=null;
        Statement st=null;
       try{
            
          Class.forName("com.mysql.jdbc.Driver");
          con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
          st=con.createStatement();
          int rs=st.executeUpdate("INSERT INTO login(username,password,Firstname,Lastname,Mobile)VALUES('"+id+"','"+pass+"','"+fname+"','"+lname+"','"+email+"','"+mob+"')");
      //   int rs1=st1.executeUpdate("INSERT INTO adminprofile(firstname,lastname,email,mobilenumber)VALUES('"+fname+"','"+lname+"','"+email+"','"+mob+"')");
         if(rs!=0)
         {
            // out.println("alert('New Admin added successfully..')");
             request.setAttribute("message","true");
             response.sendRedirect("Add_Addmin.jsp");
             
         }
         else
         {
             response.sendRedirect(".jsp");
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
