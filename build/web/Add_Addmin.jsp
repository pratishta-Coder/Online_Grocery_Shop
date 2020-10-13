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
        <link rel="stylesheet" href="style.css">
        <%@include file="common/bootstrap_cdn.jsp"%>
    </head>
    <body>
        <header>
          <%@include file="common/nav_bar.jsp"%>
       </header>
       <br>
       <section class="category">
           <center><h3>Add ADMIN</h3></center>
        </section><br>
         <!--start of container-->
          <div class="container">
            <div class="row">
            <div class="col-lg-8 col-md-10 col-sm-10 col-10"> 
            <!--starting of card-->
            <div class="card">
            <div class="card-header bg-primary" style="color:white"><center>ADD NEW ADMIN FORM</center></div>
            <div class="card-body">
             <!--form inside card to add new admin-->
             <form class="inner-group" method="POST" action="NewAdmin.jsp">
                <div class="form-group">
                    <label for=firstN">First Name</label>
                    <input type="text"  class="form-control" name="firstname" placeholder="Enter the firstname..."required/>
               </div>
                <div class="form-group">
                    <label for="lastN">Last Name</label>
                    <input type="text" class="form-control" name="lastname" placeholder="Enter the lastname..." required/>
                </div>
                <div class="form-group">
                    <label for="Login_id">Login ID</label>
                    <input type="text" class="form-control" name="login_id" placeholder="Enter the Login ID eg.xyzp@12..." required/>   
                </div>
                <div class="form-group">
                    <label for="Password">Password</label>
                    <input type="password" class="form-control" name="password" placeholder="Enter the password of 8 to 12 character..." required/>
                    
                </div>
                <div class="form-group">
                    <label for="Confirm password">Confirm Password</label>
                    <input type="password" class="form-control" name="confirm_pass" placeholder="Re-enter the password..." required/>
                </div>
               <div class="form-group">
                   <label for="Mobile No">Mobile No</label>
                   <input type="number" class="form-control" name="mobile_no" placeholder="Enter the mobile no of 10 digit..." required/>
               </div>
                <div class="form-group">
                    <label for="">Email</label>
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
       <!--end of container-->
    </body>  
</html>
