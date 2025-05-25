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
             <li><a href="UserHomePage.jsp">Home</a></li>
<li><a href="ProductsandAccessoriesdetails.jsp">Products</a></li>
<li><a href="AccessoriesDetails.jsp"   >Accessories</a></li>
<li><a href="location.jsp">Location</a></li>
<li><a href="FoodDetails.jsp">Food Details</a></li>
<li><a href="VaccinationDetails.jsp">Vaccination Details</a></li>
<li><a href="ContactUs.jsp" class="active">Feedback</a></li>
<li><a href="index.jsp">Logout</a></li>
            
        </ul>
    </nav>
    <!-- Login Form -->
    <div class="form-div animated flip">
        <img src="img/user.png">
        <h2> Feedback</h2>
        <script>
                function valid(){
                 var  name = document.form.name.value;
                    if(name == 0)
                    {
                            alert("enter user name");
                            document.form.name.focus();
                            return false;
                    }
                    var  mail = document.form.mail.value;
                    if(mail == 0)
                    {
                            alert("enter mail");
                            document.form.mail.focus();
                            return false;
                    }
                    var  descr = document.form.descr.value;
                    if(descr == 0)
                    {
                            alert("enter descr");
                            document.form.descrh .focus();
                            return false;
                    }
                    
                    
                }
            </script>
            <form action="ContactUsDB.jsp" method="post" name="form" onsubmit="return valid()">
                <%
                String u=(String)session.getAttribute("user");
                String e= (String)session.getAttribute("e");

                %>
 
                <input type="text" name="name" value="<%=u%>" readonly="">
            <br>
            <input type="email" name="mail" value="<%=e%>" readonly="" >
            <br>
            <textarea name="descr" placeholder="Enter Description" cols="3" rows="5"></textarea>
            
        
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