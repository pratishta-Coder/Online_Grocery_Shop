<%-- 
    Document   : save_product.jsp
    Created on : 20-Nov-2020, 2:56:15 pm
    Author     : Shree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
        <%
            
                    String first=request.getParameter("firstn");
                    String last=request.getParameter("lastn");
                    String address=request.getParameter("address");
                    String email=request.getParameter("email1");
                    String contact=request.getParameter("mobile");
                    String product_name=request.getParameter("productname");
                    String productprice=request.getParameter("price");
                    String productquantity=request.getParameter("productquan");
                    String product_unit=request.getParameter("unit");
                    
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
                          response.sendRedirect("order.jsp");
                       }
                      else
                      {
                           response.sendRedirect("order.jsp");   
                      }
                      con.close();
                    }
                    catch(Exception e)
                    {
                        e.printStackTrace();
                    }

                       
        %>