<%-- 
    Document   : FoodTimings
breed,age,physical_activity,color,dogfoodtimings
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
<li><a href="Accessories.jsp" >Accessories </a></li>
<li><a href="vaccination.jsp">Vaccination</a></li>
<li><a href="FoodTimings.jsp" class="active">Food Timings </a></li>
<li><a href="AddLocations.jsp">Location</a></li>
<li><a href="ContactUsDetails.jsp">Users Feedback</a></li>
<li><a href="index.jsp">Logout</a></li>        
        </ul>
    </nav>
    <!-- Login Form     breed,age,physical_activity,color,dogfoodtimings -->
    <div class="form-div animated flip">        
        <h2>Dog Food Timings</h2>
        <script>
                
        </script>
        <form action="FoodTimingsDB.jsp" method="post" name="form" onsubmit="return valid()">
        <input type="text" placeholder="Enter dog type" name="dogtype" autocomplete="off">
        <br>
        <input type="text" placeholder="Enter age" name="age"   autocomplete="off">
        <br>
        <input type="text" placeholder="Enter physical_activity" name="physical_activity"   autocomplete="off">
        <br>
        <input type="text" placeholder="Enter color" name="color"   autocomplete="off">
        <br>
        <input type="text" name="dogfoodtimings" placeholder="Enter dogfoodtimings"  autocomplete="off">
        <br>
        <input type="submit" value="Submit">
        <br>
        <br>
        </form>
    </div>
  
    <br>
    <!-- Main Footer -->
    <footer class="main-footer">
        <%@include file="bottom.jsp"%>
    </footer>
</body>

</html>