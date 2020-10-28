<%-- 
    Document   : getimage_product
    Created on : 21-Oct-2020, 5:25:26 pm
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
        String product=request.getParameter("product");
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
            PreparedStatement pt=con.prepareStatement("select * from product where Product_Name=?");
            pt.setString(1,product);
            ResultSet rs=pt.executeQuery();
            if(rs.next())
            {
                Blob blob=rs.getBlob("Image");
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
