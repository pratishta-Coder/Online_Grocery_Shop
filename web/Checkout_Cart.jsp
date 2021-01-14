<%-- 
    Document   : Checkout_Product
    Created on : 24-Nov-2020, 6:58:39 pm
    Author     : Shree
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String product_name=request.getParameter("product");
    String product_price=request.getParameter("product_price");
    String product_quantity=request.getParameter("product_quan");
    String unit=request.getParameter("unit");
    String quan=request.getParameter("totalquantity");
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
        <title>Online Grocery Shop</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        <%@include file="common/bootstrap_cdn.jsp"%>
    </head>
    <script type="text/javascript">
        
        
    </script>
    <body style="background-color: cadetblue;">
         
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
       <%
       String email=request.getParameter("email");
       String password=request.getParameter("password");
       Connection con=null;
       Statement st=null;
       ResultSet rs=null;
       String firstn="";
       String lastn="";
       String email1="";
       String no="";
       String address="";
       try{
           Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
           st=con.createStatement();
           rs= st.executeQuery("select * from register1 where email='"+email+"'and password='"+password+"'");  
           while(rs.next())
            {   
                firstn=rs.getString(2);
                lastn=rs.getString(3);
                email1=rs.getString(4);
                no=rs.getString(5);
                address=rs.getString(6);
            }
           con.close();
         }
       catch(Exception e)
       {
           e.printStackTrace();
       }
    %>
    <!--cart display-->
     <div class="container-fluid">
         <div class="row mt-5">
             <div class="col-md-6">
                <div class="card">
                 <div class="card-body">
                     <div class="card-header text-center mb-5" style="background-color:#ccff66;"><h4>Your Selected Items</h4></div>
                     <div class="cart-body"> 
                     </div>
                 </div>
              </div>
            </div>
          <!-- user details form for ordering product-->
          <div class="col-md-6">
                <div class="card">
                  <div class="card-header text-center mb-2" style="background-color:sandybrown">
                      <h4>Your details for order</h4>
                  </div>
                 <div class="card-body">
                     <form name="myform" method="post" action="order.jsp">
                       <input type="text" class="form-control" id="product" name="productname" value="<%=product_name%>" size="50" placeholder="Enter the email id" hidden="true"/>
                        <input type="number" class="form-control" id="quan" name="productquan" value="<%=productquantity%>" size="50" placeholder="Enter the email id" hidden="true"/>
                        <input type="number" class="form-control" id="productprice" name="price" value="<%=productprice%>" size="50" hidden="true"/>
                        <input type="text" class="form-control" id="pro_unit" name="unit" value="<%=unit%>" size="50" hidden="true"/>
                        <input type="number" class="form-control" id="quan" name="total_quan" value="<%=totalquan%>" size="50" placeholder="Enter the email id" hidden="true"/>

                       <div class="form-group">
                            <label for="firstname">FirstName</label>
                            <input type="text" id="firstname" class="form-control" name="firstn" value="<%=firstn%>" placeholder="Enter your firstname..."required/>
                            </div>
                           <div class="form-group">
                            <label for="lastname">LastName</label>
                            <input type="text" id="lastname" class="form-control" name="lastn" value="<%=lastn%>" placeholder="Enter your lastname..."required/>
                           </div>
                         <div class="form-group">
                           <label for="address">Your Shipping Address</label>
                           <input type="textarea" id="address" class="form-control" name="address" value="<%=address%>" placeholder="Enter your shipping address..." required/>
                         </div>
                         <div class="form-group">
                           <label for="contact no">Contact No</label>
                           <input type="text" id="contact" class="form-control" name="mobile" value="<%=no%>" placeholder="Enter your contact no..." required/>
                         </div>
                          <div class="form-group">
                           <label for="email">Email</label>
                           <input type="email" id="email" class="form-control" name="email1" value="<%=email1%>" placeholder="Enter your email..." required/>
                           </div>
                           <div class="form-group">
                               <label for="total"><b>Total Price To Pay</b></label>
                           <input type="text" id="email" class="form-control" value="<%=totalquan%>&#8377;" placeholder="Enter your email..." required/>
                           </div>
                           <div class="form-group">
                               <label for="total"><b>Total Price To Pay</b></label>
                           <input type="text" id="email" class="form-control" value="<%=totalquan%>&#8377;" placeholder="Enter your email..." required/>
                           </div>
                           
                         <center>
                             <button type="submit" class="btn btn-warning" value="submit" id="insert">Order Now</button> 
                           &nbsp;&nbsp;&nbsp;&nbsp;<a href="user_product.jsp"><button type="button" class="btn btn-outline-success" value="continue shopping">Continue Shopping</button></a>
                         </center>
                        </form>        
                      </div>
                   </div> 
               </div>
           </div>
          <h3 id="name1"></h3> 
        </div> 
       <br><br>
        <footer>
           <%@include file="footer.jsp"%>     
       </footer>
     <script type="text/javascript">
        
        //jquery myjquery function to save data in database  
    
        // function gotocheck(){
       //     var first=$("#firstname").val();
       //    var last=$("#lastname").val();
         //   var address1=$("#address").val();
           // var contact1=$("#contact").val();
            //var email1=$("#email").val();
           // if(!localStorage.cart)
           // {
             //   window.location='save_product';
           // }
            //else
                    //{
              //  let pcart1=JSON.parse(localStorage.getItem("cart"));
              //  for(var i=0;i<pcart1.length;i++)
             //  {
               //     var productname=pcart1[i].productname;
                 //   var productprice=pcart1[i].productprice * pcart1[i].product_quantity;
                 //   var productquantity=pcart1[i].product_quantity;
                   //  var productunit1=pcart1[i].prod
                   //  uct_unit;
                    //$.myjquery(productname,productprice,productquantity,productunit1,first,last,address1,contact1,email1);
              //  }

            //}
            
        //};
              // $.myjquery=function(productname,productprice,productquantity,productunit1,first,last,address1,contact1,email1)
          //  {  
            //$.ajax({
              //          url:'save_order.jsp',
                //        type:'post',
                  //      data: {firstname:first,lastname:last,address:address1,email:email1,contact:contact1,product_name:productname,product_price:productprice,product_quantity:productquantity,productunit:productunit1},
                    //    success:function(response)
                      //  {
                        //        $("#name1").html(response);
                          //      alert("order stored successfully");  
                            //   window.location.href="order.jsp";
                       // }
                    //});         

          // };
              
          
    
     //   function gotoOrder()
      // {
           // var first=$("#firstname").val();
           // var last=$("#lastname").val();
           // var address1=$("#address").val();
           // var contact1=$("#contact").val();
            //var email1=$("#email").val();
              
            //    window.location='save_product';
            
    //  }
               //var product=$("#product").val();
              //  var quantity=$("#quan").val();
               // var price=$("#productprice").val();
               // var unit=$("#pro_unit").val();
                // $.ajax({
                 //   url:'save_order.jsp',
                  //  type:'post',
                   // data:{firstname:first,lastname:last,address:address1,email:email1,contact:contact1,product_name:product,product_price:price,product_quantity:quantity,productunit:unit},
                   // success:function(response)
                    //{
                      //     window.location.href="order.jsp";
                          //  $("#name1").html(response);
                         //   alert("order stored successfully");  
                   // }
                //});           
           // }   
         //   else
          //  {
          //     let pcart1=JSON.parse(localStorage.getItem("cart"));
         //     for(var i=0;i<pcart1.length;i++)
         //     {
           //       var productname=pcart1[i].productname;
             //     var productprice=pcart1[i].productprice * pcart1[i].product_quantity;
               //   var productquantity=pcart1[i].product_quantity;
                 // var productunit1=pcart1[i].product_unit;
                  //myjquery(productname,productprice,productquantity,productunit1,first,last,address1,contact1,email1);
             // }   
              
           // }
             
        //}
   
      /*  $.myjquery=function(productname,productprice,productquantity,productunit1,first,last,address1,contact1,email1)
        {  
            $.ajax({
                        url:'save_order.jsp',
                        type:'post',
                        data: {firstname:first,lastname:last,address:address1,email:email1,contact:contact1,product_name:productname,product_price:productprice,product_quantity:productquantity,productunit:productunit1},
                        success:function(response)
                        {
                                $("#name1").html(response);
                                alert("order stored successfully");  
                               window.location.href="order.jsp";
                        }
                    });         

      };*/
    
  
        </script>
      </body>
</html>
   


