<%-- 
    Document   : action
    Created on : 19-Nov-2020, 6:24:18 pm
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
          String cate=request.getParameter("query");
           Connection con=null;
             PreparedStatement pt=null;
             ResultSet re=null;
             String category="";
             try{
                 Class.forName("com.mysql.jdbc.Driver");
                 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
                 pt=con.prepareStatement("select Category_Name from category where Category_Name LIKE ?");
                 pt.setString(1,"%"+cate+"%");
                 re=pt.executeQuery();
                  if(re.next())
                  {
                        while(re.next())
                        {
                            category=re.getString("Category_Name");
                            %> 
                            <a href="#" class="list-group-item list-group-item-action"><%=category%></a> 
                        <% }
                  }
                  else
                  {%>
                
                      <p class='list-group-item border-1'>No Category Found</p>
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
