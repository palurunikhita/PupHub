package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ContactUs_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(4);
    _jspx_dependants.add("/bartitle.jsp");
    _jspx_dependants.add("/title.jsp");
    _jspx_dependants.add("/hometabs.jsp");
    _jspx_dependants.add("/bottom.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    ");
      out.write("<title>PupHub</title>\r\n");
      out.write("<link rel=\"icon\" href=\"hub/icon.jpg\" type=\"image/icon type\">");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">    \n");
      out.write("    <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.7.2/css/all.css\" integrity=\"sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr\" crossorigin=\"anonymous\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    \n");
      out.write("        ");

        if (request.getParameter("m1") != null) {
      out.write("\n");
      out.write("        <script>alert('Login Failed..!');</script> \n");
      out.write("        ");
}
      out.write("\n");
      out.write("        ");

        if (request.getParameter("msg") != null) {
      out.write("\n");
      out.write("        <script>alert('Registered Successfully..!');</script> \n");
      out.write("        ");
}
      out.write("    \n");
      out.write("    <!-- Main Header -->\n");
      out.write("    <header class=\"main-header\">\n");
      out.write("        <center><h1>");
      out.write("<img src=\"hub/logo.png\"> <label style=\"margin-left: 80px;\">Puphub</label> ");
      out.write("</h1></center>\n");
      out.write("    </header>\n");
      out.write("    <!-- Dropdown Navbar -->\n");
      out.write("    <nav>\n");
      out.write("         <ul>\n");
      out.write("             ");
      out.write("<li><a href=\"index.jsp\" class=\"active\" >Home</a></li>\n");
      out.write("<li><a href=\"login.jsp\">Login</a></li>\n");
      out.write("<li><a href=\"register.jsp\">Register</a></li>\n");
      out.write("<li><a href=\"admin.jsp\">Admin</a></li>");
      out.write("\n");
      out.write("            \n");
      out.write("        </ul>\n");
      out.write("    </nav>\n");
      out.write("    <!-- Login Form -->\n");
      out.write("    <div class=\"form-div animated flip\">\n");
      out.write("        <img src=\"img/user.png\">\n");
      out.write("        <h2> Contact Us</h2>\n");
      out.write("        <script>\n");
      out.write("                function valid(){\n");
      out.write("                 var  username = document.form.username.value;\n");
      out.write("                    if(username == 0)\n");
      out.write("                    {\n");
      out.write("                            alert(\"enter user name\");\n");
      out.write("                            document.form.username.focus();\n");
      out.write("                            return false;\n");
      out.write("                    }\n");
      out.write("                    var  mail = document.form.mail.value;\n");
      out.write("                    if(mail == 0)\n");
      out.write("                    {\n");
      out.write("                            alert(\"enter mail\");\n");
      out.write("                            document.form.mail.focus();\n");
      out.write("                            return false;\n");
      out.write("                    }\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                }\n");
      out.write("            </script>\n");
      out.write("        <form action=\"loginact.jsp\" method=\"post\" name=\"form\" onsubmit=\"return valid()\">\n");
      out.write("            <input type=\"text\" placeholder=\"Enter Name\" name=\"name\" autocomplete=\"off\">\n");
      out.write("            <br>\n");
      out.write("            <input type=\"email\" placeholder=\"Enter  mail\" name=\"mail\" >\n");
      out.write("            <br>\n");
      out.write("            <textarea name=\"descr\" placeholder=\"Enter Description\" cols=\"3\" rows=\"5\"></textarea>\n");
      out.write("            \n");
      out.write("        \n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("            <input type=\"submit\" value=\"Login\">\n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("        </form>\n");
      out.write("    </div>\n");
      out.write("    <br><br>\n");
      out.write("    <br><br><br>\n");
      out.write("    <br>\n");
      out.write("    <!-- Main Footer -->\n");
      out.write("    <footer class=\"main-footer\">\n");
      out.write("        ");
      out.write("<p>Developed by <a href=\"index.html\" target=\"_blank\"> </a></p>");
      out.write("\n");
      out.write("    </footer>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
