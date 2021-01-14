<%-- 
    Document   : forgetpass_connec_user
    Created on : 21-Nov-2020, 8:39:19 am
    Author     : Shree
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
       try {
	Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase","root","");
	PreparedStatement ps=con.prepareStatement("select * from register1 where email=?");
        ps.setString(1,uname);
        ResultSet rs=ps.executeQuery();
        if(rs.next())
        {
           // updatepassword(uname,npassword);
                 con.close();
                 Class.forName("com.mysql.jdbc.Driver");
                 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase","root","");
                 ps=con.prepareStatement("update register1 set password=? where email=?");
                 ps.setString(1,npassword);
                 ps.setString(2,uname);
                 int i=ps.executeUpdate();
                if(i>0)
                {
                        response.sendRedirect("loginuser_form.jsp?message=true");
                }
                else{
                        response.sendRedirect("loginuser_form.jsp?message=false");
                }
         }
         else
         {
               response.sendRedirect("forgetpassword_user.jsp?message=false");    
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
