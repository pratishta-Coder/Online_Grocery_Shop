<%-- 
    Document   : customer_Registration
    Created on : 16-Oct-2020, 10:48:36 am
    Author     : RADHIII
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
    
        <title>Registration Page</title>
        <link rel="stylesheet" type="text/css" href="style2.css">
        <%@include file="common/bootstrap_cdn.jsp"%>
    </head>
    <body>
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
              <form class="form-inline" action="customer_Registration.jsp">
             <button type="submit" class="btn btn-warning">REGISTER HERE
             <i class="fa fa-hand-o-left"></i>
             </button>
         </form>
        </li>   
       </div>
      </nav>
        </header>
    <div class="container py-3">
    <div id="message"><center>User Registered successfully!!!</center></div>
    <br>
    <div class="row">
        <div class="mx-auto col-lg-7 col-sm-6">
                    <!-- form user info -->
                    <div class="card mb-5">
                        <h5 class="card-header bg-dark" style="color:white"><center>REGISTRATION FORM</center></h5>
                        <div class="card-body">
                            <form class="inner-group" action="registeruser.jsp" method="POST" onsubmit="return Validation()">
                                <div class="form-group row">
                                    <label class="col-lg-3 col-form-label form-control-label">First name</label>
                                    <div class="col-lg-9">
                                        <input class="form-control" type="text" id="finame" name="firstname" placeholder="Enter first name" autocomplete="off" required/>
                                        <span id="fname" class="text-danger font-weight-bold"></span>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-lg-3 col-form-label form-control-label">Last name</label>
                                    <div class="col-lg-9">
                                        <input class="form-control" type="text" id="laname" name="lastname" placeholder="Enter last name" autocomplete="off" required/>
                                        <span id="lname" class="text-danger font-weight-bold"></span>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-lg-3 col-form-label form-control-label">Email</label>
                                    <div class="col-lg-9">
                                        <input class="form-control" type="email" id="emails" name="email" placeholder="Enter email address" autocomplete="off" required/>
                                        <span id="emailid" class="text-danger font-weight-bold"></span>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-lg-3 col-form-label form-control-label">contact</label>
                                    <div class="col-lg-9">
                                        <input class="form-control" type="text" id="mob" name="contact" placeholder="Enter 10-digit mobile number..." autocomplete="off" required/>
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
                                       <input class="form-control" type="text" id="user" name="loginid" placeholder="Enter login id..." autocomplete="off">
                                       <span id="username" class="text-danger font-weight-bold"></span>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-lg-3 col-form-label form-control-label">Password</label>
                                    <div class="col-lg-9">
                                        <input class="form-control" type="password" id="pass" name="password" placeholder="Enter password of 8 to 12 character long eg.Xyzpq_12...">
                                         <span id="pswd" class="text-danger font-weight-bold"></span> 
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-lg-3 col-form-label form-control-label">Confirm</label>
                                    <div class="col-lg-9">
                                        <input class="form-control" type="password" id="conpass" placeholder="Re-enter password..." required/>
                                        <span id="conpswd" class="text-danger font-weight-bold"></span> 
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-lg-3 col-form-label form-control-label"></label>
                                    <div class="col-lg-9">
                                        <a href="loginuser_form.jsp" class="btn btn-secondary" value="submit">Back</a>&nbsp;&nbsp;
                                        <button type="submit" class="btn btn-success" value="submit">Submit</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                   <!-- /form user info -->
              </div>
          </div>
      </div>
       <footer>
           <%@include file="footer.jsp"%>     
       </footer>
      <!--javascript validation code for form fields-->
        <script type="text/javascript"> 
            function Validation(){
                var firstn= document.getElementById('finame').value;
                var lastn= document.getElementById('laname').value;
                var mobile= document.getElementById('mob').value;
                var user= document.getElementById('user').value;
                var passwords=document.getElementById('pass').value;
                var confirmPasswords=document.getElementById('conpass').value;
                
                if(firstn==""){
                    document.getElementById('fname').innerHTML="*Please fill the first name";
                    return false;
                }
                if(lastn==""){
                    document.getElementById('lname').innerHTML="*Please fill the last name";
                    return false;
                }
                 if(mobile==""){
                    document.getElementById('mobno').innerHTML="*Please fill the last name";
                    return false;
                }
                if(mobile.length!=10){
                    document.getElementById('mobno').innerHTML="*Mobile No Must be 10 digit number";
                    return false;
                }
                
                if(user==""){
                    document.getElementById('username').innerHTML="*Please fill the user name";
                    return false;
                }
                if((user.length<=2) || (user.length> 15))
                {
                    document.getElementById('username').innerHTML="*length should be in between 2 and 15";
                    return false;
                }
            
                if(passwords==""){
                    document.getElementById('pswd').innerHTML="*Please fill the password";
                    return false;
                }
                
                if((passwords.length<8) || (passwords.length>12))
                {
                   document.getElementById('pswd').innerHTML="*password should be 8 to 12 character long and at least 1 digit and at least 1 special character and at least 1 uppercase and lowercase";
                    return false;      
                }
                
                 if(confirmPasswords==""){
                    document.getElementById('conpswd').innerHTML="*Please re-enter the password";
                    return false;
                }
               
                if(passwords!=confirmPasswords)
                {
                    document.getElementById('conpswd').innerHTML="*Passwords are not matching";
                    return false;
                }
            }
        </script> 
         <!--code to display message on page after adding new admin -->
      <% 
          String msg=(String)request.getAttribute("message");
          if(msg=="true")
          {%>
            <script type="text/javascript"> 
             $("#message").addClass("disp");
             setTimeout(()=>{
             $("#message").removeClass("disp");
            },4000); 
            </script>
         <%}
      %>
    </body>
</html>
