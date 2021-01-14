<%-- 
    Document   : buyproduct
    Created on : 20-Nov-2020, 9:57:20 am
    Author     : Shree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        <%@include file="common/bootstrap_cdn.jsp"%>
       
    </head>
      <script type="text/javascript">
                    $(document).ready(function(){
                        $("#quantity").keyup(function(){
                           let quan=$(this).val();
                           let avail=$("#available_quan").val();
                           let val=quan>avail;
                           if(val){
                               showtoast("That much quantity is not available in stock");
                   
                           }  
                        
                        });
                    });
             </script> 
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
        <!--SEARCH BAR INSIDE NAV-->
       
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
     </header>
      
       <%
           String category="";
           String product_name="";
           String product_price="";
           String product_quantity="";
           String unit="";
           String desc="";
           int productprice=0;
           int productquantity=0;
           try{
           category=request.getParameter("category");
           product_name=request.getParameter("product");
           product_price=request.getParameter("price");
           product_quantity=request.getParameter("quantity");
           unit=request.getParameter("unit");
           desc=request.getParameter("description");
           productprice=Integer.parseInt(product_price);
           productquantity=Integer.parseInt(product_quantity);
           }
           catch(NumberFormatException n){
               n.printStackTrace();
           }
      %>
      <br>
       <section class="category"  style="background:palevioletred;width:100%;height:80px;padding-top:20px">
           <center><h3 style="color:#fff;"><%=product_name%>  Details</h3></center>
       </section>
       <br>
      <div class="container m-auto">
      <div class="row">
      <div class="col-lg-5 col-md-5 col-sm-10 col-10 d-block">  
       <div class="card">
      <img class="card-img-top categori" src="getimage_product.jsp?product=<%=product_name%>"> 
       </div>
      </div>
      <div class="col-lg-7 col-md-7 col-sm-10 col-10">
       <div class="card">
           <div class="card-body" style="background-color:#ccffff;">
       <form method="post" action="loginuser_form.jsp" >
              <div class="form-group">
                  <label><b>Category Name</b></label>
                    <input type="text" class="form-control" value="<%=category%>" name="category" readonly/>
                </div>
               <div class="form-group">
                   <label><b>Product Name</b></label>
                    <input type="text" class="form-control" value="<%=product_name%>" name="product"  readonly/>
                </div>
                <div class="form-group">
                    <label><b>Available Quantity</b></label>
                    <input type="number" class="form-control" id="available_quan" value="<%=productquantity%>" name="quantity" readonly/>
                </div>
                <div class="form-group">
                    <label><b>Required Quantity</b></label>
                    <input type="number" class="form-control" id="quantity" name="required_quan" placeholder="Enter the quantity required in number,eg.,1" required/>
                </div>
                <div class="form-group">
                    <label><b>Unit</b></label>
                   <input type="text" class="form-control" value="<%=unit%>" name="unit" readonly/>
                </div>
                  <div class="form-group">
                      <label><b>Description</b></label>
                    <input type="textarea" class="form-control" value="<%=desc%>" name="description"readonly/>
                </div> 
                <div class="form-group">
                    <label><b>price per unit</b></label>
                    <input type="number" class="form-control" value="<%=productprice%>" name="price"  readonly/>
                </div>          
        
             <center> <button type="submit" class="btn btn-success" name="buy">Proceed To Buy</button></center>
              </form>
       </div> 
       </div>
        </div> 
     </div>
    </div>
      <br><br>
       <footer>
           <%@include file="footer.jsp"%>     
       </footer>        
          
     </body>
</html>
