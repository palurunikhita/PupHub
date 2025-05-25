<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <%@include file="bartitle.jsp" %>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
</head>

<body>
    <!-- Main Header -->
    <header class="main-header">
        <center><h1><%@include file="title.jsp" %></h1></center>
    </header>
    <!-- Dropdown Navbar -->
    <nav>
        <ul>
            <li><a href="AdminHome.jsp" class="active" >Home</a>
            <li><a href="Products.jsp" >Products</a></li>
<li><a href="Accessories.jsp" >Accessories </a></li>
<li><a href="vaccination.jsp">Vaccination</a></li>
<li><a href="FoodTimings.jsp">Food Timings </a></li>
<li><a href="AddLocations.jsp">Location</a></li>
<li><a href="ContactUsDetails.jsp">Users Feedback</a></li>
<li><a href="index.jsp">Logout</a></li>
            
        </ul>
    </nav>
    <br><br><br>

<center><img class="bi" src="hub/Ahome.jpeg" alt="" style="" height="300px" width="700px"></center>
    <br><br><br>
    <!-- Main Footer -->
    <footer class="main-footer">
        <%@include file="bottom.jsp"%>
    </footer>
</body>

</html>