<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>


<head>
    <meta charset="UTF-8">
    <%@include file="bartitle.jsp" %>
    <link rel="stylesheet" href="style.css">    
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
</head>
<body>
    
        <%
        if (request.getParameter("m1") != null) {%>
        <script>alert('Login Failed..!');</script> 
        <%}%>
        <%
        if (request.getParameter("msg") != null) {%>
        <script>alert('Registered Successfully..!');</script> 
        <%}%>    
    <!-- Main Header -->
    <header class="main-header">
        <center><h1><%@include file="title.jsp" %></h1></center>
    </header>
    <!-- Dropdown Navbar -->
    <nav>
         <ul>
             <li><a href="UserHomePage.jsp">Home</a></li>
<li><a href="ProductsandAccessoriesdetails.jsp">Products</a></li>
<li><a href="AccessoriesDetails.jsp"  >Accessories</a></li>
<li><a href="location.jsp" class="active">Location</a></li>
<li><a href="FoodDetails.jsp">Food Details</a></li>
<li><a href="VaccinationDetails.jsp">Vaccination Details</a></li>
<li><a href="ContactUs.jsp">Feedback</a></li>
<li><a href="index.jsp">Logout</a></li>
        </ul>
    </nav>
    <!-- Login Form -->
    <div class="form-div animated flip">
        <img src="img/user.png">
        <h2>Provide User Rating</h2>
        <script>
                
        </script>
        
        <%
    Connection con = null;
    String id = request.getParameter("id");
    int i = Integer.parseInt(id);
    
    try{  
          con = DBCon.DbConnector.getConnection(); 
          String SQL= "select * from location  where id = ?"   ;
          PreparedStatement ps =con.prepareStatement(SQL);
          ps.setInt(1, i);
          ResultSet rs = ps.executeQuery();
          
         



%> 
            <form action="AddLocationDB1.jsp" method="post" name="form" onsubmit="return valid()">
               <%
                 if (rs.next()){
                   
             %>
 
             <input type="text" name="name" value="<%=rs.getString(2)%>" readonly="">
            <br>
             <input type="text" name="Loc" value="<%=rs.getString(3)%>" readonly="">
            <br>
           
            <textarea name="address" cols="3" rows="8" readonly=""><%=rs.getString(4)%></textarea>
            <br>
             <input type="text" name="phone" value="<%=rs.getString(5)%>" readonly="">
            <br>
            <input type="text" name="rating" value="<%=rs.getString(6)%>" readonly="">
            <br>
            <input type="text" name="rating1" placeholder="Provide New Rating" autocomplete="off">
            <br>
            <input type="hidden" name="id" value="<%=rs.getString(1)%>" >
            <br>
            <br>
            <br>
            <input type="submit" value="Submit">
            <br>
            <br>
            <%}%>
        </form>
             
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
    <br><br>
    <br><br><br>
    <br>
    <!-- Main Footer -->
    <footer class="main-footer">
        <%@include file="bottom.jsp"%>
    </footer>
</body>

</html>
