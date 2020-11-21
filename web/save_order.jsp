<%-- 
    Document   : save_order
    Created on : 19-Nov-2020, 12:51:06 pm
    Author     : Shree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Grosory Shop</title>
        <link rel="stylesheet" href="style.css">
        <%@include file="common/bootstrap_cdn.jsp"%>
    </head>
    <body>
<%@page import="java.sql.*,java.util.*"%>
        <%
            
                    String first=request.getParameter("firstname");
                    String last=request.getParameter("lastname");
                    String address=request.getParameter("address");
                    String email=request.getParameter("email");
                    String contact=request.getParameter("contact");
                    String product_name=request.getParameter("product_name");
                    String productprice=request.getParameter("product_price");
                    String productquantity=request.getParameter("product_quantity");
                    String product_unit=request.getParameter("productunit");
                    
                    Connection con=null;
                    PreparedStatement pt=null;
                    ResultSet rs=null;
                    
                  //  out.print(product_name);
                   //  System.out.print(product_price);
                   // out.println(product_name);
                    try{
                         int product_price=Integer.parseInt(productprice);
                   int product_quantity=Integer.parseInt(productquantity);

                      Class.forName("com.mysql.jdbc.Driver");
                      con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
                      pt=con.prepareStatement("insert into productorder(firstname,lastname,address,email,contact,Product_Name,Product_Quantity,Product_Unit,Product_Price)values(?,?,?,?,?,?,?,?,?)");
                      pt.setString(1,first);
                      pt.setString(2,last);
                      pt.setString(3,address);
                      pt.setString(4,email);
                      pt.setString(5,contact);
                      pt.setString(6,product_name);
                      pt.setInt(7,product_quantity);
                      pt.setString(8,product_unit);
                      pt.setInt(9,product_price);
                      int row= pt.executeUpdate();  
                      if(row>0)
                       {   
                          out.println(row);
                          out.println("Data is successfully inserted!");
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
   