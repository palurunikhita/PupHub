<%-- 
    Document   : ContactUsDetails
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <%@include file="bartitle.jsp"%>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
</head>

<body>
    <!-- Main Header -->
    <header class="main-header">
        <center><h1><%@include file="title.jsp"%></h1></center>
    </header>
    <!-- Dropdown Navbar -->
    <nav>
         <ul>
             <li><a href="AdminHome.jsp">Home</a></li>
<li><a href="Products.jsp" >Products</a></li>
<li><a href="Accessories.jsp"   >Accessories </a></li>
<li><a href="vaccination.jsp">Vaccination</a></li>
<li><a href="FoodTimings.jsp">Food Timings </a></li>
<li><a href="AddLocations.jsp">Location</a></li>
<li><a href="ContactUsDetails.jsp" class="active">Users Feedback</a></li>
<li><a href="index.jsp">Logout</a></li>
        </ul>
    </nav>
    <!-- Login Form -->
    <br>
    <br>
    <div  style="margin-left: 80px;">
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>


<div><label class="heading">User's Feedback</label></div>
<br>
<%
    Connection con = null;
    
    try{  
          con = DBCon.DbConnector.getConnection();        
          PreparedStatement ps =con.prepareStatement("select * from contactus");
         
          ResultSet rs = ps.executeQuery();
          
 %> 
        <TABLE cellpadding="15" border="1" style="background-color: #ffffcc; margin-bottom: 220px;">
            <tr>                
                <th>Name</th>
                <th>Feed Back</th>
             </tr>
             <%
                 while (rs.next()){
                    
             %>
             <tr>                 
                 <td style="color:black"><%=rs.getString(2)%></td>
                 <td style="color:black"><%=rs.getString(4)%></td>                
             </tr><%}%>
        </TABLE>
                     <%}  
    catch(Exception e)
    {
        e.printStackTrace();
    }
    finally
    {
        con.close();
    }
 %>
    </div>
  
    <br>
    <!-- Main Footer -->
    <footer class="main-footer">
        <%@include file="bottom.jsp"%>
    </footer>
</body>

</html>


