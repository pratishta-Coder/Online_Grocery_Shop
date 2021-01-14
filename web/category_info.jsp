<%-- 
    Document   : category_info
    Created on : 25-Nov-2020, 6:53:55 pm
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
        <center><h2>Category Information</h2></center>
     </section><br>
     <table align='center' border='2' width="100" style="background:thistle; width:100%" class="table table-striped table-bordered table-hover">
     <tbody>
       <tr border='2'>
       <th width="25%">Category Name</th>
       <th width="25%">Description</th>
       </tr>
     <%  
             try{
                 Connection con=null;
                 Statement pt=null;
                 ResultSet rs=null;
                 Class.forName("com.mysql.jdbc.Driver");
                 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
                   pt=con.createStatement();
                   String category="";
                   String desc="";
                   rs=pt.executeQuery("select * from category");
                   while(rs.next())
                   {
                       category=rs.getString(1);
                       desc=rs.getString(3);
                   %> 
                    <tr class="text-white bg-secondary" style="border:'1'">
                    <td><%=category%></td>
                    <td><%=desc%></td>
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
