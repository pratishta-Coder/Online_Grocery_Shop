<%-- 
    Document   : order_cart
    Created on : 27-Nov-2020, 7:40:39 pm
    Author     : Shree
--%>
<%
String firstname=request.getParameter("firstn");
    String lastname=request.getParameter("lastn");
    String address=request.getParameter("address");
    String contact=request.getParameter("mobile");
    String email=request.getParameter("email1");
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
         <%@include file="common/bootstrap_cdn.jsp"%>
    </head>
    
    <body style="background-color: black;">
    <header>
        <%@include file="common_cart.jsp"%>    
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
             <form class="form-inline" action="index.jsp">
             <button type="submit" class="btn btn-primary">LOGOUT
             <i class="fa fa-hand-o-left"></i>
             </button>
             </form>
        </li>  
       </div>
      </nav>
     </header> 
      
      <div class="padding">
            <div class="row">
               <div class="container d-flex justify-content-center"> 
                   <div class="col-md-6 col-sm-8">
                       <div class="card mt-5">
                           <div class="card-header">
                               <div class="row">
                                <div class="col-md-6">
                                    <b><span>CREDIT/DEBIT CARD PAYMENT</span></b>
                                </div> 
                                <div class="col-md-6 text-right" style="margin-top:-5px">
                                    <img src="https://img.icons8.com/color/36/000000/visa.png">      
                                    <img src="https://img.icons8.com/color/36/000000/mastercard.png">  
                                    <img src="https://img.icons8.com/color/36/000000/amex.png"> 
                                </div>
                           </div>
                       
                         </div> 
                   
                    <div class="card-body" style="height:350px">
                        <form method="post">
                        <input type="text" id="firstname" class="form-control" name="firstn" value="<%=firstname%>" placeholder="Enter your firstname..." hidden="true"/>
                        <input type="text" id="lastname" class="form-control" name="lastn" value="<%=lastname%>" placeholder="Enter your lastname..." hidden="true"/>
                        <input type="textarea" id="address" class="form-control" name="address" value="<%=address%>" placeholder="Enter your shipping address..." hidden="true"/>
                        <input type="text" id="contact" class="form-control" name="mobile" value="<%=contact%>" placeholder="Enter your contact no..."hidden="true"/>
                        <input type="email" id="email" class="form-control" name="email1" value="<%=email%>" placeholder="Enter your email..." hidden="true"/>
                          
                               <div class="form-group">
                                   <label for="cc-number" class="control-label">CARD NUMBER</label>
                                   <input type="tel" id="cc-number" class="input-lg form-control cc-number" autocomplete="cc-number" placeholder=".... .... .... ...." name="">
                               </div>
                               <div class="row">
                                   <div class="col-md-6">
                                    <div class="form-group">
                                   <label for="cc-exp" class="control-label">CARD EXPIRY</label>
                                   <input type="tel" id="cc-exp" class="input-lg form-control cc-exp" autocomplete="cc-exp" placeholder=".. /.." name="">
                                   </div>   
                                   </div>   
                              
                                   <div class="col-md-6">
                                    <div class="form-group">
                                   <label for="cc-cvc" class="control-label">CARD CVC</label>
                                   <input type="tel" id="cc-cvc" class="input-lg form-control cc-cvc" autocomplete="off" placeholder="...." name="">
                                   </div>   
                                  </div>   
                                 </div>
                                 
                               <div class="form-group">
                                   <label for="numeric" class="control-label">CARD HOLDER NAME</label>
                                   <input type="text" class="input-lg form-control">
                               </div>
                                 <div class="form-group">
                                     <button type="submit" value="MAKE PAYMENT" id="pay" class="btn btn-success btn-lg form-control">MAKE PAYMENT</button>
                               </div>
                               </form>
                               </div>
                           </div>
                      </div>
                  </div>
             </div>
      </div>
                        
       <script type="text/javascript">
       $("#pay").click(function()
       {
          var product_detail={};
          product_detail.Product_Name="";
          product_detail.Product_Quantity="";
          product_detail.Product_Unit="";
          product_detail.ProductPrice="";
          for(i=0;i<localStorage.length;i++)
          {
             var obj=localStorage.getItem(localStorage.key(i));
             var Product=JSON.parse(obj);
             product_detail.Product_Name+=Product["productname"]+",";
             product_detail.Product_Quantity+=Product["product_quantity"]+",";
             product_detail.Product_Unit+=Product["product_unit"]+",";
             product_detail.ProductPrice+=Product["productprice"]+",";
          }
          $.ajax({
              type:"POST",
              url:"save_product.jsp",
              dataType:"json",
              contentType:"application/json; charset=utf-8",
              data:JSON.stringify(product_detail),
              success:function(){
                  alert("data has inserted");
              }
          });
      }
   
      </script>
       </body>
</html>