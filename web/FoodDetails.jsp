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
             <li><a href="UserHomePage.jsp">Home</a></li>
<li><a href="ProductsandAccessoriesdetails.jsp">Products</a></li>
<li><a href="AccessoriesDetails.jsp"   >Accessories</a></li>
<li><a href="location.jsp">Location</a></li>
<li><a href="FoodDetails.jsp" class="active">Food Details</a></li>
<li><a href="VaccinationDetails.jsp">Vaccination Details</a></li>
<li><a href="ContactUs.jsp">Feedback</a></li>
<li><a href="index.jsp">Logout</a></li>
        </ul>        
    </nav>      
     <!-- Login Form -->
    <div class="form-div animated flip">
        <br>
        <br>
        <br>
        <div>
            <h2>Food Timings  Search</h2>
        </div>
        <br>
        <br>
        <h2>Select Dog Based</h2>
        <script>
                function valid(){
                 var  dogtype = document.form.dogtype.value;
                    if(dogtype == 0)
                    {
                            alert("select one option");
                            document.form.dogtype.focus();
                            return false;
                    }                
                }
            </script>            
        <form action="FoodDetailsViewDB.jsp" method="post" name="form" onsubmit="return valid()">
            <%
    Connection con = null;
    try{  
          con = DBCon.DbConnector.getConnection();        
         PreparedStatement ps =con.prepareStatement("select DISTINCT(dogtype) from foodtimings ");
         ResultSet rs = ps.executeQuery();   
%> 
            <select name="dogtype" id="">
                <option selected disabled>Select Breed</option>
                <%
                 while (rs.next()){
                     //rollno,username, password,clgname ,Branch, 
                     //year, email, mobile, address
                
             %>
                
           <option><%=rs.getString(1)%></option>
            <%}%>
            
        </select>
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
<br>
<input type="submit" value="Search">
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