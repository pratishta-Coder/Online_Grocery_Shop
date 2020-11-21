<%-- 
    Document   : add_category
    Created on : 02-Oct-2020, 11:25:38 am
    Author     : Shree
--%>

<%@page import="java.util.Base64"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <%@include file="common/bootstrap_cdn.jsp"%>
         <link rel="stylesheet" type="text/css" href="style.css">
    </head>   
    <body>
         <header>
            <!--included nav-bar using include directive-->
            <%@include file="common/nav_bar.jsp"%>
        </header>
        <br>
        <section class="category">
          <center><h3>Categories</h3></center>
        </section><br>
        <div class="container">
        <div class="row">
         <%
             Connection con=null;
             Statement pt=null;
             ResultSet rs=null;
             try{
                   Class.forName("com.mysql.jdbc.Driver");
                   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
                   pt=con.createStatement();
                   rs=pt.executeQuery("select * from category");
                   String category="";
                   while(rs.next())
                   {
                       category=rs.getString(1);
                   %> 
                   
                   <div class="col-lg-3 col-md-3 col-sm-12 col-10 d-block m-auto"><br>
                     <div class="card">
                      <img class="card-img-top categori" src="getimage.jsp?category=<%=category%>"/>
                        <div class="card-body product_category">
                           <h4 class="card-title"><%=category%></h4>
                           <a href="edit_category.jsp?category=<%=category%>" class="btn btn-success" name="edit"><i class="fa fa-edit" style="font-size:22px">edit</i></a>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="delete_category.jsp?category=<%=category%>" class="btn btn-danger" name="delete"><i class="fa fa-trash-o" style="font-size:22px">delete</i></a>
                     </div>
                     </div>
                  </div>
                     
                 <%}
                  rs.close();
                  pt.close();
                  con.close(); 
              }
              catch(Exception e)
              {
                  out.println(e);
              }
              finally {
                        try {
                        rs.close();
                        pt.close();
                        con.close();
                        }
                     catch (SQLException e) {
                      e.printStackTrace();
                }
             }
            %>
          </div>
          </div>  
         <br><br>
         <div class="container">
            <form class="inner-group" action="AddCategory_Form.jsp">
              <center> <button type="submit" class="btn btn-primary" name="submit">Add New Category</button></center>
           </form>
         </div>
          <footer>
           <%@include file="footer.jsp"%>     
       </footer>
    </body>
</html>
