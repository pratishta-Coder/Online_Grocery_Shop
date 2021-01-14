<%-- 
    Document   : ForgotPassword
    Created on : 20-Nov-2020, 12:41:47 pm
    Author     : RADHIII
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
    <body style="background-color:skyblue;">
      <header>
        <%@include file="common/nav_bar.jsp"%>
    </header>
       <section class="category" style="background:darksalmon;width:100%;height:80px;padding-top:20px">
           <center><h3>Forgot Password</h3></center>
        </section><br>
         <!--start of container-->
           <div class="container py-2">
            <div class="row">
            <div class="col-lg-8 col-md-10 col-sm-10 col-10 d-block mx-auto"> 
            <!--starting of card-->
            <div class="card">
            <div class="card-header bg-info" style="color:white"><center>FOR NEW PASSWORD</center></div>
            <div class="card-body">
             <!--form inside card to add new admin-->
             <form class="inner-group " method="POST" action="ForgotConnectivity.jsp" name="RegForm" onsubmit="return data_validate()">
                <div class="form-group">
                    <label for=firstN">Username</label>
                    <input type="text"  class="form-control" name="username" placeholder="Enter the username..."required/>
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
   <!--Section: Block Content-->
      <% 
          try{
          String msg=request.getParameter("message");
          if(msg.equals("false"))
          {%>
            <script type="text/javascript"> 
               alert("Username not found!");
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
