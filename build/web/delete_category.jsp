<%-- 
    Document   : delete_category
    Created on : 25-Oct-2020, 2:26:03 pm
    Author     : Shree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          String category=request.getParameter("category");
          Connection con=null;
          Statement st=null;
          out.println(category);
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
            st=con.createStatement();
            int i=st.executeUpdate("delete category,product from category inner join product on category.Category_Name=product.Category_Name where category.Category_Name='"+category+"'");
            if(i>0)
            {
                response.sendRedirect("add_category.jsp");
            }
            else
            {
              System.out.println("error occured");  
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
