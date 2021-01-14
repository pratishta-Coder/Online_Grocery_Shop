<%-- 
    Document   : order
    Created on : 18-Nov-2020, 8:22:15 pm
    Author     : Shree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

  String product_name=request.getParameter("productname");
    String product_price=request.getParameter("price");
    String product_quantity=request.getParameter("productquan");
    String unit=request.getParameter("unit");
    String quan=request.getParameter("total_quan");
    String firstname=request.getParameter("firstn");
    String lastname=request.getParameter("lastn");
    String address=request.getParameter("address");
    String contact=request.getParameter("mobile");
    String email=request.getParameter("email1");
    int productprice=0;
    int productquantity=0;
    int totalquan=0;
    try{
         productprice=Integer.parseInt(product_price);
         productquantity=Integer.parseInt(product_quantity);
         totalquan=Integer.parseInt(quan);
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }

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
                         <form method="post" action="save_product">
                         <input type="text" class="form-control" id="product" name="productname" value="<%=product_name%>" size="50" placeholder="Enter the email id" hidden="true"/>
                        <input type="number" class="form-control" id="quan" name="productquan" value="<%=productquantity%>" size="50" placeholder="Enter the email id" hidden="true"/>
                        <input type="number" class="form-control" id="productprice" name="price" value="<%=productprice%>" size="50" hidden="true"/>
                        <input type="text" class="form-control" id="pro_unit" name="unit" value="<%=unit%>" size="50" hidden="true"/>
                        <input type="number" class="form-control" id="quan" name="total_quan" value="<%=totalquan%>" size="50" placeholder="Enter the email id" hidden="true"/>
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
                                   <label for="cc-cvc" class="control-label">CARD CVV</label>
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
        <%
            try{
               String msg=request.getParameter("false");
               if(msg.equals("false"))
               {%>
                   <script type="text/javascript">
                         
                   alert("Error occured!!!");
                   </script>
              <%}
             }
            catch(Exception e)
            {
                e.printStackTrace();
            }
           %> 
       </body>
</html>

       <!--
            
         // $(function pay($){
           //  $('.cc-number').payment('formatCardNumber');
             //$('.cc-exp').payment('formatCardExpiry');
            // $('.cc-cvc').payment('formatCardCVC');
            // $('form').submit(function(e){
              //  e.preventDefault();
              //  var cardType=$.payment.cardType($('.cc-number').val());
               // $ ('.cc-number').toggleInputError(!$payment.validateCardNumber($(.cc-number).val()));      
              //  $ ('.cc-exp').toggleInputError(!$payment.validateCardExpiry($(.cc-exp).payment('cardExpiryVal')));  
              //  $ ('.cc-cvc').toggleInputError(!$payment.validateCardCVC($('.cc-cvc').val(),cardType));
              //  $('.validation').removeClass('text-danger text-success');    
                //$('.validation').addClass($('.has-error').length?'text-danger':'text-success'); 
    //});
   //});-->
        
    