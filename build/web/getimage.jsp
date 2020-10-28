<%-- 
    Document   : getimage
    Created on : 15-Oct-2020, 10:25:00 pm
    Author     : Shree
--%>
<%@page import="java.io.OutputStream"%>
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
        String category=request.getParameter("category");
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
            PreparedStatement pt=con.prepareStatement("select * from category where Category_Name=?");
            pt.setString(1, category);
            ResultSet rs=pt.executeQuery();
            if(rs.next())
            {
                Blob blob=rs.getBlob("Category_img");
                byte byteArray[]=blob.getBytes(1,(int)blob.length());
                response.setContentType("image/gif");
                OutputStream os=response.getOutputStream();
                os.write(byteArray);
                os.flush();
                os.close();
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
