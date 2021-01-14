<%-- 
    Document   : TotalProduct_Sold
    Created on : 25-Nov-2020, 11:14:26 pm
    Author     : Shree
--%>
<%@page import="java.sql.*"%>

  <%     
       int count5=0;
       int totalsell=0;
       try{
           Connection con=null;
           Statement st=null;
          Class.forName("com.mysql.jdbc.Driver");
          con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
          st=con.createStatement();
          ResultSet rs=st.executeQuery("select * from sell_history");
           
         while(rs.next())
         {
             count5=count5+rs.getInt(7); //count for total how many product sold 
             totalsell=totalsell+rs.getInt(9);//total profit
         }
        
          con.close();
         
       }
       catch(Exception e)
       {
          e.printStackTrace();
       }
       
    %>
