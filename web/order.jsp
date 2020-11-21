<%-- 
    Document   : order
    Created on : 18-Nov-2020, 8:22:15 pm
    Author     : Shree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style2.css">
         <%@include file="common/bootstrap_cdn.jsp"%>
    </head>
    <body bgcolor="black">
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
                                     <span>CREDIT/DEBIT CARD PAYMENT</span>
                                </div> 
                                <div class="col-md-6 text-right" style="margin-top:-5px">
                                    <img src="https://img.icons8.com/color/36/000000/visa.png">      
                                    <img src="https://img.icons8.com/color/36/000000/mastercard.png">  
                                    <img src="https://img.icons8.com/color/36/000000/amex.png"> 
                                </div>
                           </div>
                         </div> 
                           
                           <div class="card-body" style="height:350px">
                               <form method="post" action="index.jsp">
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
                                     <button type="submit" value="MAKE PAYMENT" class="btn btn-success btn-lg form-control" onclick="#">MAKE PAYMENT</button>
                               </div>
                               </form>
                               </div>
                           </div>
                      </div>
                  </div>
             </div>
        </div>
        
        <script type="text/javascript">
          $(function($){
             $('.cc-number').payment('formatCardNumber');
             $('.cc-exp').payment('formatCardExpiry');
             $('.cc-cvc').payment('formatCardCVC');
             $('form').submit(function(e){
                e.preventDefault();
                var cardType=$.payment.cardType($('.cc-number').val());
                $ ('.cc-number').toggleInputError(!$payment.validateCardNumber($(.cc-number).val()));      
                $ ('.cc-exp').toggleInputError(!$payment.validateCardExpiry($(.cc-exp).payment('cardExpiryVal')));  
                $ ('.cc-cvc').toggleInputError(!$payment.validateCardCVC($('.cc-cvc').val(),cardType));
                $('.validation').removeClass('text-danger text-success');    
                $('.validation').addClass($('.has-error').length?'text-danger':'text-success'); 
    });
   });
        </script>
    </body>
</html>
