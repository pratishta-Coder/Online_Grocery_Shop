<%-- 
    Document   : forgetpassword_user
    Created on : 21-Nov-2020, 8:36:53 am
    Author     : Shree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="common/bootstrap_cdn.jsp"%>
    </head>
    <script type="text/javascript">
      function data_validate()
      {
       
        var password = document.forms["RegForm"]["password"]; 
        var conpass = document.forms["RegForm"]["confirm_pass"]; 
  
         if(password.value.length < 8 || password.value.length>15) {  
            document.getElementById("pswd").innerHTML = "**Password length must be atleast 8 characters to 15 characters and it should contain 1 digit and special symbol";  
             return false;  
        } 
       
        if(password.value!=conpass.value)
        {
           document.getElementById("con_pswd").innerHTML="**Should same to password ";
          return false;    
        }    
    } 
  </script>
    <body style="background-color:cadetblue">
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
       <section class="category" style="background:lightgray;width:100%;height:80px;padding-top:20px">
           <center><h3>Forgot Password</h3></center>
        </section><br>
         <!--start of container-->
           <div class="container py-2 m-auto">
            <div class="row">
            <div class="col-lg-8 col-md-10 col-sm-10 col-10 d-block mx-auto"> 
            <!--starting of card-->
            <div class="card">
            <div class="card-header bg-info" style="color:white"><center>FOR NEW PASSWORD</center></div>
            <div class="card-body">
             <!--form inside card to add new admin-->
             <form class="inner-group " method="POST" action="forgetpass_connec_user.jsp" name="RegForm" onsubmit="return data_validate()">
                <div class="form-group">
                    <label for=firstN">Email</label>
                    <input type="email"  class="form-control" name="username" placeholder="Enter the email id.."required/>
               </div>
                
                <div class="form-group">
                    <label for="Password">Password</label>
                    <input type="password" class="form-control" name="password" placeholder="Enter the password of 8 to 12 character..." required/>
                    <span id="pswd" class="text-danger font-weight-bold"></span>
                </div>
                <div class="form-group">
                    <label for="Confirm password">Confirm Password</label>
                    <input type="password" class="form-control" name="confirm_pass" placeholder="Re-enter the password..." required/>
                    <span id="con_pswd" class="text-danger font-weight-bold"></span>
                </div>  
                <center><button type="submit" class="btn btn-success" value="submit">Submit</button></center>
             </form>
             <!--Ending of the form inside card-->
           </div>
           </div>
         </div>
         <!--ending of card-->
        </div>
      </div>
    
     <br><br>
       <footer>
           <%@include file="footer.jsp"%>     
       </footer>
     <% 
          try{
          String msg=request.getParameter("message");
          if(msg.equals("false"))
            {%>
               <script type="text/javascript"> 
                alert("Email not found!");
              </script>
           <% }
        }
       catch(Exception e)
       {
          e.printStackTrace();
       }
     %>
<!--Section: Block Content-->
    </body>
</html>
