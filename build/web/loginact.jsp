<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%
    Connection con = null;
    try{
        String username = request.getParameter("email");
        String password = request.getParameter("password");
        con = DBCon.DbConnector.getConnection(); 
        PreparedStatement ps =con.prepareStatement("select * from reg where email=? and password = ?  ");
        
        ps.setString(1, username);
        ps.setString(2, password);     
        
        ResultSet rs = ps.executeQuery();          
        
        
        if(rs.next())
        {
            String first = rs.getString("firstname");
	  String last=rs.getString("lastname");
	  String user=first+" "+last;
            String e = rs.getString("email");
            String e2 = rs.getString("pettype");
            
            response.sendRedirect("UserHomePage.jsp?success");
            session.setAttribute("user", user);
            session.setAttribute("e", e);
            session.setAttribute("dogtype", e2);
            
        }
        else{
            response.sendRedirect("login.jsp?failed");
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


