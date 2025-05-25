<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con = null;
    FileInputStream fis;
    try{
        String productsname = request.getParameter("productsname");
        String ptype = request.getParameter("ptype"); 
        String accessoriesname = request.getParameter("accessoriesname");
        String atype = request.getParameter("atype"); 
        String size = request.getParameter("size"); 
        String c = request.getParameter("productimage"); 
        con = DBCon.DbConnector.getConnection();
        File image=new File("C:\\PUP HUB\\IMG\\"+c);
        PreparedStatement ps =con.prepareStatement("insert into productsandaccessories (productsname, ptype, accessoriesname, atype, size, productimage) values (?,?,?,?,?,?) ");
        ps.setString(1, productsname);
        ps.setString(2, ptype);
        ps.setString(3, accessoriesname);
        ps.setString(4, atype);
        ps.setString(5, size); 
        fis=new FileInputStream(image);
        ps.setBinaryStream(6, (InputStream)fis, (int)(image.length())); 
        int i = ps.executeUpdate();
        if(i == 1)
        {        
            response.sendRedirect("ProductsandAccessories.jsp?success");            
        }
        else{
            response.sendRedirect("ProductsandAccessories.jsp?failed");
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




