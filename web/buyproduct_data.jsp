<%-- 
    Document   : buyproduct_data
    Created on : 21-Nov-2020, 7:03:51 pm
    Author     : Shree
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" type="text/css" href="style.css">
        <%@include file="common/bootstrap_cdn.jsp"%>
    </head>
    <script type="text/javascript">
                    $(document).ready(function(){
                        $("#quantity").keyup(function(){
                           int quan=$(this).val();
                           int avail=$("#available_quan").val();
                           if(quan>avail){
                               showtoast("That much quantity is not available in stock");  
                           }  
                        
                        });
                    });
             </script>    
    <body>
     
          <%@include file="common_cart.jsp"%>
       <header>     
        <nav class="navbar navbar-expand-lg navbar-light bg-dark">
        <a class="navbar-brand text-warning font-weight-bold" href="#">Online Grocery Store</a>
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item active">
                <a class="nav-link text-white " href="index.jsp">HOME <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white" href="user_product.jsp">PRODUCT</a>
            </li>   
        </ul>
       
        <!--LOGIN AND REGISTER SECTION-->
        <div class="navbar-nav navbar-right">
         <li class="navbar-nav mr-auto mt-2 mt-sm-0">&nbsp;
             <a class="nav-link" href="#!" data-toggle="modal" data-target="#cart"><i class="fa fa-cart-plus" style="font-size:25px;color:white;"></i><span class="ml-2 cart-items" style="font-size:19px;color:white;">( 0 )</span></a>
          </li>
         <li class="navbar-nav mr-auto mt-2 mt-sm-0">&nbsp;
              <form class="form-inline" action="customer_register.jsp">
             <button type="submit" class="btn btn-warning">REGISTER HERE
             <i class="fa fa-hand-o-left"></i>
             </button>
         </form>
        </li>   
       </div>
      </nav>
     </header>
       <%
           String name=request.getParameter("productname");
           //receive data from script.js page of productname and quantity in cart
           String quan=request.getParameter("productquan");
           String category="";
           String product_name="";
           String unit="";
           String desc="";
           int productprice=0;
           int productquantity=0;
           Connection con=null;
           Statement st=null;
           ResultSet rs=null;
           try{
               
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
                st=con.createStatement();
                rs=st.executeQuery("select * from product where Product_Name='"+name+"'");
                if(rs.next())
                {
                    category=rs.getString(1); 
                    product_name=rs.getString(2); 
                    unit=rs.getString(4);
                    productprice=rs.getInt(5);
                    desc=rs.getString(6); 
                    productquantity=rs.getInt(3);
                    
                }
                con.close();  
           }
           
           catch(Exception n){
               n.printStackTrace();
           }
      %>
      <br>
       <section class="category"  style="background:palevioletred;width:100%;height:80px;padding-top:20px;color:white;">
          <center><h3>Product Details</h3></center>
       </section>
       <br>
      <div class="container m-auto">
      <div class="row">
      <div class="col-lg-5 col-md-5 col-sm-10 col-10 d-block">  
       <div class="card">
      <img class="card-img-top categori" src="getimage_product.jsp?product=<%=product_name%>"> 
       </div>
      </div>
      <div class="col-lg-7 col-md-7 col-sm-10 col-10">
      <div class="card">
       <div class="card-body" style="background-color:#ccffff;">
       <form method="post" action="loginuser_form.jsp" >
              <div class="form-group">
                  <label><b>Category Name</b></label>
                    <input type="text" class="form-control" value="<%=category%>" name="category" readonly/>
                </div>
               <div class="form-group">
                   <label><b>Product Name</b></label>
                    <input type="text" class="form-control" value="<%=product_name%>" name="product"  readonly/>
                </div>
                <div class="form-group">
                    <label><b>Available Quantity</b></label>
                    <input type="number" class="form-control" id="available_quan" value="<%=productquantity%>" name="quantity" readonly/>
                </div>
                <div class="form-group">
                    <label><b>Required Quantity</b></label>
                    <input type="number" class="form-control" value="<%=quan%>" id="quantity" name="required_quan" readonly/>
                </div>
                <div class="form-group">
                    <label><b>Unit</b></label>
                   <input type="text" class="form-control" value="<%=unit%>" name="unit" readonly/>
                </div>
                  <div class="form-group">
                      <label><b>Description</b></label>
                    <input type="textarea" class="form-control" value="<%=desc%>" name="description"readonly/>
                </div> 
                <div class="form-group">
                    <label><b>Price per unit</b></label>
                    <input type="text" class="form-control" value="<%=productprice%>&#8377;" name="price"  readonly/>
              </div> 
              </div> 
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
  </body>
</html>

   
