<%-- 
    Document   : user_nav_bar
    Created on : 01-Nov-2020, 3:21:32 pm
    Author     : Shree
--%>

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
    <!--SEARCH BAR INSIDE NAV-->
        <form class="form-inline col-lg-5" >
          <input class="form-control" type="search" placeholder="Search for category..." aria-label="Search" style="width:70%">
          <button class="btn btn-outline-success" type="submit">
             <i class="fa fa-search" aria-hidden="true"></i>
         </button>
        </form>
        <!--LOGIN AND REGISTER SECTION-->
        <div class="navbar-nav navbar-right">
          <li class="navbar-nav mt-2 mt-sm-0">&nbsp;
             <a class="nav-link" href="#!" data-toggle="modal" data-target="#cart"><i class="fa fa-cart-plus" style="font-size:25px;color:white;"></i><span class="ml-2 cart-items" style="font-size:19px;color:white;">( 0 )</span></a>
          </li>
         <li  class="navbar-nav mt-2 mt-sm-0">
              <form class="form-inline" action="login.jsp">
                <!--button type="submit">Click me</button-->
            &nbsp;<button type="submit" class="btn btn-primary">
                 <i class="fa fa-sign-in"></i>&nbsp;LOGIN&nbsp;
                 </button>
              </form>
          </li>
          <li class="navbar-nav mt-2 mt-sm-0">&nbsp;
              <form class="form-inline" action="customer_register.jsp">
             <button type="submit" class="btn btn-warning">REGISTER HERE
             <i class="fa fa-hand-o-left"></i>
             </button>
         </form>
          </li>
     </div>
    </nav>
