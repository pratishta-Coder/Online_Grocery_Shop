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
                  
                    Connection con=null;
                    PreparedStatement pt=null;
                    ResultSet rs=null;
                    
                  //  out.print(product_name);
                   //  System.out.print(product_price);
                   // out.println(product_name);
                    try{
                        String product=request.getParameter("Product_Name");
                        out.println(product);
                    }
                    catch(Exception e)
                    {
                        e.printStackTrace();
                    }
                     /* Class.forName("com.mysql.jdbc.Driver");
                      con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
                      pt=con.prepareStatement("insert into register(firstname,lastname,address,email,contact)values(?,?,?,?,?,?,?,?,?)");
                      pt.setString(1,first);
                      pt.setString(2,last);
                      pt.setString(3,address);
                      pt.setString(4,email);
                      pt.setString(5,contact);
                     
                      int row= pt.executeUpdate();  
                      if(row>0)
                       {   
                          out.println(row);
                          out.println("Data is successfully inserted!");
                          response.sendRedirect("index.jsp");
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
                    }*/

                       
        %>