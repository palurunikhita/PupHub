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
<li><a href="Products.jsp" class="active">Products</a></li>
<li><a href="Accessories.jsp"   >Accessories </a></li>
<li><a href="vaccination.jsp">Vaccination</a></li>
<li><a href="FoodTimings.jsp">Food Timings </a></li>
<li><a href="AddLocations.jsp">Location</a></li>
<li><a href="ContactUsDetails.jsp">Users Feedback</a></li>
<li><a href="index.jsp">Logout</a></li>  
        </ul>
    </nav>
    <!-- Login Form -->
    <div class="form-div animated flip">        
        <h2>products and accessories</h2>        
        <form action="ProductsandAccessoriesDB.jsp" method="post" name="form" onsubmit="return valid()">
        <input type="text" placeholder="Enter productsname" name="productsname" pattern="[A-Za-z]+" title="please enter character in between A-Z or a-z"  autocomplete="off">
        <br>
        <input type="text" placeholder="Enter product type" name="ptype" pattern="[A-Za-z]+" title="please enter character in between A-Z or a-z"  autocomplete="off">
        <br>
        <input type="text" placeholder="Enter accessories name" name="accessoriesname"  pattern="[A-Za-z]+" title="please enter character in between A-Z or a-z" autocomplete="off">
        <br>
        <input type="text" placeholder="Enter accessories type" name="atype" pattern="[A-Za-z]+" title="please enter character in between A-Z or a-z" autocomplete="off">
        <br>
        <input type="text" name="size" placeholder="Enter size" >        
        <br> 
        <input type="file" name="productimage">        
        <br>
        <input type="submit" value="REGISTER">
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