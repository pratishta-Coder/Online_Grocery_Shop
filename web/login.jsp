<%-- 
    Document   : Registration
    Created on : 29-Sep-2020, 4:04:21 pm
    Author     : RADHIII
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="style.css">
        <%@include file="common/bootstrap_cdn.jsp"%>
    </head> 
    <body class="backbody">
        <div class="container-fluid bg">
            <div class="row">
                <div class="col-md-4 col-sm-4 col-xs-12"></div>
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <form action="logindata.jsp" method="POST" id="log">
                        <h1 class="text-black text-center" style="margin-top: -30px;">Login Form</h1>
                        <img class="rounded mx-auto d-block img" style="width:150px;" src="img/l2.gif">
                        <div class="form-group">
                            <!--label class="text-white">Username:</label-->
                            <input type="text" class="form-control" name="username" placeholder="LOGIN ID" required/>
                        </div>
                        <div class="form-group">
                            <!--label class="text-white">Password:</label-->
                            <input type="password" class="form-control" name="password" placeholder="PASSWORD" required/>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Login
                            
                        </button>
                        
                        <div class="col-12 forgot">
                        <a href="ForgotPassword.jsp">Forget password?</a> 
                    </div>
                    </form>
                </div>
                <div class="col-md-4 col-sm-4 col-xs-12"></div>      
            </div>     
        </div>
         <% 
          try{
          String msg=request.getParameter("message");
          if(msg.equals("true"))
          {%>
            <script type="text/javascript"> 
                alert("Password Updated Successfully!!!");
            </script>
         <%}   
           else
            {%>
               <script type="text/javascript"> 
                alert("Error occured!Username or Password mismatched!");
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
