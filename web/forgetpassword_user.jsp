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
    <body>
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
             <form class="inner-group " method="POST" action="forgetpass_connec_user.jsp">
                <div class="form-group">
                    <label for=firstN">Email</label>
                    <input type="email"  class="form-control" name="username" placeholder="Enter the email id.."required/>
               </div>
                
                <div class="form-group">
                    <label for="Password">Password</label>
                    <input type="password" class="form-control" name="password" placeholder="Enter the password of 8 to 12 character..." required/>
                    
                </div>
                <div class="form-group">
                    <label for="Confirm password">Confirm Password</label>
                    <input type="password" class="form-control" name="confirm_pass" placeholder="Re-enter the password..." required/>
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
  
</section>
<!--Section: Block Content-->
    </body>
</html>
