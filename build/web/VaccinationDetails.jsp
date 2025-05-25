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
             <li><a href="UserHomePage.jsp">Home</a></li>
<li><a href="ProductsandAccessoriesdetails.jsp">Products</a></li>
<li><a href="AccessoriesDetails.jsp"  >Accessories</a></li>
<li><a href="location.jsp">Location</a></li>
<li><a href="FoodDetails.jsp">Food Details</a></li>
<li><a href="VaccinationDetails.jsp" class="active">Vaccination Details</a></li>
<li><a href="ContactUs.jsp">Feedback</a></li>
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


<div><label class="heading">Vaccination Details</label></div>
<br>
<%
    Connection con = null;
    
    try{  
          con = DBCon.DbConnector.getConnection();        
          PreparedStatement ps =con.prepareStatement("select * from vaccination");
         
          ResultSet rs = ps.executeQuery();
          
 %> 
        <TABLE cellpadding="15" style="background-color: #F8F5F1;">
            <tr>                
                <th>Dog Age</th>
                <th>Vaccine</th>
             </tr>
             <%
                 while (rs.next()){
             %>
             <tr>                 
                 <td style="color:black"><%=rs.getString(2)%></td>
                 <td style="color:black"><%=rs.getString(3)%></td>                
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




