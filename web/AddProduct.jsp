<%-- 
    Document   : AddProduct
    Created on : 19-Oct-2020, 5:54:52 pm
    Author     : Shree
--%>

<%@page import="java.util.List"%>
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
        <%@include file="common/nav_bar.jsp"%>
      </header>
      <br> 
        <section class="category">
            <center><h3>Products</h3></center>
        </section>
        <br>
        <div class="container-fluid">
        <div class="row mt-2 mx-2">
        <!--show categories-->
        <div class="col-lg-3 col-md-2 col-sm-3 col-10 d-block">
        <div class="list-group mt-2">
            <a href="#" class="list-group-item list-group-item-action active"><i class="fa fa-bars" style="font-size:22px">Categories</i></a>
            <a href="AddProduct.jsp?cate=all" class="list-group-item list-group-item-action">
             All Products
            </a> 
         <%
             
             Connection con=null;
             Statement pt=null;
             ResultSet rs=null;
             try{
                   Class.forName("com.mysql.jdbc.Driver");
                   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
                   pt=con.createStatement();
                   String category="";
                   rs=pt.executeQuery("select * from category");
                   while(rs.next())
                   {
                       category=rs.getString(1);
                   %> 
                  <a href="AddProduct.jsp?cate=<%=category%>" class="list-group-item list-group-item-action">
                     <%=category%>
                  </a>
                   <%}
                  rs.close();
                  pt.close();
                  con.close(); 
                  }
                  catch (SQLException e) {
                   System.out.println(e);
                   //e.printStackTrace();
                }%>
              </div>
             </div>
              <!--show products depend on category-->
             <br>
             <div class="col-lg-9 col-md-8 col-sm-12 col-10 d-block"> 
              <%if(request.getParameter("cate")==null)
                  {%>
                  <h2 style="color:brown;margin-left:15rem;margin-top:5px;"><%out.println("all");%></h2>
                  <%}
                  else
                  {%>
                  <h2 style="color:brown;margin-left:15rem;margin-top:5px;"><%=request.getParameter("cate")%></h2>
             <%}%>
              <div class="row mt-3">
              <div class="col-lg-12 col-md-10 col-lg-12 col-sm-8 col-10 d-block m-auto"> 
              <div class="card-columns">
                     <!--fetching and traversing products depend on categories-->
                <% 
                   String category1=request.getParameter("cate");
                   String product="";
                   int price; 
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
                    Statement p=con.createStatement();
                    if(category1==null || category1.equals("all"))
                   {
                         rs=p.executeQuery("select * from product");
                   }
                   else
                   {
                         rs=p.executeQuery("select * from product where Category_Name='"+category1+"'");
                    }
                   while(rs.next())
                   {
                       product=rs.getString(2);  
                       price=rs.getInt(5);     
                   %>
                    <div class="card cate">
                      <img class="card-img-top categori" src="getimage_product.jsp?product=<%=product%>"/>
                       <div class="card-body">
                           <h5 class="card-title" style="color:purple"><%=product%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#8377;<%=price%></h5>
                           &nbsp;<a href="edit_product.jsp?product=<%=product%>" class="btn btn-success" name="edit"><i class="fa fa-edit" style="font-size:22px">edit</i></a>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="delete_product.jsp?product=<%=product%>" class="btn btn-danger" name="delete"><i class="fa fa-trash-o" style="font-size:22px">delete</i></a>
                       </div>
                    </div>
                    <%
                     }
                  rs.close();
                  pt.close();
                  con.close(); 
              }
              catch(Exception e)
              {
                  out.println(e);
              }
              %>
           </div>  
          </div>
         </div> 
        </div>
        </div>
        </div>   
        <div class="container">
          <form class="inner-group" action="Addproduct_Form.jsp">
              <center> <button type="submit" class="btn btn-primary" name="submit">Add New Product</button></center>
          </form>
        </div>
          <footer>
           <%@include file="footer.jsp"%>     
       </footer>
    </body>
</html>
        
    