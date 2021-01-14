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
        <section class="category" style="background: peru;width:100%;height:80px;padding-top:20px">
            <center><h3>Sell History</h3></center>
        </section>
        <br>
        <!--table to display sell history-->
        <table align='center' border='2' width="100" style="background:thistle; width:100%" class="table table-striped table-bordered table-hover">   
          <thead> 
              <tr  border='2'>
               <th width="20%"><b>Customer Name</b></th>
               <th width="25%"><b>Address</b></th>
               <th width="20%"><b>Email</b></th>
               <th width="20%"><b>Contact</b></th>
               <th width="25%"><b>Product Name</b></th>
               <th width="25%"><b>Quantity Ordered</b></th>
               <th width="25%"><b>Price</b></th>
               <th width="25%"><b>Date</b></th>
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
                 
                   rs=pt.executeQuery("select * from sell_history");
                   while(rs.next())
                   {%>
                    <tr class="text-white bg-secondary" style="border:'1'">
                   <td><%=rs.getString(1)%> <%=rs.getString(2)%></td>
                   <td><%=rs.getString(3)%></td>   
                   <td><%=rs.getString(4)%></td>
                   <td><%=rs.getString(5)%></td>
                   <td><%=rs.getString(6)%></td>
                    <td><%=rs.getInt(7)%> <%=rs.getString(8)%></td>
                    <td><%=rs.getInt(9)%>&#8377;</td>
                    <td><%=rs.getDate(10)%></td>
                       </tr>
               
                  <% }
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
          <br><br><br><br><br><br><br><br> 
       <footer>
           <%@include file="footer.jsp"%>     
      </footer>
     
    </body>
</html>
