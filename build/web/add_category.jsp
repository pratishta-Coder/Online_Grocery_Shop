<%-- 
    Document   : add_category
    Created on : 02-Oct-2020, 11:25:38 am
    Author     : Shree
--%>

<%@page import="java.util.Base64"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <%@include file="common/bootstrap_cdn.jsp"%>
         <link rel="stylesheet" type="text/css" href="style.css">
    </head>   
    <body>
        <header>
            <%@include file="common/nav_bar.jsp"%>
       </header>
       <br>
        <div class="container">
        <section class="category">
           <center><h3>Categories</h3></center>
        </section><br>
         <div class="container">
         <div class="row">
             
            <%
                out.println(""+request.getParameter("firstname"));
                Connection con=null;
                Statement pt=null;
               
                Blob image=null;
               
                ResultSet rs=null;
               InputStream inputstream=null;
               ByteArrayOutputStream output=new ByteArrayOutputStream();
               byte[] imagedata=new byte[4096];
               int byteRead=-1; 
               String base=null;
            //   OutputStream img=null;
              try{
                   Class.forName("com.mysql.jdbc.Driver");
                   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
                   pt=con.createStatement();
                   rs=pt.executeQuery("select * from category");
                     String descript="";
                     String category="";
                   while(rs.next())
                   {
                       if(rs.next())
                     {
                       category=rs.getString(1);
                       out.println(category);
                       image=rs.getBlob(2);
                       inputstream=image.getBinaryStream();
                       while((byteRead=inputstream.read(imagedata))!=-1)
                       {
                           output.write(imagedata,0,byteRead);
                           %>
                          
            <%
                          
                       }
                    // imagedata=image.getBytes(1,(int)image.length());
                     byte[] imageBytes=output.toByteArray();
                     base=Base64.getEncoder().encodeToString(imageBytes);
                       descript=rs.getString(3);
                       inputstream.close();
                       
                    // out.println(imagedata);
                     
                      //out.println(descript);
                     }
                       else 
                       {
                           out.println("data not found");
                       }
                     // response.setContentType("image/png");
                   //   img=response.getOutputStream();
                      
                   %>
                   
                  <div class="col-lg-3 col-md-3 col-sm-12 col-10 d-block m-auto col-mt-5"> 
                    <a href="#">
                    <div class="card">
                     <img class="card-img-top" src="<%out.print(base);%>">
                    <div class="card-body">
                      <h1 class="card-title"><%=category%></h1>
                    </div>
                   </div>
                  </a>
               </div>
              </div>  
             </div>
                <%
                  //  img.flush();
                    //img.close();
                }
                  con.close(); 
              }
              catch(Exception e)
              {
                  out.println(e);
              }
              finally {
try {
rs.close();
pt.close();
con.close();
} catch (SQLException e) {
e.printStackTrace();
}
}
            %>
             <div class="container">
            <form class="inner-group" action="AddCategory_Form.jsp">
                <button type="submit" class="btn btn-success" name="submit"> Add New Category</button>
           </form>
        </div>
        </div>
    </body>
</html>
