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
    <!--javascript function for form validation-->
    <script type="text/javascript">
      function data_validate()
      {
        var phone = document.forms["RegForm"]["mobile_no"];
        var password = document.forms["RegForm"]["password1"]; 
        var conpass = document.forms["RegForm"]["confirm_pass"]; 
      
   
        if (phone.value.length>10 || phone.value.length<10) { 
           document.getElementById('mobile').innerHTML = "**Mobile no length must be atleast 10 digits";  
            return false; 
        } 
         if(password.value.length < 8 || password.value.length>15) {  
            document.getElementById('pswd').innerHTML = "**Password length must be 8 characters to 15 characters and it should contain 1 digit and special symbol";  
             return false;  
        } 
       
        if(password.value!=conpass.value)
        {
           document.getElementById('con_pswd').innerHTML="**Should same to password ";
          return false;    
        }    
    } 
  </script>
    <body style="background-color:lightsteelblue;">
        <header>
          <%@include file="common/nav_bar.jsp"%>  <!--including nav-bar here-->
        </header>
        <br>
        <section class="category">
           <center><h3>Add Admin</h3></center>
        </section>
         <!--start of container
         <div id="message"><center>New Admin added successfully!!!</center></div>-->
          <div class="container py-3">
           <div class="row">
            <div class="col-lg-7 col-md-10 col-sm-10 col-10 d-block mx-auto mt-1"> 
            <!--starting of card-->
            <div class="card">
            <div class="card-header bg-success" style="color:white"><center>ADD NEW ADMIN FORM</center></div>
            <div class="card-body">
             <!--form inside card to add new admin-->
             <form class="inner-group" method="POST" action="NewAdmin.jsp" name="RegForm" onsubmit="return data_validate();">
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
                   <input type="text" class="form-control" name="mobile_no" placeholder="Enter the mobile no of 10 digit..." required/>
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
       <br><br>
        <footer>
           <%@include file="footer.jsp"%>     
       </footer>
       
           <!--code to display message on page after adding new admin -->
      <% 
          try{
          String msg=request.getParameter("message");
          if(msg.equals("true"))
          {%>
            <script type="text/javascript"> 
                alert("New admin added successfully!!!");
            </script>
         <%}   
           else
            {%>
               <script type="text/javascript"> 
                alert("Error occured!");
              </script>
           <% }
        }
       catch(Exception e)
       {
          e.printStackTrace();
       }
     %>
    </body>  
</html>
