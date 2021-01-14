<%-- 
    Document   : Sell_Count
    Created on : 25-Nov-2020, 2:07:17 pm
    Author     : Shree
--%>

 <%@page import="java.sql.*"%>

  <%     
       int count3=0;
       int sell_price=0;
      
     try{
          Connection con=null;
          Statement st=null;
          Class.forName("com.mysql.jdbc.Driver");
          con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
          st=con.createStatement();
          ResultSet rs=st.executeQuery("select * from sell_history where DATE(Date) = CURDATE()");//select data from table where date is todays date by using
                                                                                 //CURDATE() function 
          while(rs.next())
         {
             count3=count3+rs.getInt(7); //count for how many product sold today
             sell_price=sell_price+rs.getInt(9); //today's total profit
         }
        
          con.close();
         
       }
       catch(Exception e)
       {
          e.printStackTrace();
       }
       
    %>
