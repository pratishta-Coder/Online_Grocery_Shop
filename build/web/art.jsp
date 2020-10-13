<%-- 
    Document   : art
    Created on : 28-Sep-2020, 8:52:54 am
    Author     : Shree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="style.css">
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
       <!-- jQuery library -->
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
       <!-- Popper JS -->
       <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
       <!-- Latest compiled JavaScript -->
       <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
       <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
       <!--Bootstrap nav-bar-->
     <nav class ="navbar navbar-expand-md bg-dark navbar-dark">
          <div class="container-fluid">
            <a href="" class="navbar-brand text-warning font-weight-bold">
             Online Book Store</a>
             <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsenavbar">
                <span class="navbar-toggler-icon"></span>
             </button>
             <div class="collapse navbar-collapse text-center" id="collapsenavbar">
               <ul class="navbar-nav ml-auto">
                 <li class="nav-item">
                 <a href="index.jsp" class="nav-link text-white">HOME</a>
                 </li>
                 <li class="nav-item">
                  <a href="#" class="nav-link text-white">&nbsp;&nbsp;LOGIN</a>
                 </li>
                 <li class="nav-item">
                 <a href="#" class="nav-link text-white">&nbsp;&nbsp;CONTACT US</a>
                  </li>
                 <li class="nav-item">
                 <a href="#" class="nav-link text-white">&nbsp;&nbsp;TEAM</a>
                 </li>
                </ul>
             </div>  
          </div>
      </nav>
      <div id="mynav">
          <div>
           <button class="menulines" onclick="openNav()">
              <i class="fa fa-bars" aria-hidden="true"></i>
           </button>
          </div>
           <div class="category"> 
             ART
          </div>
           <form>  
          <div class="input-group">
             <input type="text" class="form-control" placeholder="Search for categories..." name="search"> 
             <button class="btn btn-success" type="submit">
                    <i class="fa fa-search" aria-hidden="true"></i>
             </button>
          </div>
        </form>
      </div>
       <div class="sidenav" id="mysidenav">
           <span class="label"><b>Categories</b>&nbsp;&nbsp;</span>
         <a href="javascript:void(0)" class="closebtn" onclick="closenav()">
              <button class="btn" type="submit">
                 <i class="fa fa-times" aria-hidden="true"></i>
             </button>
         </a>
       
          <a href="#" id="t">
            Art
         </a>
           <a href="#" id="t">
           Business & Economies
         </a> 
            <a href="#" id="t">
            Travelling
         </a>
            <a href="#" id="t">
            Crafts & Hobies
         </a>
            <a href="#" id="t">
           Fairy Tailes
         </a>
          <a href="#" id="t">
            Humanities
         </a>
       </div>
       <section class="Categories">
           <div class="container">
               <div class="row">
                   <div class="col-lg-2 col-md-2 col-sm-10 col-10 d-block m-auto">
                     <a href="#">
                       <div class="card">
                         <img class="card-img-top" src="img/studio.jpg">
                          <div class="card-body">
                           <h5 class="card-title">Art</h5>
                         </div>
                    </div>
                   </a>
               </div>
                  <div class="col-lg-2 col-md-2 col-sm-10 col-10 d-block m-auto">
                     <a href="#">
                       <div class="card">
                         <img class="card-img-top" src="img/studio.jpg">
                          <div class="card-body">
                           <h5 class="card-title">Art</h5>
                         </div>
                    </div>
                   </a>
               </div>
                <div class="col-lg-2 col-md-2 col-sm-10 col-10 d-block m-auto">
                     <a href="#">
                       <div class="card">
                         <img class="card-img-top" src="img/studio.jpg">
                          <div class="card-body">
                           <h5 class="card-title">Art</h5>
                         </div>
                    </div>
                   </a>
                </div>
            <div class="col-lg-2 col-md-2 col-sm-10 col-10 d-block m-auto">
             <a href="#">
                <div class="card">
                    <img src="img/c2.jpg">
                </div>
             </a>
            </div>
       </section>
      <!--ending bootstrap nav-bar-->
      <script>
          function closenav()
          {
              document.getElementById();
         }
    </body>
</html>
