<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%
    Connection con = null;
    try{
        String ausername = request.getParameter("ausername");
        String apassword = request.getParameter("apassword");
        con = DBCon.DbConnector.getConnection(); 
        PreparedStatement ps =con.prepareStatement("select * from admin where adminname=? and password=? ");
        ps.setString(1, ausername);
        ps.setString(2, apassword);
        
        ResultSet rs = ps.executeQuery();
        if(rs.next()){
        
            response.sendRedirect("AdminHome.jsp?success");
            
        }
        else{
            response.sendRedirect("admin.jsp?failed");
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





