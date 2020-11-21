<%@page import="java.sql.*" %>
<%
    String username=request.getParameter("username");
    String psd=request.getParameter("password");
    try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase","root","");
       Statement st=con.createStatement();
       ResultSet rs=st.executeQuery("select * from login where username='"+username+"'and password='"+psd+"'");
       if(rs.next())
       {
           response.sendRedirect("Add_Addmin.jsp?user="+username+"");
       }
       else
       {
           response.sendRedirect("login.jsp");
           //out.println("alert('usename or password incorrect!!')");
      // out.println("location='login.jsp';");
       }
    }
    catch(Exception ex)
    {
        out.println(ex.getMessage());
    }
%>