<%-- 
    Document   : User_Bill
    Created on : 24-Nov-2020, 1:00:33 pm
    Author     : Shree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="common/bootstrap_cdn.jsp"%>
        <title>JSP Page</title>
    </head>
    <body style="background:captiontext;">
     <%
          String first=request.getParameter("firstname");
          String last=request.getParameter("lastname");
          String address=request.getParameter("address");
          String product=request.getParameter("product");
          String totalprice=request.getParameter("total_price");
          String quantity=request.getParameter("quantity");
          String unit=request.getParameter("unit");
          int quan=0;
          int total=0;
          try{
              total=Integer.parseInt(totalprice);
              quan=Integer.parseInt(quantity);
              
          }
          catch(Exception e)
          {
              e.printStackTrace();
          }
       %>          
       
      <div class="container py-3">
      <div class="row">
       <div class="col-lg-7 col-md-7 col-sm-10 col-10 mx-auto">
          <h4 style=color:#fff;">Your Bill-Thanku for Shopping!!!</h4>
       </div>
      </div>
       <div class="row">    
      <div class="col-lg-7 col-md-7 col-sm-10 col-10 mx-auto m-3">
      <div class="card">
       <div class="card-body" style="background-color:#ccffff">
           <form method="post" action="user_product.jsp">
              <div class="form-group">
                  <label><b>Customer Name</b></label>
                    <input type="text" class="form-control" value="<%=first%> <%=last%>" name="category" readonly/>
                </div>
               <div class="form-group">
                   <label><b>Customer Address</b></label>
                    <input type="text" class="form-control" value="<%=address%>" name="product"  readonly/>
                </div>
                <div class="form-group">
                    <label><b>Product Name</b></label>
                    <input type="text" class="form-control" value="<%=product%>" name="quantity" readonly/>
                </div>
                <div class="form-group">
                    <label><b>Quantity Ordered</b></label>
                    <input type="text" class="form-control" value="<%=quan%> <%=unit%>" name="required_quan" readonly/>
                </div>
                  <div class="form-group">
                      <label><b>Total Price</b></label>
                    <input type="text" class="form-control" value="<%=total%>&#8377;" readonly/>
                </div> 
                
            <center>
                <button type="submit" class="btn btn-success" name="buy">Continue Shopping</button>
           &nbsp;&nbsp;&nbsp;&nbsp;<a href="index.jsp" class="btn btn-primary" value="back">Logout</a></center>  
       </form>
       </div> 
       </div>
        </div> 
     </div>
    </div>
      <br><br>
    </body>
</html>
