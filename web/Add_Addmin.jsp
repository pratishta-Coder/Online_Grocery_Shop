<%-- 
    Document   : Add_Addmin
    Created on : 01-Oct-2020, 9:00:16 am
    Author     : Shree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">  
        <%@include file="common/bootstrap_cdn.jsp"%> <!--including bootstrap cdn-->
    </head>
    <body>
        <header>
          <%@include file="common/nav_bar.jsp"%>  <!--including nav-bar here-->
        </header>
        <br>
        <section class="category">
           <center><h3>Add Admin</h3></center>
        </section><br>
         <!--start of container-->
         <div id="message"><center>New Admin added successfully!!!</center></div>
          <div class="container py-3">
            <div class="row">
            <div class="col-lg-8 col-md-10 col-sm-10 col-10 d-block mx-auto"> 
            <!--starting of card-->
            <div class="card">
            <div class="card-header bg-primary" style="color:white"><center>ADD NEW ADMIN FORM</center></div>
            <div class="card-body">
             <!--form inside card to add new admin-->
             <form class="inner-group" method="POST" action="NewAdmin.jsp" onsubmit="return validation();">
                <div class="form-group">
                    <label for=firstN">First Name</label>
                    <input type="text"  class="form-control" id="firstn" name="firstname" placeholder="Enter the firstname..." required/>
               </div>
                <div class="form-group">
                    <label for="lastN">Last Name</label>
                    <input type="text" class="form-control" id="lastn" name="lastname" placeholder="Enter the lastname..." required/>
                </div>
                <div class="form-group">
                    <label for="Login_id">Login ID</label>
                    <input type="text" class="form-control" id="loginid" name="login_id" placeholder="Enter the Login ID of 2 to 15 character..." required/>   
                </div>
                <div class="form-group">
                    <label for="Password">Password</label>  
                    <input type="password" class="form-control" id="passw" name="password1" placeholder="Enter the password of 8 to 12 character eg.Xyzpx@12..." required/>      
                    <span id="pswd" class="text-danger font-weight-bold"></span> 
                </div>
                <div class="form-group">
                    <label for="Confirm password">Confirm Password</label>
                    <input type="password" class="form-control" id="confirm_passw" name="confirm_pass" placeholder="Re-enter the password..." required/>
                    <span id="con_pswd" class="text-danger font-weight-bold"></span> 
                </div>
               <div class="form-group">
                   <label for="Mobile No">Mobile No</label>
                   <input type="text" class="form-control" id="mobile" name="mobile_no" placeholder="Enter the mobile no of 10 digit..." required/>
                   <span id="mobile" class="text-danger font-weight-bold"></span> 
               </div>
               <div class="form-group">
                    <label for="Email">Email</label>
                    <input type="email" class="form-control" name="Email" placeholder="Enter the valid Email.." required/>
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
        <footer>
           <%@include file="footer.jsp"%>     
       </footer>
       <!--end of container-->
       <!--applying validation to form fields using javascript-->
       <script type="text/javascript">   
           function validation()
           {
               var password=document.getElementById("passw").value;
               var confirm_passw=document.getElementById("confirm_passw").value;
               var mobile=document.getElementById("mobile").value;
               var user=document.getElementById("loginid").value;
               if((password.length<8)||(password.length>12))
               {
                   document.getElementById('pswd').innerHTML="*password should be 8 to 12 character long and at least 1 digit and at least 1 special character and at least 1 uppercase and lowercase";
                   return false;
               }
               if(password!=confirm_passw)
               {
                   document.getElementById('con_pswd').innerHTML="*Please re-enter correct password";
                   return false;
               }
               if((user.length<=2) || (user.length>15))
                {
                    document.getElementById('username').innerHTML="*length should be in between 2 and 15";
                    return false;
                }
            
               if(mobile.length!=10)
               {
                   document.getElementById('mobile').innerHTML="*Mobile No Must be 10 digit number";
                   return false;
               }
          }
      </script>
      <!--end of javascript-->
      <!--code to display message on page after adding new admin -->
      <% 
          String msg=(String)request.getAttribute("message");
          if(msg=="true")
          {%>
            <script type="text/javascript"> 
             $("#message").addClass("disp");
             setTimeout(()=>{
             $("#message").removeClass("disp");
            },3000); 
            </script>
         <%}
      %>
    </body>  
</html>
