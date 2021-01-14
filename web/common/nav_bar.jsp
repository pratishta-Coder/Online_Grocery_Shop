<%-- 
    Document   : nav_bar
    Created on : 02-Oct-2020, 2:44:51 pm
    Author     : Shree
--%>
<nav class="navbar navbar-expand-lg navbar-light bg-dark">
        <a class="navbar-brand text-warning font-weight-bold" href="#">Online Grocery Store</a>
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item active">
                <a class="nav-link text-white " href="index.jsp">HOME&nbsp;<span class="sr-only">(current)</span></a>
            </li>
             <li class="nav-item active">
                <a class="nav-link text-white " href="Dashboard.jsp">DASHBOARD&nbsp;<span class="sr-only">(current)</span></a>
            </li>
             <li class="nav-item active">
                <a class="nav-link text-white " href="Add_Addmin.jsp">ADD ADMIN&nbsp;<span class="sr-only">(current)</span></a>
            </li>
             <li class="nav-item active">
                <a class="nav-link text-white " href="add_category.jsp">CATEGORY&nbsp;<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white" href="AddProduct.jsp">PRODUCT</a>
            </li>
        </ul>
    <!--SEARCH SECTION-->
    
      <!--  <form class="form-inline" >
            <input class="form-control" type="search" placeholder="Search" aria-label="Search">&nbsp;
            <button class="btn btn-outline-success" type="submit">
            <i class="fa fa-search" aria-hidden="true"></i>
            </button>
        </form>-->
        <!--LOGIN AND REGISTER SECTION-->
       
         <form class="form-inline" action="index.jsp">
         <li class="navbar-nav mr-auto mt-2 mt-sm-0">&nbsp;
             <button type="submit" class="btn btn-warning">Logout
             <i class="fa fa-hand-o-left"></i>
             </button>
         </form>>
         </li>
     </div>
    </nav>
        <!--ENDING OF NAV BAR-->
