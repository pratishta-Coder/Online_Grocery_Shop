<%-- 
    Document   : loginuser
    Created on : 17-Nov-2020, 1:56:56 pm
    Author     : Shree
--%>

  <%@page import="java.sql.*" %>
  <%
    String email=request.getParameter("emailid");
    String psd=request.getParameter("password");
    String product_name=request.getParameter("productname");
    String product_price=request.getParameter("price");
    String product_quantity=request.getParameter("productquan");
    String unit=request.getParameter("unit");
   String quan=request.getParameter("total_quan");
    try{
        int productprice=Integer.parseInt(product_price);
        int productquantity=Integer.parseInt(product_quantity);
        int totalquan=Integer.parseInt(quan);
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase","root","");
       Statement st=con.createStatement();
       ResultSet rs=st.executeQuery("select * from register1 where email='"+email+"' and password='"+psd+"'");
       if(rs.next())
       {
          
           response.sendRedirect("checkout.jsp?email="+email+"&password="+psd+"&product="+product_name+"&product_price="+product_price+"&product_quan="+product_quantity+"&unit="+unit+"&total_quan="+totalquan);
       }
       else
       {
           session.setAttribute("message","true");  
           response.sendRedirect("loginuser_form.jsp");
       }
    }
    catch(Exception ex)
    {
        out.println(ex.getMessage());
    }
 %>

