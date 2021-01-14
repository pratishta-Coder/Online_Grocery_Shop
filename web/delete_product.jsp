<%-- 
    Document   : delete_product
    Created on : 25-Oct-2020, 6:00:17 pm
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
          String product=request.getParameter("product");
          Connection con=null;
          Statement st=null;
          out.println(product);
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
            st=con.createStatement();
            int i=st.executeUpdate("delete from product where Product_Name='"+product+"'");
            if(i>0)
            {
                response.sendRedirect("AddProduct.jsp?message=true");
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
