<!DOCTYPE html>
<html lang="en">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

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
             <li><a href="AdminHome.jsp">Home</a></li>
<li><a href="Products.jsp" >Products</a></li>
<li><a href="Accessories.jsp"  >Accessories </a></li>
<li><a href="vaccination.jsp">Vaccination</a></li>
<li><a href="FoodTimings.jsp">Food Timings </a></li>
<li><a href="AddLocations.jsp" class="active">Location</a></li>
<li><a href="ContactUsDetails.jsp">Users Feedback</a></li>
<li><a href="index.jsp">Logout</a></li>
            
        </ul>
    </nav>
    <!-- Login Form -->
    <div class="form-div animated flip">
        <h2 style="padding-top: 15px;">Add Location</h2>
        <script>
                function valid(){
                 var  name = document.form.name.value;
                    if(name == 0)
                    {
                            alert("enter name");
                            document.form.name.focus();
                            return false;
                    }
                    var  Loc = document.form.Loc.value;
                    if(Loc == 0)
                    {
                            alert("enter Loc");
                            document.form.Loc.focus();
                            return false;
                    }
                    var  address = document.form.address.value;
                    if(address == 0)
                    {
                            alert("enter address");
                            document.form.address.focus();
                            return false;
                    }
                    
                    var  phone = document.form.phone.value;
                    if(phone == 0)
                    {
                            alert("enter phone");
                            document.form.phone.focus();
                            return false;
                    }
                    var  rating = document.form.rating.value;
                    if(rating == 0)
                    {
                            alert("enter rating");
                            document.form.rating.focus();
                            return false;
                    }
                    
                    
                    
                }
            </script>
            <form action="AddLocationDB.jsp" method="post" name="form" onsubmit="return valid()">
               
 
                <input type="text" name="name" placeholder="Enter Name" autocomplete="off">
            <br>
             <input type="text" name="Loc" placeholder="Enter Location Name" autocomplete="off">
            <br>
           
            <textarea name="address" placeholder="Enter Address" cols="3" rows="5"></textarea>
            <br>
             <input type="text" name="phone" placeholder="Enter mobile number" autocomplete="off">
            <br>
            <input type="text" name="rating" placeholder="Enter rating" autocomplete="off">
            <br>
            <br>
            <br>
            <input type="submit" value="Submit">
            <br>
            <br>
        </form>
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