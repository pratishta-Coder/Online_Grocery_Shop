<%-- 
    Document   : Addproduct_Form
    Created on : 19-Oct-2020, 9:28:26 pm
    Author     : Shree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="common/bootstrap_cdn.jsp"%> 
    </head>
    <body style="background-color:darkseagreen;">
    <header>
        <%@include file="common/nav_bar.jsp"%>
    </header>
     <br><br>
     <div class="container">
     <div class="row">
     <div class="col-lg-7 col-md-10 col-sm-10 col-10 d-block mx-auto">
     <div class="card border-2">
     <div class="card-header bg-info" style="color:white;">
            <center>Add New Product Form</center>
     </div>
     <div class="card-body">
         <form class ="inner-group"  method="post" action="AddProductServlet" enctype="multipart/form-data">
            <!--<table border="0">-->
            <div class="form-group">
            <label>Category Name</label>
            <select name="category" class="col-lg-12 col-12">
            <%
                Connection con=null;
                ResultSet rs=null;
                Statement pt=null;
                try{
                   Class.forName("com.mysql.jdbc.Driver");
                   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
                   pt=con.createStatement();
                   rs=pt.executeQuery("select * from category");
                   String category="";
                   while(rs.next())
                   {%>
                   <option><%=rs.getString(1)%></option>  
               <% }
                }
                catch(Exception e)
                {
                   out.println(e);
                }
                %> 
               </select>
               </div>
                <div class="form-group">
                    <label>Product Name</label>
                    <input type="text" class="form-control" name="product" size="50" placeholder="Enter the Product Name..."required/>
                </div>
                <div class="form-group">
                    <label>Available Quantity</label>
                    <input type="number" class="form-control" name="quantity" size="50" placeholder="Enter the Quantity..."required/>
                </div>
                <div class="form-group">
                    <label>Unit</label>
                    <select name="unit" class="col-lg-12 col-12">
                         <option value="kg">kg</option>
                         <option value="gm">gm</option>
                         <option value="liter">liter</option>
                         <option vale="ml">ml</option>
                         <option value="pc">pc</option>
                         <option value="pcs">pcs</option>
                         <option value="bottels">bottles</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Price</label>
                    <input type="number" class="form-control" name="price" size="50" placeholder="Enter the price per unit..."required/>
                 </div>
              
                <div class="form-group">
                    <label>Description</label>
                    <input type="text" class="form-control" name="description" size="50" placeholder="Enter its Description..."required/>
                </div> 
                <div class="form-group">
                    <label>Image</label> 
                    <input type="file" class="form-control" name="photo" size="50" required/>
                </div>                  
               <center>
               <a href="AddProduct.jsp" class="btn btn-outline-success">Back</a>&nbsp;&nbsp;&nbsp;&nbsp;
               <button type="submit" class="btn btn-success" value="submit" name="product_add">Save</button>
             </center>  
           <!--</table>-->
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
      try{
          String msg=request.getParameter("message");
          if(msg.equals("true"))
          {%>
            <script type="text/javascript"> 
                alert("New product added successfully!!!");
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
       }%>
        
     <!--code to display message on page after adding new product -->     
   </body>
</html>
