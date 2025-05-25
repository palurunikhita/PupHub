<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%@include  file="bartitle.jsp" %>
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
<li><a href="Accessories.jsp">Accessories </a></li>
<li><a href="vaccination.jsp" class="active">Vaccination</a></li>
<li><a href="FoodTimings.jsp">Food Timings </a></li>
<li><a href="AddLocations.jsp">Location</a></li>
<li><a href="ContactUsDetails.jsp">Users Feedback</a></li>
<li><a href="index.jsp">Logout</a></li>
        </ul>        
    </nav>
    <!-- Login Form -->
    <div class="form-div animated flip">
        <br>
        
        <div>
            <h2>Enter Vaccination Details</h2>
        </div>
        <br>
        <br>
        <script>
                function valid(){
                 var  dage = document.form.dage.value;
                    if(dage == 0)
                    {
                            alert("select one option");
                            document.form.dage.focus();
                            return false;
                    }
                    var  Vname = document.form.Vname.value;
                    if(Vname == 0)
                    {
                            alert("enter vaccination name");
                            document.form.Vname.focus();
                            return false;
                    }
                    
                }
            </script>            
            <form action="vaccinationDB.jsp" method="post" name="form" onsubmit="return valid()">
            <select name="dage">
                            <option selected disabled>Dog AGE</option>
                            <option value="11-13 WEEKS">11-13 WEEKS</option>
                            <option value="15-17 WEEKS">15-17 WEEKS</option>
                            <option value="15 MONTHS">15 MONTHS</option>
                            <option value="ANNUALLY">ANNUALLY</option>
            </select>
            <input type="text" placeholder="Enter vaccination name" name="Vname"    autocomplete="off">
            <br>
            <input type="submit" value="Submit">
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



