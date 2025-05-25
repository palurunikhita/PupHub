<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Connection con = null;
    try{
        String breed = request.getParameter("dogtype");
        String age = request.getParameter("age");
        String physical_activity = request.getParameter("physical_activity");
        String  color= request.getParameter("color");
        String dogfoodtimings = request.getParameter("dogfoodtimings");
       
        con = DBCon.DbConnector.getConnection(); 
       
        PreparedStatement ps =con.prepareStatement("insert into FoodTimings (dogtype,age,physical_activity,color,dogfoodtimings) values (?,?,?,?,?) ");
        
        ps.setString(1, breed);
        ps.setString(2, age);
         ps.setString(3, physical_activity);
        ps.setString(4, color);
         ps.setString(5, dogfoodtimings);
        
        //System.out.println(SQL);
        int i = ps.executeUpdate();
        
        if(i == 1)
        {
            response.sendRedirect("FoodTimings.jsp?success");
            
        }
        else{
            response.sendRedirect("FoodTimings.jsp?failed");
        }
        
        
                
    }  
    catch(Exception e)
    {
        e.printStackTrace();
    }
    finally
    {
        con.close();
    }
 
    
    
%>