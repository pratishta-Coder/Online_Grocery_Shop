<%-- 
    Document   : AddCategory_Form
    Created on : 02-Oct-2020, 1:42:18 pm
    Author     : Shree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <%@include file="common/bootstrap_cdn.jsp"%>
        <title>JSP Page</title>
    </head>
    <body>
    <header>
          <%@include file="common/nav_bar.jsp"%>
    </header>
    <br>    
    <div class="container">
     <div class="row">
       <div class="col-lg-8 col-md-10 col-sm-10 col-10 d-block">
       <div class="card">
          <div class="card-header bg-primary" style="color:white;">
             <center>Add New Category Form</center>
          </div>
        <div class="card-body">
        <form class ="inner-group"  method="post" action="./AddCategoryServlet" enctype="multipart/form-data">
            <table border="0">
                <div class="form-group">
                    <label>Category Name</label>
                    <input type="text" class="form-control" name="firstName" size="50" placeholder="Enter the Category Name"required/>
                </div> 
                <div class="form-group">
                    <label>Description</label>
                    <input type="text" class="form-control" name="lastName" size="50" placeholder="Enter its Description"required/>
                </div> 
                <div class="form-group">
                    <label>Image</label> 
                    <input type="file" class="form-control" name="photo" size="50" required/>
                </div>                  
               <center><button type="submit" class="btn btn-success" value="submit" name="category_add">Save</button></center>  
            </table>
         </form>
         </div>
       </div>
      </div>
     </div>
    </div>
   </body>
</html>
