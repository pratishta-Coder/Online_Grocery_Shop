<%-- 
    Document   : customer_register
    Created on : 23-Nov-2020, 7:15:00 pm
    Author     : Shree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="common/bootstrap_cdn.jsp"%> 
        <title>JSP Page</title>
       
     </head>
     <script type="text/javascript">
      function data_validate()
      {
        var phone = document.forms["RegForm"]["contact"];
        var password = document.forms["RegForm"]["password"]; 
        var conpass = document.forms["RegForm"]["confirmpass"]; 
      
   
        if (phone.value.length>10 || phone.value.length<10) { 
           document.getElementById("mobno").innerHTML = "**Mobile no length must be atleast 10 digits";  
            return false; 
        } 
         if(password.value.length < 8 || password.value.length>15) {  
            document.getElementById("pswd").innerHTML = "**Password length must be atleast 8 characters to 15 characters and it should contain 1 digit and special symbol";  
             return false;  
        } 
       
        if(password.value!=conpass.value)
        {
           document.getElementById("conpswd").innerHTML="**Should same to password ";
          return false;    
        }    
    } 
  </script>
    <body style="background-color:lightsteelblue;">
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
              <form class="form-inline" action="#">
             <button type="submit" class="btn btn-warning">REGISTER HERE
             <i class="fa fa-hand-o-left"></i>
             </button>
         </form>
        </li>   
       </div>
      </nav>
     </header>
      <div class="container py-3">
      <div class="row">
      <div class="mx-auto col-lg-7 col-md-6 col-sm-10 col-10">
        <div class="card mb-5">
         <h5 class="card-header bg-dark" style="color:white"><center>REGISTRATION FORM</center></h5>
           <div class="card-body">
            <form class="inner-group" name="RegForm" method="POST" action="registeruser.jsp" onsubmit="return data_validate()">
              <div class="form-group row">
              <label class="col-lg-3 col-form-label form-control-label">First name</label>
               <div class="col-lg-9">
                 <input class="form-control" type="text" id="first" name="firstname" placeholder="Enter first name" autocomplete="off" required/>
                 <span id="fname" class="text-danger font-weight-bold"></span>
                </div>
              </div>
              <div class="form-group row">
              <label class="col-lg-3 col-form-label form-control-label">Last name</label>
                <div class="col-lg-9">
                  <input class="form-control" type="text" id="last" name="lastname" placeholder="Enter last name" autocomplete="off" required/>
                  <span id="lname" class="text-danger font-weight-bold"></span>
                </div>
              </div>
               <div class="form-group row">
                 <label class="col-lg-3 col-form-label form-control-label">Email</label>
                  <div class="col-lg-9">
                    <input class="form-control" type="email" name="email" placeholder="Enter email address" autocomplete="off" required/>
                    <span id="emailid" class="text-danger font-weight-bold"></span>
                 </div>
              </div>
               <div class="form-group row">
                  <label class="col-lg-3 col-form-label form-control-label">contact</label>
                   <div class="col-lg-9">
                      <input class="form-control" type="text" name="contact" placeholder="Enter 10-digit mobile number..." autocomplete="off" required/>
                      <span id="mobno" class="text-danger font-weight-bold"></span>
                    </div>
                  </div>
                  <div class="form-group row">
                     <label class="col-lg-3 col-form-label form-control-label">Address</label>
                     <div class="col-lg-9">
                       <input class="form-control" type="text" name="address" placeholder="Enter your shipping address..." autocomplete="off" required/>
                     </div>
                   </div>
                   <div class="form-group row">
                     <label class="col-lg-3 col-form-label form-control-label">Username</label>
                      <div class="col-lg-9">
                        <input class="form-control" type="text" id="user" name="loginid" placeholder="Enter login id..." autocomplete="off" required>
                        <span id="username" class="text-danger font-weight-bold"></span>
                       </div>
                  </div>
                   <div class="form-group row">
                     <label class="col-lg-3 col-form-label form-control-label">Password</label>
                      <div class="col-lg-9">
                         <input class="form-control" type="password" id="passw" name="password" placeholder="Enter password of 8 to 12 character long eg.Xyzpq_12..." required/>
                         <span id="pswd" class="text-danger font-weight-bold"></span> 
                      </div>
                   </div>
                   <div class="form-group row">
                      <label class="col-lg-3 col-form-label form-control-label">Confirm</label>
                      <div class="col-lg-9">
                          <input class="form-control" name="confirmpass" type="password" id="conpassw" placeholder="Re-enter password..." required/>
                          <span id="conpswd" class="text-danger font-weight-bold"></span> 
                       </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-lg-3 col-form-label form-control-label"></label>
                        <div class="col-lg-9">
                           <button type="submit" class="btn btn-success" value="submit">Submit</button>&nbsp;&nbsp;
                           <a href="loginuser_form.jsp" class="btn btn-secondary" value="back">Back</a>
                        </div>
                    </div>
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
          String msg=request.getParameter("message");
          if(msg.equals("true"))
          {%>
            <script type="text/javascript"> 
              alert("customer registered successfully!!!");
            </script>
         <%}
          else
        {%>
            <script type="text/javascript"> 
              alert("error occured");
            </script>
         <%}
      %>
      </body> 
</html>
