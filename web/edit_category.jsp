<%-- 
    Document   : edit_category
    Created on : 25-Oct-2020, 7:03:28 pm
    Author     : Shree
--%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    
    <br>  
        <%
           String category=request.getParameter("category");
           Connection con=null;
           String category_n="";
           String desc=""; 
          Blob img=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
            PreparedStatement pt=con.prepareStatement("select * from category where Category_Name=?");
            pt.setString(1,category);
            ResultSet rs=pt.executeQuery();
            if(rs.next())
            {
                category=rs.getString(1);
                desc=rs.getString(3);
                img=rs.getBlob(2);
            }
            con.close();
        }
        catch(Exception e)
        {
          e.printStackTrace();
        }
        %>
    <div class="container">
    <div class="row">
     <div class="col-lg-8 col-md-10 col-sm-10 col-10 d-block mx-auto">
       <div class="card">
       <div class="card-header bg-primary" style="color:white;">
             <center>Edit Category Form</center>
       </div>
        <div class="card-body">
         <form class ="inner-group"  method="post" action="./Update_Category" enctype="multipart/form-data">
            <!--<table border="0">-->
           <div class="form-group">
             <label>Category Name</label>
                <input type="text" class="form-control" name="oldcate" value="<%=category%>" hidden="true">
                 <input type="text" class="form-control" name="category" value="<%=category%>" size="50" placeholder="Enter the Category Name"required/>
                </div> 
                <div class="form-group">
                    <label>Description</label>
                    <input type="text" class="form-control" name="description" value="<%=desc%>" size="50" placeholder="Enter its Description"required/>
                </div> 
                <div class="form-group">
                    <label>Image</label> 
                    <input type="file" class="form-control" name="photo" size="50" required/>
                </div>                  
                <center><a href="add_category.jsp" class="btn btn-outline-success">Back</a>&nbsp;&nbsp;&nbsp;&nbsp;
               <button type="submit" class="btn btn-success" value="submit" name="category_update">Edit</button></center>  
           <!-- </table>-->
         </form>
        </div>
       </div>
      </div>
    </div>
   </div> 
    <br><br><br><br>
    <footer>
           <%@include file="footer.jsp"%>     
       </footer>  
        <%
             try{
               String msg=request.getParameter("message");
               if(msg.equals("true"))
               {%>
               <script type="text/javascript">
                   alert("Category Updated Successfully!!!");
                   </script>
              <% }
                else
                {%>
                <script type="text/javascript">
                    alert("Error occured!");
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
