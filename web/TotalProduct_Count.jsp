<%-- 
    Document   : TotalProduct_Count
    Created on : 25-Nov-2020, 3:09:17 pm
    Author     : Shree
--%>

<%@page import="java.sql.*"%>
<%
      int total=0;
       try{
           Connection con=null;
          Statement st=null;
          Class.forName("com.mysql.jdbc.Driver");
          con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
          st=con.createStatement();
          ResultSet rs=st.executeQuery("select * from product");
           
         while(rs.next())
         {
             total=total+rs.getInt(3);     
         }
        
          con.close();
         
       }
       catch(Exception e)
       {
          e.printStackTrace();
       }
       
    %>