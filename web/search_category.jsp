<%-- 
    Document   : search_category
    Created on : 19-Nov-2020, 8:42:50 pm
    Author     : Shree
--%>
<%@page import="java.sql.*"%>
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
    <header>
     <!--including NAV BAR-->
      <nav class="navbar navbar-expand-lg navbar-light bg-dark">
        <a class="navbar-brand text-warning font-weight-bold" href="#">Online Grocery Store</a>
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item active">
                <a class="nav-link text-white " href="index.jsp">HOME <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white" href="user_product.jsp">PRODUCT</a>
            </li>
        </ul>
  
        <!--LOGIN AND REGISTER SECTION-->
        <div class="navbar-nav navbar-right">
          <li class="navbar-nav mt-2 mt-sm-0">&nbsp;
             <a class="nav-link" href="#!" data-toggle="modal" data-target="#cart"><i class="fa fa-cart-plus" style="font-size:25px;color:white;"></i><span class="ml-2 cart-items" style="font-size:19px;color:white;">( 0 )</span></a>
          </li>
         <li  class="navbar-nav mt-2 mt-sm-0">
              <form class="form-inline" action="login.jsp">
                <!--button type="submit">Click me</button-->
            &nbsp;<button type="submit" class="btn btn-primary">
                 <i class="fa fa-sign-in"></i>&nbsp;LOGIN&nbsp;
                 </button>
              </form>
          </li>
          <li class="navbar-nav mt-2 mt-sm-0">&nbsp;
              <form class="form-inline" action="customer_Registration.jsp">
             <button type="submit" class="btn btn-warning">REGISTER HERE
             <i class="fa fa-hand-o-left"></i>
             </button>
         </form>
          </li>
       </div> 
      </nav> 
      <center><div class="list-group col-lg-5 col-md-5" id="show-list" style="position:relative;margin-top:-10px;width:27.5%;margin-left:-6rem;">        
      </div>
      </center>
     </header>
      <br><br>
     <%@include file="common_cart.jsp"%>
        <div class="container mx-auto">
         <div class="row">
         <%
           String category=request.getParameter("search1");
             Connection con=null;
             Statement st=null;
             ResultSet re=null;
             String category1="";
             try{
                 Class.forName("com.mysql.jdbc.Driver");
                 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
                 st=con.createStatement();
                 re=st.executeQuery("select * from category where Category_Name='"+category+"'");
                 
                 if(re.next())
                 {
                     category1=re.getString("Category_Name");
                 %>
                
                 <div class="col-lg-4 col-md-3 col-sm-10 col-12 d-block m-auto"><br>
                  <a href="user_product.jsp?cate=<%=category1%>">
                   <div class="card">
                    <img class="card-img-top categori" src="getimage.jsp?category=<%=category1%>"/>
                    <div class="card-body product_category">
                        <h4 class="card-title" style="color:#009900"><center><%=category1%></center></h4>
                    </div>
                 </div> 
                 </a>
                 </div>
               
                 <%}
                   else
                  {%>
                        <h1>Category not found</h1>
                 <% }

            }
             catch(Exception e)
             {
               e.printStackTrace();
             }
           %>
         </div>
        </div>
        <br><br>
          <footer><%@include file="footer.jsp"%></footer>
    </body>
</html>
