<%-- 
    Document   : sell_history
    Created on : 20-Nov-2020, 5:58:43 pm
    Author     : Shree
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <%@include file="common/bootstrap_cdn.jsp"%>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <header> 
             <%@include file="common/nav_bar.jsp"%>
        </header>
        <br>
        <section class="category">
            <center><h3>Sell History</h3></center>
        </section>
        <br>
        <!--table to display sell history-->
        <table class="table table-striped table-bordered table-hover">
          <thead> 
            <tr class="table-success">
              <th scope="col"><b>FirstName</b></th>
               <th scope="col"><b>LastName</b></th>
               <th scope="col"><b>Address</b></th>
               <th scope="col"><b>Email</b></th>
               <th scope="col"><b>Contact</b></th>
               <th scope="col"><b>Product Name</b></th>
               <th scope="col"><b>Product Quantity</b></th>
                <th scope="col"><b>Product Unit</b></th>
                <th scope="col"><b>Price</b></th>
            </tr>
          </thead>
          <tbody>
        <%
             Connection con=null;
             Statement pt=null;
             ResultSet rs=null;
             try{
                   Class.forName("com.mysql.jdbc.Driver");
                   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
                   pt=con.createStatement();
                 
                   rs=pt.executeQuery("select * from register");
                   while(rs.next())
                   {%>
                    <tr class="table-danger">
                   <td><%=rs.getString(2)%></td>
                   <td><%=rs.getString(3)%></td>
                   <td><%=rs.getString(4)%></td>   
                   <td><%=rs.getString(5)%></td>
                   <td><%=rs.getString(6)%></td>
                   <td><%=rs.getString(7)%></td>
                    <td><%=rs.getInt(8)%></td>
                    <td><%=rs.getString(9)%></td>
                    <td><%=rs.getInt(10)%></td>
                       </tr>
               
                  <% }
                  rs.close();
                  pt.close();
                  con.close(); 
                  }
                  catch (SQLException e) {
                   System.out.println(e);
                   //e.printStackTrace();
                }
                   %>
          </tbody>
            
        </table>
    </body>
</html>
