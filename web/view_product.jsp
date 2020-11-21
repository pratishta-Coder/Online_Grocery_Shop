<%-- 
    Document   : view_product
    Created on : 17-Nov-2020, 9:07:49 pm
    Author     : Shree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%    
            String product=request.getParameter("product_name");
        %>
        <h1>Hello World!</h1>
        <h1><%=product%></h1>
    </body>
</html>
