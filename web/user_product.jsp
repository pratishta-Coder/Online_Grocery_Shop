<%-- 
    Document   : user_product
    Created on : 01-Nov-2020, 3:20:11 pm
    Author     : Shree
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Grosory Shop</title>
       <link rel="stylesheet"  type="text/css" href="style.css">
        <%@include file="common/bootstrap_cdn.jsp"%>
    </head>
    <body>
       <!--including modal class for implementing add to cart module-->
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
        <!--SEARCH BAR INSIDE NAV-->
        <form class="form-inline col-lg-6" method="post" action="action_product2.jsp">
            <input class="form-control" name="search_product" id="search1" type="search" placeholder="Search for product..." aria-label="Search" style="width:60%">
            <button class="btn btn-outline-success" type="submit" id="search_product">
              <i class="fa fa-search" aria-hidden="true"></i>
            </button> 
        </form>
        <!--LOGIN AND REGISTER SECTION-->
        <div class="navbar-nav navbar-right">
         <li class="navbar-nav mr-auto mt-2 mt-sm-0">&nbsp;
             <a class="nav-link" href="#!" data-toggle="modal" data-target="#cart"><i class="fa fa-cart-plus" style="font-size:25px;color:white;"></i><span class="ml-2 cart-items" style="font-size:19px;color:white;">( 0 )</span></a>
          </li>
         <li class="navbar-nav mr-auto mt-2 mt-sm-0">&nbsp;
              <form class="form-inline" action="customer_register.jsp">
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
       <section class="category">
         <center><h3>Products</h3></center>
       </section>
      
       <%!String category1="";%><!--globally declaring var category1 using JSP Declaration tag-->
       <%category1=request.getParameter("cate");%> <!--storing value category1 using scriptlet tag-->
        <div class="container-fluid">
        <div class="row mt-3 mx-2">
        <!--show categories-->
        <div class="col-lg-3 col-md-2 col-sm-3 col-10 d-block">
        <div class="list-group mt-2">
            <a href="#" class="list-group-item list-group-item-action active"><i class="fa fa-bars" style="font-size:22px">Categories</i></a>
            <a href="user_product.jsp?cate=All Products" class="list-group-item list-group-item-action">
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
                  <a href="user_product.jsp?cate=<%=category%>" class="list-group-item list-group-item-action">
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
             <div class="col-lg-9 col-md-8 col-sm-12 col-10 d-block mt-3"> 
              <%if(category1==null || category1.equals("All Products"))
                  {%>
                   <h2 style="color:brown;margin-left:15rem;font-family:Times new roman"><%out.println("All Products");%></h2>
                  <%}
                 else
                  {%>
                   <h2 style="color:brown;margin-left:15rem;font-family:Times new roman"><%=category1%></h2>
             <%}%>
              <div class="row mt-3">
              <div class="col-lg-12 col-md-10 col-lg-12 col-sm-8 col-10 d-block m-auto"> 
              <div class="card-columns">
               <!--fetching and traversing products depend on categories-->
                <% 
                   String category="";
                   String product="";
                   int quantity=0;
                   int price=0;
                   String unit="";
                   String desc="";
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
                    Statement p=con.createStatement();
                    if(category1==null || category1.equals("All Products"))
                   {
                         rs=p.executeQuery("select * from product");
                   }
                   else
                   {
                         rs=p.executeQuery("select * from product where Category_Name='"+category1+"'");
                   }
                  
                   while(rs.next())
                   {
                       category=rs.getString(1);
                       product=rs.getString(2); 
                       quantity=rs.getInt(3);
                       price=rs.getInt(5); 
                       unit=rs.getString(4);
                       desc=rs.getString(6);
                   %>
                   
                   <div class="card cate">
                       <a href="view_product.jsp?category=<%=category%>&product=<%=product%>&price=<%=price%>&quantity=<%=quantity%>&unit=<%=unit%>&description=<%=desc%>"><img class="card-img-top categori" src="getimage_product.jsp?product=<%=product%>"/></a>
                       <div class="card-body">
                       <h5 class="card-title" style="color:#666600"><%=product%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#8377;<%=price%>/<%=unit%></h5>
                       <button class="btn btn-danger" onclick="addtocart('<%=product%>',<%=price%>,<%=quantity%>,'<%=unit%>')"><i class="fa fa-shopping-cart" aria-hidden="true" style="font-size:20px">Add to Cart</i></button>
                       &nbsp;<a href="buyproduct.jsp?category=<%=category%>&product=<%=product%>&price=<%=price%>&quantity=<%=quantity%>&unit=<%=unit%>&description=<%=desc%>"><button class="btn btn-warning" name="buy">Buy Now</button></a>
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
        <br><br>
       <footer>
           <%@include file="footer.jsp"%>     
       </footer>
        <script type="text/javascript">
       //  $(document).ready(function(){
         //  $("#search1").keyup(function(){
           // var searchText=$(this).val();
          //  if(searchText!=''){
            //    $.ajax({
              //      url:'action_product.jsp',
                //    method:'post',
                 //   data:{query:searchText},
                  //  success:function(response){
                    //  $("#showlist").html(response);  
                  //  }
               // });
           // }
           // else
           // {
             //   $("#showlist").html('');
           // }
          // });
          // $(document).on('click','a',function(){
            //   $("#search1").val($(this).text());
             //  $("#showlist").html('');
           //});       
         //});
       /*   $(document).ready(function(){
           $("#search_product").click(function(){
            var searchval=$("#search1").val();
            if(searchval!=''){
                $.ajax({
                    url:'action_product2.jsp',
                    method:'post',
                    data:{query:searchval},
                    success:function(response){
                      $("#searchpro").html(response);  
                    }
                });
            }
            else
            {
                $("#searchpro").html('');
            }
           });
       });*/
         
         </script>  
    </body>
 </html>
       