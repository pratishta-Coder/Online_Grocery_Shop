<%-- 
    Document   : Customer_Info
    Created on : 25-Nov-2020, 10:52:19 pm
    Author     : Shree
--%>

<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="common/bootstrap_cdn.jsp"%>
    </head>
    <body>
    <header>
         <%@include file="common/nav_bar.jsp"%>
     </header>     
     <section class="category " style="background: peru;width:100%;height:80px;padding-top:20px">
        <center><h2>Customers Information</h2></center>
     </section><br>
     <table align='center' border='2' width="100" style="background:thistle; width:100%" class="table table-striped table-bordered table-hover">
     <tbody>
       <tr border='2'>
       <th width="20%">Customer Name</th>
       <th width="20%">Email</th>
       <th width="20%">Mobile No</th>
       <th width="25%">Address</th>
       </tr>
     <%  
           String first="";
           String last="";
           String email="";
           String contact="";
           String address="";
           try{
                 Connection con=null;
                 Statement pt=null;
                 ResultSet rs=null;
                 Class.forName("com.mysql.jdbc.Driver");
                 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
                   pt=con.createStatement();
                   String category="";
                   String desc="";
                   rs=pt.executeQuery("select * from register1");
                   while(rs.next())
                   {
                     first=rs.getString(2);
                      last=rs.getString(3);
                      email=rs.getString(4);
                      contact=rs.getString(5);
                       address=rs.getString(6);
                   %> 
                    <tr class="text-white bg-secondary" style="border:'1'">
                    <td><%=first%> <%=last%></td>
                     <td><%=email%></td>
                    <td><%=contact%></td>
                    <td><%=address%></td>
                    </tr>
                   <%}
                
                  pt.close();
                  con.close(); 
                  }
                  catch (SQLException e) {
                   System.out.println(e);
                   //e.printStackTrace();
                }%>
         
           </tbody> 
      </table>
  <br><br><br><br><br>
   <footer>
           <%@include file="footer.jsp"%>     
    </footer>
 </body>
</html>
