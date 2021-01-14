<%-- 
    Document   : Customer_Count
    Created on : 25-Nov-2020, 1:31:56 pm
    Author     : Shree
--%>

    <%@page import="java.sql.*"%>

  <%     
       int count1=0;
       try{
           Connection con=null;
           Statement st=null;
          Class.forName("com.mysql.jdbc.Driver");
          con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerydatabase?zeroDateTimeBehavior=convertToNull","root","");
          st=con.createStatement();
          ResultSet rs=st.executeQuery("select * from register1");
           
         while(rs.next())
         {
            // out.println("alert('New Admin added successfully..')");
           //  session.setAttribute("message","true");
             count1++;     
         }
        
          con.close();
         
       }
       catch(Exception e)
       {
          e.printStackTrace();
       }
       
    %>
