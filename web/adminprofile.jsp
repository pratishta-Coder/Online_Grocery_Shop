<%-- 
    Document   : adminprofile
    Created on : 20-Nov-2020, 3:03:49 pm
    Author     : RADHIII
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "grocerydatabase";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>


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
        <center><h2>Admins Information</h2></center>
     </section><br>
 <table align='center' border='2' width="100" style="background:thistle; width:100%" class="table table-striped table-bordered table-hover">   
 <tbody>
 <tr border='2'>
 <th width="25%">FirstName</th>
 <th width="25%">LastName</th>
 <th width="25%">Email</th>
 <th width="25%">Mobile No</th>
 </tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select Firstname,Lastname,Email,Mobile from login_data";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr class="text-white bg-secondary" style="border:'1'">
<td><%=resultSet.getString("Firstname") %></td>
<td><%=resultSet.getString("Lastname") %></td>
<td><%=resultSet.getString("Email") %></td>
<td><%=resultSet.getString("Mobile") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
  </tbody>
</table>
  <br><br><br><br><br>
   <footer>
           <%@include file="footer.jsp"%>     
    </footer>
 </body>
</html>

