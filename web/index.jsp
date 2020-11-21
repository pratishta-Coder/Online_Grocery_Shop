<%-- 
    Document   : index
    Created on : 24-Sep-2020, 4:03:46 pm
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
    <!--SEARCH BAR INSIDE NAV-->
        <form class="form-inline col-lg-5 col-md-5 col-sm-10 col-10 p-2" method="POST" action="search_category.jsp">
          <input class="form-control" name="search1" id="search" type="search" placeholder="Search for category..." aria-label="Search" style="width:70%">
          <button class="btn btn-outline-success" type="submit" id="search_data">
             <i class="fa fa-search" aria-hidden="true"></i>
         </button>
        </form>
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
        
     <%@include file="common_cart.jsp"%>
     <!--BOOTSTRAP CAROUSEL SECTION-->
      <div id="myslideshow" class="carousel slide" data-ride="carousel">
           <!--adding of indicators to jump to any image in carousel-->
            <ol class="carousel-indicators">
                <li class="active" data-target="#myslideshow" data-slide-to="0"></li>
                <li data-target="#myslideshow" data-slide-to="1"></li>
                <li data-target="#myslideshow" data-slide-to="2"></li>
                <li data-target="#myslideshow" data-slide-to="3"></li>
            </ol>
           <!--ending of indicators-->
            <div class="carousel-inner">
                <div class="carousel-item active"> <!--one item in carousel should be activated till it not display the items
                                                       in carousel-->
                 <img src="img/gr2.jpg" class="d-block w-100" height="300">
                   <div class="carousel-caption">
                       <h3>Ayurveda</h3>
                       <p>Most trusted item!</p>
                   </div>
                 </div>
                 <div class="carousel-item">
                  <img src="img/gr4.jpg" class="d-block w-100" height="300">
                   <div class="carousel-caption">
                       <h3>Dairy Products</h3>
                       <p>Immunity Booster!</p>
                   </div>
                 </div>
                 <div class="carousel-item">
                   <img src="img/gr3.jpg" class="d-block w-100" height="300">
                    <div class="carousel-caption">
                        <h3>Fresh fruits and Vegies</h3>
                       <p>Immunity Booster!</p>
                   </div>
                </div>
                 <div class="carousel-item">
                   <img src="img/gr1.jpg" class="d-block w-100" height="300">
                   <div class="carousel-caption">
                       <h3>Dairy Products</h3>
                       <p>Immunity Booster!</p>
                   </div>
                 </div>
           </div>
           <!--Adding previous and next button in carousel-->
           <a href="#myslideshow" class="carousel-control-prev" role="button" data-slide="prev">
           <span class="carousel-control-prev-icon"></span>
           <span class="sr-only">Previous</span>
           </a>
           <a href="#myslideshow" class="carousel-control-next" role="button" data-slide="next">
           <span class="carousel-control-next-icon"></span>
           <span class="sr-only">Next</span>
           </a>
           <!--ending of previous and next button in carousel-->
       </div>
  
         <!--end bootstrap carousel-->
         <br>
        <!--categories section-->
         <div><center><h3 class="cate_name" style="color:palevioletred;font-family:Arial;font-weight:bold"><u>Categories</u></h3></center></div>
         
         <div class="container">  
          <div class="row" id="result">   
          </div>
         </div>
         
         <div class="container">
         <div class="row">
         <%
             Connection con=null;
             Statement st=null;
             ResultSet re=null;
             String category="";
             try{
                 Class.forName("com.mysql.jdbc.Driver");
                 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
                 st=con.createStatement();
                 re=st.executeQuery("select * from category");
                 while(re.next())
                 {
                     category=re.getString("Category_Name");
                 %>
                
                 <div class="col-lg-4 col-md-3 col-sm-10 col-12 d-block m-auto"><br>
                  <a href="user_product.jsp?cate=<%=category%>">
                   <div class="card">
                    <img class="card-img-top categori" src="getimage.jsp?category=<%=category%>"/>
                    <div class="card-body product_category">
                        <h4 class="card-title" style="color:#009900"><center><%=category%></center></h4>
                    </div>
                 </div> 
                 </a>
                 </div>
               
                 <%}
            }
             catch(Exception e)
             {
               e.printStackTrace();
             }
           %>
     
       <!--ending categories section-->
        </div>
       </div>
       <br>
       <footer>
           <%@include file="footer.jsp"%>     
       </footer>
        <script type="text/javascript">
         $(document).ready(function(){
           $("#search").keyup(function(){
            var searchText=$(this).val();
            if(searchText!=''){
                $.ajax({
                    url:'action.jsp',
                    method:'post',
                    data:{query:searchText},
                    success:function(response){
                      $("#show-list").html(response);  
                    }
                });
            }
            else
            {
                $("#show-list").html('');
            }
           });
           $(document).on('click','a',function(){
               $("#search").val($(this).text());
               $("#show-list").html('');
           });       
         });
        
        
       </script>
   </body>
</html>
