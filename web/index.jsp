<%-- 
    Document   : index
    Created on : 24-Sep-2020, 4:03:46 pm
    Author     : Shree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style.css">
        <%@include file="common/bootstrap_cdn.jsp"%>
    </head>
    <body>
    <header>
     <!--STARTING OF NAV BAR-->
        <nav class="navbar navbar-expand-lg navbar-light bg-dark">
        <a class="navbar-brand text-warning font-weight-bold" href="#">Online Grocery Store</a>
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item active">
                <a class="nav-link text-white " href="#">HOME <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white">PRODUCT</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white" href="#">CONTACT</a>
            </li>
        </ul>
    <!--SEARCH BAR INSIDE NAV-->
        <form class="form-inline" >
            <input class="form-control" type="search" placeholder="Search" aria-label="Search">&nbsp;
            <button class="btn btn-outline-success" type="submit">
            <i class="fa fa-search" aria-hidden="true"></i>
            </button>
        </form>
        <!--LOGIN AND REGISTER SECTION-->
        <div class="navbar-nav navbar-right">
         <li>
              <form class="form-inline" action="login.jsp">
                <!--button type="submit">Click me</button-->
            &nbsp;<button type="submit" class="btn btn-primary">
                 <i class="fa fa-sign-in"></i>&nbsp;LOGIN&nbsp;
                    </button>
              </form>
         </li>
         <form class="form-inline" action="Registration.jsp">
         <li class="navbar-nav mr-auto mt-2 mt-sm-0">&nbsp;
             <button type="submit" class="btn btn-warning">REGISTER HERE
             <i class="fa fa-hand-o-left"></i>
             </button>
         </form>>
         </li>
     </div>
    </nav>
   <!--ENDING OF NAV BAR-->
    </header>
    <!--BOOTSTRAP CAROUSEL SECTION-->
      <div id="myslideshow" class="carousel slide" data-ride="carousel">
           <!--adding of indicators to jump to any image in carousel-->
            <ol class="carousel-indicators">
                <li class="active" data-target="#myslideshow" data-slide-to="0"></li>
                <li data-target="#myslideshow" data-slide-to="1"></li>
                <li data-target="#myslideshow" data-slide-to="2"></li>
                <li data-target="#myslideshow" data-slide-to="3"></li>
            </ol>
           <!--ending of indicators-->
            <div class="carousel-inner">
                <div class="carousel-item active"> <!--one item in carousel should be activated till it not display the items
                                                       in carousel-->
                 <img src="img/gr2.jpg" class="d-block w-100" height="300">
                   <div class="carousel-caption">
                       <h3>Ayurveda</h3>
                       <p>Most trusted item!</p>
                   </div>
                 </div>
                 <div class="carousel-item">
                  <img src="img/gr4.jpg" class="d-block w-100" height="300">
                   <div class="carousel-caption">
                       <h3>Dairy Products</h3>
                       <p>Immunity Booster!</p>
                   </div>
                 </div>
                 <div class="carousel-item">
                   <img src="img/gr3.jpg" class="d-block w-100" height="300">
                    <div class="carousel-caption">
                        <h3>Fresh fruits and Vegies</h3>
                       <p>Immunity Booster!</p>
                   </div>
                </div>
                 <div class="carousel-item">
                   <img src="img/gr1.jpg" class="d-block w-100" height="300">
                   <div class="carousel-caption">
                       <h3>Dairy Products</h3>
                       <p>Immunity Booster!</p>
                   </div>
                 </div>
           </div>
           <!--Adding previous and next button in carousel-->
           <a href="#myslideshow" class="carousel-control-prev" role="button" data-slide="prev">
           <span class="carousel-control-prev-icon"></span>
           <span class="sr-only">Previous</span>
           </a>
           <a href="#myslideshow" class="carousel-control-next" role="button" data-slide="next">
           <span class="carousel-control-next-icon"></span>
           <span class="sr-only">Next</span>
           </a>
           <!--ending of previous and next button in carousel-->
       </div>
         <!--end bootstrap carousel-->   
     <form action="art.jsp" method="post">
       <div class="container main">
        <center><h2><b>Categories</b></h2></center><br>
        <div class="row">   
            <div class="col-lg-3 col-md-3 col-sm-12 col-10 d-block m-auto"> 
            <a href="art.jsp">
            <div class="card">
                <img class="card-img-top" src="img/studio.jpg">
                <div class="card-body">
                    <h3 class="card-title">Art</h3>
                </div>
            </div>
            </a>
           </div>
           <div class="col-lg-3 col-md-3 col-sm-12 col-10 d-block m-auto"> 
            <a href="#">
                <div class="card">
                    <img class="card-img-top" src="img/c2.jpg">
                    <div class="card-body">
                      <h3 class="card-title">Business & Economies</h3>
                    </div>
                </div>
            </a>
           </div>
            <div class="col-lg-3 col-md-3 col-sm-12 col-10 d-block m-auto">
             <a href="#">
                <div class="card">
                    <img class="card-img-top" src="img/c2.jpg">
                    <div class="card-body">
                      <h3 class="card-title">Travelling</h3>
                    </div>
                </div>
            </a>
            </div>
           </div>
            <br><br>
         <div class="row">
           <div class="col-lg-3 col-md-3 col-sm-12 col-10 d-block m-auto">
            <a href="#">
            <div class="card">
                <img class="card-img-top" src="img/studio.jpg">
                <div class="card-body">
                    <h3 class="card-title">Crafts & Hobies</h3>
                </div>
            </div>
            </a>
           </div>
           <div class="col-lg-3 col-md-3 col-sm-12 col-10 d-block m-auto"> 
            <a href="#">
                <div class="card">
                    <img class="card-img-top" src="img/c2.jpg">
                    <div class="card-body">
                      <h3 class="card-title">Fairy Tailes</h3>
                    </div>
                </div>
            </a>
           </div>
            <div class="col-lg-3 col-md-3 col-sm-12 col-10 d-block m-auto">
             <a href="#">
                <div class="card">
                    <img class="card-img-top" src="img/c2.jpg">
                    <div class="card-body">
                      <h3 class="card-title">Humanities</h3>
                    </div>
                </div>
            </a>
           </div>
         </div>
        <br><br>
        <div class="row">
           <div class="col-lg-3 col-md-3 col-sm-12 col-10 d-block m-auto">
            <a href="#">
            <div class="card">
                <img class="card-img-top" src="img/studio.jpg">
                <div class="card-body">
                    <h3 class="card-title">Social Sciences</h3>
                </div>
            </div>
            </a>
           </div>
           <div class="col-lg-3 col-md-3 col-sm-12 col-10 d-block m-auto"> 
            <a href="#">
                <div class="card">
                    <img class="card-img-top" src="img/c2.jpg">
                    <div class="card-body">
                      <h3 class="card-title">Medicine</h3>
                    </div>
                </div>
            </a>
           </div>
            <div class="col-lg-3 col-md-3 col-sm-12 col-10 d-block m-auto">
             <a href="#">
                <div class="card">
                    <img class="card-img" src="img/c2.jpg">
                    <div class="card-body">
                      <h3 class="card-title">Action & Adventure</h3>
                    </div>
                </div>
             </a>
            </div>
          </div>
        </div>
         </form>
       </section>

       <!--ending categories section-->
   </body>
</html>
