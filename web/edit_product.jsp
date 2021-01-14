<%-- 
    Document   : edit_product
    Created on : 26-Oct-2020, 6:04:13 pm
    Author     : Shree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="common/bootstrap_cdn.jsp"%>
    </head>
    <body style="background-color:darkseagreen;">
        <header>
        <%@include file="common/nav_bar.jsp"%>
    </header>
    
        <%
           String product=request.getParameter("product");
           Connection con=null;
           String desc="";
           String category="";
           int quantity=0;
           String unit="";
           int price=0;
           Blob img=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
            PreparedStatement pt=con.prepareStatement("select * from product where Product_Name=?");
            pt.setString(1,product);
            ResultSet rs=pt.executeQuery();
            if(rs.next())
            {
                category=rs.getString(1);
                product=rs.getString(2);
                quantity=rs.getInt(3);
                unit=rs.getString(4);
                price=rs.getInt(5);
                desc=rs.getString(6);
            }
            con.close();
        }
        catch(Exception e)
        {
          e.printStackTrace();
        }
        %>
          <br> 
          <div class="container">
           <div class="row">
             <div class="col-lg-7 col-md-10 col-sm-10 col-10 d-block mx-auto">
               <div class="card">
               <div class="card-header bg-primary" style="color:white;">
                     <center>Edit Product Form</center>
               </div>
             <div class="card-body">
                <form class ="inner-group"  method="post" action="./Update_Product" enctype="multipart/form-data">  
                  <div class="form-group">
                    <label>Category Name</label>
                    <input type="text" class="form-control" name="category" value="<%=category%>" size="50" placeholder="Enter the Category Name..."required/>
                   </div> 
              <div class="form-group">
                    <label>Product Name</label>
                    <input type="text" class="form-control" name="product" size="50" value="<%=product%>" placeholder="Enter the Product Name..."required/>
                    <input type="text" class="form-control" name="old_product" size="50" value="<%=product%>" placeholder="Enter the Product Name..." hidden="true"/>
                </div>
                <div class="form-group">
                    <label>Available Quantity</label>
                    <input type="number" class="form-control" name="quantity" size="50" value="<%=quantity%>" placeholder="Enter the Quantity..." required/>
                </div>
                <div class="form-group">
                    <label>Unit</label>
                    <div>
                        <select name="unit" value="<%=unit%>" class="col-lg-12 col-12">
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
                    <input type="number" class="form-control" value="<%=price%>" name="price" size="50" placeholder="Enter the price..."required/>
                 </div>
                <div class="form-group">
                    <label>Description</label>
                    <input type="text" class="form-control" name="description" size="50" value="<%=desc%>" placeholder="Enter its Description..."required/>
                </div> 
                <div class="form-group">
                    <label>Image</label> 
                    <input type="file" class="form-control" name="photo" size="50" required/>
                </div>
                <center><a href="AddProduct.jsp" class="btn btn-outline-success">Back</a>&nbsp;&nbsp;&nbsp;&nbsp; 
                <button type="submit" class="btn btn-success" value="submit" name="product_add" id="displaymsg">Edit</button></center>       
        </form>
        </div>
       </div>
      </div>
    </div>
   </div>  
    <br><br><br>
       <footer>
           <%@include file="footer.jsp"%>     
       </footer> 
        <%
              try{ 
               String msg=request.getParameter("message");
               if(msg.equals("true"))
               {%>
               <script type="text/javascript">
                   alert("Product Edited Successfully!!!");
                   </script>
              <% }
                else
                {%>
                <script type="text/javascript">
                    alert("Error Occured!");
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
 
    