<%-- 
    Document   : login_user
    Created on : 08-Nov-2020, 5:11:55 pm
    Author     : Shree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <meta http-equiv="Content-Type" content="text/html;" charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">  
        <%@include file="common/bootstrap_cdn.jsp"%> <!--including bootstrap cdn-->
    </head> 
    <body style="background-color:cadetblue">
     <%
        String category="";
           String product_name="";
           String product_price="";
           String product_quantity="";
           String pro_quan="";
           String unit="";
           String desc="";
           int productprice=0;
           int productquantity=0;
           int remain_quan=0;
           int price=0;
           try{
      
           product_name=request.getParameter("product");
           product_price=request.getParameter("price");
           pro_quan=request.getParameter("quantity");
           product_quantity=request.getParameter("required_quan");
           unit=request.getParameter("unit");
           productprice=Integer.parseInt(product_price);
           remain_quan=Integer.parseInt(pro_quan);
           productquantity=Integer.parseInt(product_quantity);
           price=productprice*productquantity;
              
           }
           catch(NumberFormatException n){
               n.printStackTrace();
           }
      %>
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
              <form class="form-inline" action="customer_register.jsp">
             <button type="submit" class="btn btn-warning">REGISTER HERE
             <i class="fa fa-hand-o-left"></i>
             </button>
         </form>
        </li>   
       </div>
      </nav>
    </header>
    <div id="message"><center>User email and password mismatched!!!</center></div>
     <br>
     <div class="container py-2">
     <div class="row">
       <div class="col-lg-7 col-md-10 col-sm-10 col-10 d-block mx-auto">
       <div class="card mb-5">
       <div class="card-header bg-warning" style="color:black;">
           <h5> <center>Login Form</center></h5>
       </div>
        <div class="card-body">
         <form class ="inner-group" method="POST" action="loginuser">
            <!--<table border="0">-->
                <input type="text" class="form-control" name="productname" value="<%=product_name%>" size="50" placeholder="Enter the email id" hidden="true"/>
                <input type="number" class="form-control" name="productquan" value="<%=productquantity%>" size="50" placeholder="Enter the email id" hidden="true"/>
                <input type="number" class="form-control" name="price" value="<%=price%>" size="50" hidden="true"/>
                <input type="text" class="form-control" name="unit" value="<%=unit%>" size="50" placeholder="Enter the email id" hidden="true"/>
                <input type="number" class="form-control" name="total_quan" value="<%=remain_quan%>" size="50" placeholder="Enter the total quantity" hidden="true"/>
                
                <div class="form-group">
                    <label>Email ID</label>
                    <input type="email" class="form-control" name="emailid" size="50" placeholder="Enter the email id" required/>
                </div> 
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" class="form-control" name="password" size="50" placeholder="Enter the password"required/>
                </div>
             <center> 
             <div><button type="submit" class="btn btn-secondary" value="submit">Login</button>&nbsp;&nbsp;&nbsp;&nbsp;</div>
             <br><div> <a href="customer_register.jsp">SignUp/Register</a> | <span><a href="forgetpassword_user.jsp">  Forget Password</a></span></div>
             </center>
           <!-- </table>-->
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
     
      <% 
        try{
         String msg=request.getParameter("message");
         if(msg.equals("true"))
         {%>
           
            <script type="text/javascript"> 
             $("#message").addClass("disp");
             setTimeout(()=>{
             $("#message").removeClass("disp");
            },4000); 
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

 