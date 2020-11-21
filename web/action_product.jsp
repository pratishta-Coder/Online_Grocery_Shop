<%-- 
    Document   : action_product
    Created on : 20-Nov-2020, 8:45:15 pm
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
       
          String product=request.getParameter("query");
             Connection con=null;
             PreparedStatement pt=null;
             ResultSet re=null;
             String product1="";
             try{
                 Class.forName("com.mysql.jdbc.Driver");
                 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
                 pt=con.prepareStatement("SELECT Product_Name FROM product WHERE Product_Name LIKE ?");
                 pt.setString(1,"%"+product+"%");
                 re=pt.executeQuery();
                 if(re.next())
                  {
                        while(re.next())
                        {
                            product1=re.getString("Product_Name");
                          %> 
                            <a href="#" class="list-group-item list-group-item-action"><%=product1%></a> 
                          <%
                        }
                  }
                  else
                  {%>
                
                      <p class='list-group-item border-1'>No Product Found</p>
                      <h1><%=product%></h1>
                  <%}
                con.close();
             }
             catch(Exception e)
             {
               e.printStackTrace();
             }
       
     %>    
    </body>
</html>
