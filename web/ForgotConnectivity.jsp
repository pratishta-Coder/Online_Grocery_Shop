<%-- 
    Document   : ForgotConnectivity
    Created on : 20-Nov-2020, 2:04:23 pm
    Author     : RADHIII
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
     <% 
        String uname=request.getParameter("username");
        String npassword=request.getParameter("password");
   try{
	Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase","root","");
	PreparedStatement ps=con.prepareStatement("select * from login_data where username=?");
        ps.setString(1,uname);
        ResultSet rs=ps.executeQuery();
        if(rs.next())
        {
           // updatepassword(uname,npassword);
                 con.close();
                 Class.forName("com.mysql.jdbc.Driver");
                 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase","root","");
                 ps=con.prepareStatement("update login_data set password=? where username=?");
                 ps.setString(1,npassword);
                 ps.setString(2,uname);
                 int i=ps.executeUpdate();
                if(i>0)
                {
                        response.sendRedirect("login.jsp?message=true");
                }
                else{
                        response.sendRedirect("login.jsp?message=false");
                }
         }
         else
         {
               response.sendRedirect("ForgotPassword.jsp?message=false");    
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
