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
<li><a href="Accessories.jsp"  class="active" >Accessories </a></li>
<li><a href="vaccination.jsp">Vaccination</a></li>
<li><a href="FoodTimings.jsp">Food Timings </a></li>
<li><a href="AddLocations.jsp">Location</a></li>
<li><a href="ContactUsDetails.jsp">Users Feedback</a></li>
<li><a href="index.jsp">Logout</a></li>  
        </ul>
    </nav>
    <!-- Login Form -->
    <div class="form-div animated flip">        
        <h2>Accessories</h2>        
        <form action="AccessoriesDB.jsp" method="post" name="form" onsubmit="return valid()">        
        <input type="text" placeholder="Enter accessories name" name="accessoriesname"  pattern="[A-Za-z0-9\s]+" title="please enter character in between A-Z or a-z" autocomplete="off">
        <br>
        <input type="text" placeholder="Enter accessories type" name="atype" pattern="[A-Za-z\s]+" title="please enter character in between A-Z or a-z" autocomplete="off">
        <br>
        <select name="dogtype">
                <option selected disabled>--Enter Dog Breed--</option>
                <option value="Pug">Pug</option>
                <option value="Labrador">Labrador</option>
                <option value="German Shepard">German Shepard</option>
                <option value="Dashund">Dashund</option>
                <option value="Pomeranian">Pomeranian</option>
                <option value="Indian Pariah Dog">Indian Pariah Dog</option>
                <option value="Doberman">Doberman</option>
                <option value="Pitbull">Pitbull</option>
                <option value="Golden retriever">Golden retriever</option>
                <option value="Beagle">Beagle</option>
                <option value="Siberian Husky">Siberian Husky</option>
                <option value="Shih Tzu">Shih Tzu</option>
                <option value="Chihuahua">Chihuahua</option>
                <option value="Great Dane">Great Dane</option>
                <option value="Dalmatian">Dalmatian</option>
                <option value="Rottweiler">Rottweiler</option>
                <option value="St.Bernard">St.Bernard</option>
                <option value="Cocker Spaniel">Cocker Spaniel</option>
        </select>
	<br>
        <input type="text" name="size" placeholder="Enter size" >        
        <br> 
        <input type="file" name="productimage">        
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