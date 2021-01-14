<%-- 
    Document   : Dashboard
    Created on : 25-Nov-2020, 11:20:20 am
    Author     : Shree
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="style.css"> 
    <%@include file="common/bootstrap_cdn.jsp"%>
    <!--bootstrap font awesome cdn-->
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script type="text/javascript" src="js/script.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
       <!------ Include the above in your HEAD tag ---------->
    </head>
    <script type="text/javascript" src="js/script.js"></script>
    <body>
     <%@include file="Admin_Count.jsp"%> 
     <%@include file="Category_Count.jsp"%> 
     <%@include file="Customer_Count.jsp"%> 
     <%@include file="Sell_Count.jsp"%>
     <%@include file="TotalProduct_Count.jsp"%>
     <%@include file="TotalProduct_Sold.jsp"%>
     <header>
       <%@include file="common/nav_bar.jsp"%>  <!--including nav-bar here-->
     </header>
      <section style="margin-top:10px;">
         <center><h3>Welcome Admin!</h3></center>
      </section> 
      <div class="container-fluid">
      <div class="row mt-3">
      <div class="col-lg-3">
        <div class="panel panel-info">
          <div class="panel-heading">
            <div class="row">
              <div class="col-xs-6">
                <i class="fa fa-user-circle fa-5x"></i>
              </div>
              <div class="col-xs-6 text-right">
                <p class="announcement-heading" style="font-size:16px"><%=count%></p>
                <p class="announcement-text" style="font-size:16px">Admins</p>
              </div>
            </div>
          </div>
          <a href="adminprofile.jsp">
            <div class="panel-footer announcement-bottom">
              <div class="row">
                <div class="col-xs-6">
                  Expand
                </div>
                <div class="col-xs-6 text-right">
                  <i class="fa fa-arrow-circle-right"></i>
                </div>
              </div>
            </div>
          </a>
        </div>
      </div>
       <div class="col-lg-3">
        <div class="panel panel-warning">
          <div class="panel-heading">
            <div class="row">
              <div class="col-xs-6">
                <i class="fa fa-list fa-5x"></i>
              </div>
              <div class="col-xs-6 text-right">
                <p class="announcement-heading" style="font-size:16px;"><%=count4%></p>
                <p class="announcement-text" style="font-size:16px;">Categories</p>
              </div>
            </div>
          </div>
          <a href="category_info.jsp">
            <div class="panel-footer announcement-bottom">
              <div class="row">
                <div class="col-xs-6">
                  Expand
                </div>
                <div class="col-xs-6 text-right">
                  <i class="fa fa-arrow-circle-right"></i>
                </div>
              </div>
            </div>
          </a>
        </div>
      </div>
      <div class="col-lg-3">
        <div class="panel panel-success">
          <div class="panel-heading">
            <div class="row">
              <div class="col-xs-6">
                <i class="fa fa-barcode fa-5x"></i>
              </div>
              <div class="col-xs-6 text-right">
                <p class="announcement-heading" style="font-size:16px;"><%=total%></p>
                <p class="announcement-text" style="font-size:16px;">Products</p>
              </div>
            </div>
          </div>
          <a href="product_info.jsp">
            <div class="panel-footer announcement-bottom">
              <div class="row">
                <div class="col-xs-6">
                  Expand
                </div>
                <div class="col-xs-6 text-right">
                  <i class="fa fa-arrow-circle-right"></i>
                </div>
              </div>
            </div>
          </a>
        </div>
      </div>
      <div class="col-lg-3">
        <div class="panel panel-danger">
          <div class="panel-heading">
            <div class="row">
              <div class="col-xs-6">
                <i class="fa fa-users fa-5x"></i>
              </div>
              <div class="col-xs-6 text-right">
                <p class="announcement-heading" style="font-size:16px;"><%=count1%></p>
                <p class="announcement-text" style="font-size:16px;">Customers</p>
              </div>
            </div>
          </div>
          <a href="Customer_Info.jsp">
            <div class="panel-footer announcement-bottom">
              <div class="row">
                <div class="col-xs-6">
                  Expand
                </div>
                <div class="col-xs-6 text-right">
                  <i class="fa fa-arrow-circle-right"></i>
                </div>
              </div>
            </div>
          </a>
        </div>
      </div>
      <div class="col-lg-3">
        <div class="panel panel-success">
          <div class="panel-heading">
            <div class="row">
              <div class="col-xs-6">
                <i class="fa fa-shopping-cart fa-5x"></i>
              </div>
              <div class="col-xs-6 text-right">
                <p class="announcement-heading" style="font-size:16px"><%=count3%></p>
                <p class="announcement-text" style="font-size:16px">Today's Product Sold</p>
              </div>
            </div>
          </div>
          <a href="TodayProduct_Sold.jsp">
            <div class="panel-footer announcement-bottom">
              <div class="row">
                <div class="col-xs-6">
                  Expand
                </div>
                <div class="col-xs-6 text-right">
                  <i class="fa fa-arrow-circle-right"></i>
                </div>
              </div>
            </div>
          </a>
        </div>
      </div>
      <div class="col-lg-3">
          <div class="panel panel-danger">
          <div class="panel-heading">
            <div class="row">
              <div class="col-xs-6">
                <i class="fa fa-inr fa-5x"></i>
              </div>
              <div class="col-xs-6 text-right">
                <p class="announcement-heading" style="font-size:16px"><%=sell_price%>&#8377;</p>
                <p class="announcement-text" style="font-size:16px">Today's Profit</p>
              </div>
            </div>
          </div>
          <a href="Todays_profit.jsp">
            <div class="panel-footer announcement-bottom">
              <div class="row">
                <div class="col-xs-6">
                  Expand
                </div>
                <div class="col-xs-6 text-right">
                  <i class="fa fa-arrow-circle-right"></i>
                </div>
              </div>
            </div>
          </a>
        </div>
      </div> 
     <div class="col-lg-3">
          <div class="panel panel-info">
          <div class="panel-heading">
            <div class="row">
              <div class="col-xs-6">
                <i class="fa fa-cart-plus fa-5x"></i>
              </div>
              <div class="col-xs-6 text-right">
                <p class="announcement-heading" style="font-size:16px"><%=count5%></p>
                <p class="announcement-text" style="font-size:16px">Total Product Sold</p>
              </div>
            </div>
          </div>
          <a href="sell_history.jsp">
            <div class="panel-footer announcement-bottom">
              <div class="row">
                <div class="col-xs-6">
                  Expand
                </div>
                <div class="col-xs-6 text-right">
                  <i class="fa fa-arrow-circle-right"></i>
                </div>
              </div>
            </div>
          </a>
        </div>
     </div>
    <div class="col-lg-3">
          <div class="panel panel-warning">
          <div class="panel-heading">
            <div class="row">
              <div class="col-xs-6">
                <i class="fa fa-money fa-5x"></i>
              </div>
              <div class="col-xs-6 text-right">
                <p class="announcement-heading" style="font-size:16px"><%=totalsell%>&#8377;</p>
                <p class="announcement-text" style="font-size:16px">Total Profit</p>
              </div>
            </div>
          </div>
          <a href="Total_Profit.jsp">
            <div class="panel-footer announcement-bottom">
              <div class="row">
                <div class="col-xs-6">
                  Expand
                </div>
                <div class="col-xs-6 text-right">
                  <i class="fa fa-arrow-circle-right"></i>
                </div>
              </div>
            </div>
          </a>
        </div>
      </div>
    </div>
    </div><!-- /.row --> 
    <br><br><br><br><br>
       <footer>
           <%@include file="footer.jsp"%>     
       </footer>        
    </body>
</html>
