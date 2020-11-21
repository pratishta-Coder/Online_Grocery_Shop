<%-- 
    Document   : action_product2
    Created on : 20-Nov-2020, 9:49:55 pm
    Author     : Shree
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet"  type="text/css" href="style.css">
        <%@include file="common/bootstrap_cdn.jsp"%>
    </head>
    <body>
       <%@include file="common_cart.jsp"%>
       <header>     
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
         <li class="navbar-nav mr-auto mt-2 mt-sm-0">&nbsp;
             <a class="nav-link" href="#!" data-toggle="modal" data-target="#cart"><i class="fa fa-cart-plus" style="font-size:25px;color:white;"></i><span class="ml-2 cart-items" style="font-size:19px;color:white;">( 0 )</span></a>
          </li>
         <li class="navbar-nav mr-auto mt-2 mt-sm-0">&nbsp;
              <form class="form-inline" action="customer_Registration.jsp">
             <button type="submit" class="btn btn-warning">REGISTER HERE
             <i class="fa fa-hand-o-left"></i>
             </button>
         </form>
        </li>   
       </div>
      </nav>
      <center><div class="list-group col-lg-5 col-md-5" id="showlist" style="position:relative;margin-top:-10px;width:27.5%;margin-left:-6rem;">        
      </div>
      </center>
     </header>
     <br> 
    
       <div class="container mt-3">  
       <div class="row">
       <br>
       <%
            String product=request.getParameter("search_product");
             Connection con=null;
             PreparedStatement pt=null;
             ResultSet re=null;
             String product1="";
             int price=0;
             int quantity=0;
             String unit="";
             String categoryn="";
             String desc="";
             try{
                 Class.forName("com.mysql.jdbc.Driver");
                 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
                 pt=con.prepareStatement("select * from product where Product_Name=?");
                 pt.setString(1,product);
                 re=pt.executeQuery();
                  if(re.next())
                  {
                          categoryn=re.getString("Category_Name");
                           product1=re.getString("Product_Name");
                           price=re.getInt("Price");
                           quantity=re.getInt("Quantity");
                            unit=re.getString("Unit");
                          desc=re.getString("Description");
                   %>  
               
         <div class="col-lg-5 col-md-5 col-sm-8 col-10 d-block m-auto">  
           <div class="card cate">
              <img class="card-img-top categori" src="getimage_product.jsp?product=<%=product1%>"/>
              <div class="card-body">
              <h5 class="card-title" style="color:#666600"><%=product1%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#8377;<%=price%>/-</h5>
              <button class="btn btn-danger" onclick="addtocart('<%=product1%>',<%=price%>,<%=quantity%>,'<%=unit%>')"><i class="fa fa-shopping-cart" aria-hidden="true" style="font-size:20px">Add to Cart</i></button>
             &nbsp;<a href="buyproduct.jsp?category=<%=categoryn%>&product=<%=product1%>&price=<%=price%>&quantity=<%=quantity%>&unit=<%=unit%>&description=<%=desc%>"><button class="btn btn-warning" name="buy">Buy Now</button></a>
             </div> 
           </div>
         </div>
      
                <%  }
                          
               else
                  {%>
                      <p class='list-group-item border-1'>No Product Found</p>
                      <h1><%=product%></h1>
                  <%}
                con.close();
             }
             catch(Exception e)
             {
               e.printStackTrace();
             }
     %> 
     
       </div>   
     </div>
     <br><br>
      <footer>
           <%@include file="footer.jsp"%>     
       </footer>
    </body>
</html>
