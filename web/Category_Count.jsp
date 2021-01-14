<%-- 
    Document   : Category_Count
    Created on : 25-Nov-2020, 4:53:38 pm
    Author     : Shree
--%>

<%@page import="java.sql.*"%>
<%
      int count4=0;
       try{
            Connection con=null;
            Statement st=null;
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
            st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from category");  
             while(rs.next())
             {
                 count4++;     
             }

            con.close();
         
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }
       
    %>
