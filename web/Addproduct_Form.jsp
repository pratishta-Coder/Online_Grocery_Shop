<%-- 
    Document   : Addproduct_Form
    Created on : 19-Oct-2020, 9:28:26 pm
    Author     : Shree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <%@include file="common/bootstrap_cdn.jsp"%>
        <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>-->
    </head>
    <body>
        <header>
           <%@include file="common/nav_bar.jsp"%>
        </header>
        <br><br>
     <div class="container">
     <div class="row">
     <div class="col-lg-8 col-md-10 col-sm-10 col-10 d-block">
       <div class="card">
       <div class="card-header bg-primary" style="color:white;">
             <center>Add New Product Form</center>
       </div>
        <div class="card-body">
         <form class ="inner-group"  method="post" action="./AddProductServlet" enctype="multipart/form-data">
            <!--<table border="0">-->
                <div class="form-group">
                    <label>Category Name</label>
                    <input type="text" class="form-control" name="firstName" size="50" placeholder="Enter the Category Name..."required/>
                </div> 
                 <div class="form-group">
                    <label>Product Name</label>
                    <input type="text" class="form-control" name="product" size="50" placeholder="Enter the Product Name..."required/>
                </div>
                <div class="form-group">
                    <label>Available Quantity</label>
                    <input type="text" class="form-control" name="quantity" size="50" placeholder="Enter the Quantity..."required/>
                </div>
                <div class="form-group">
                    <label>Unit</label>
                    <div>
                    <select name="unit" id="">
                         <option value="kg">kilogram</option>
                         <option value="g">gram</option>
                         <option value="l">litre</option>
                         <option vale="ml">mililitre</option>
                         <option value="pc">pc</option>
                         <option value="pcs">pcs</option>
                    </select>
                    </div>
                </div>
                <div class="form-group">
                    <label>price</label>
                    <input type="text" class="form-control" name="price" size="50" placeholder="Enter the price..."required/>
                 </div>
                <div class="form-group">
                    <label>Description</label>
                    <input type="text" class="form-control" name="description" size="50" placeholder="Enter its Description..."required/>
                </div> 
                <div class="form-group">
                    <label>Image</label> 
                    <input type="file" class="form-control" name="photo" size="50" required/>
                </div>                  
               <center><button type="submit" class="btn btn-success" value="submit" name="product_add" id="displaymsg">Save</button></center>  
           <!-- </table>-->
         </form>
        </div> 
       </div>
      </div>
     </div>
    </div>
    </body>
</html>
