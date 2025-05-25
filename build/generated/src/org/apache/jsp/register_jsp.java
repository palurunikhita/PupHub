package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    ");
      out.write("<title>PupHub</title>\r\n");
      out.write("<link rel=\"icon\" href=\"hub/icon.jpg\" type=\"image/icon type\">");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.7.2/css/all.css\" integrity=\"sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr\" crossorigin=\"anonymous\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <!-- Main Header -->\n");
      out.write("    <header class=\"main-header\">\n");
      out.write("        <center><h1>");
      out.write("<img src=\"hub/logo.png\"> <label style=\"margin-left: 80px;\">Puphub</label> ");
      out.write("</h1></center>\n");
      out.write("    </header>\n");
      out.write("    <!-- Dropdown Navbar -->\n");
      out.write("    <nav>\n");
      out.write("         <ul>\n");
      out.write("            ");
      out.write("<li><a href=\"index.jsp\" class=\"active\" >Home</a></li>\n");
      out.write("<li><a href=\"login.jsp\">Login</a></li>\n");
      out.write("<li><a href=\"register.jsp\">Register</a></li>\n");
      out.write("<li><a href=\"admin.jsp\">Admin</a></li>");
      out.write("            \n");
      out.write("        </ul>\n");
      out.write("    </nav>\n");
      out.write("    <!-- Login Form -->\n");
      out.write("    <div class=\"form-div animated flip\">        \n");
      out.write("        <h2>REGISTERATION FORM</h2>\n");
      out.write("        <script>\n");
      out.write("                function valid(){\n");
      out.write("                 var  firstname = document.form.firstname.value;\n");
      out.write("                    if(firstname == 0)\n");
      out.write("                    {\n");
      out.write("                            alert(\"enter firstname\");\n");
      out.write("                            document.form.firstname.focus();\n");
      out.write("                            return false;\n");
      out.write("                    }\n");
      out.write("                    var  lastname = document.form.lastname.value;\n");
      out.write("                    if(lastname == 0)\n");
      out.write("                    {\n");
      out.write("                            alert(\"enter lastname\");\n");
      out.write("                            document.form.lastname.focus();\n");
      out.write("                            return false;\n");
      out.write("                    }\n");
      out.write("                    var  email = document.form.email.value;\n");
      out.write("                    if(email == 0)\n");
      out.write("                    {\n");
      out.write("                            alert(\"enter email\");\n");
      out.write("                            document.form.email.focus();\n");
      out.write("                            return false;\n");
      out.write("                    }\n");
      out.write("                     var  phone_number = document.form.phone_number.value;\n");
      out.write("                    if(phone_number == 0)\n");
      out.write("                    {\n");
      out.write("                            alert(\"enter mobile number\");\n");
      out.write("                            document.form.phone_number.focus();\n");
      out.write("                            return false;\n");
      out.write("                    }\n");
      out.write("                    \n");
      out.write("                    var  usergen = document.form.usergen.value;\n");
      out.write("                    if(usergen == 0)\n");
      out.write("                    {\n");
      out.write("                            alert(\"select user gender\");\n");
      out.write("                            document.form.usergen.focus();\n");
      out.write("                            return false;\n");
      out.write("                    }\n");
      out.write("                    \n");
      out.write("                    var  pettype = document.form.pettype.value;\n");
      out.write("                    if(pettype == 0)\n");
      out.write("                    {\n");
      out.write("                            alert(\"select dog type\");\n");
      out.write("                            document.form.pettype.focus();\n");
      out.write("                            return false;\n");
      out.write("                    }\n");
      out.write("                    \n");
      out.write("                    var  petage = document.form.petage.value;\n");
      out.write("                    if(petage == 0)\n");
      out.write("                    {\n");
      out.write("                            alert(\"enter petage\");\n");
      out.write("                            document.form.petage.focus();\n");
      out.write("                            return false;\n");
      out.write("                    }\n");
      out.write("                    \n");
      out.write("                     var  petgen = document.form.petgen.value;\n");
      out.write("                    if(petgen == 0)\n");
      out.write("                    {\n");
      out.write("                            alert(\"select pet gender\");\n");
      out.write("                            document.form.petgen.focus();\n");
      out.write("                            return false;\n");
      out.write("                    }\n");
      out.write("                    \n");
      out.write("                    var  password = document.form.password.value;\n");
      out.write("                    if(password == 0)\n");
      out.write("                    {\n");
      out.write("                            alert(\"enter password\");\n");
      out.write("                            document.form.password.focus();\n");
      out.write("                            return false;\n");
      out.write("                    }\n");
      out.write("                    var  conpassword = document.form.conpassword.value;\n");
      out.write("                    if(conpassword == 0)\n");
      out.write("                    {\n");
      out.write("                            alert(\"Enter Confirm Password\");\n");
      out.write("                            document.form.conpassword.focus();\n");
      out.write("                            return false;\n");
      out.write("                    }\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                   \n");
      out.write("                    \n");
      out.write("                }\n");
      out.write("            </script>\n");
      out.write("        <form action=\"registeract.jsp\" method=\"post\" name=\"form\" onsubmit=\"return valid()\">\n");
      out.write("        <input type=\"text\" placeholder=\"Enter firstname\" name=\"firstname\" pattern=\"[A-Za-z]+\" title=\"please enter character in between A-Z or a-z\"  autocomplete=\"off\">\n");
      out.write("        <br>\n");
      out.write("        <input type=\"text\" placeholder=\"Enter lastname\" name=\"lastname\" pattern=\"[A-Za-z]+\" title=\"please enter character in between A-Z or a-z\"  autocomplete=\"off\">\n");
      out.write("        <br>\n");
      out.write("        <input type=\"email\" placeholder=\"Enter E-mail Id\" name=\"email\"  pattern=\"[a-z0-9._%+-]+@[a-z.-_]+\\.[a-z]{2,3}$\" title=\"Ex:- abc@gamil.com\" autocomplete=\"off\">\n");
      out.write("        <br>\n");
      out.write("        <input type=\"text\" placeholder=\"Enter Contact No\" name=\"phone_number\" pattern=\"[6-9]{1}[0-9]{9}$\" title=\"Phone number 1st digit 6-9 and remaing 9 digit 0-9\"  autocomplete=\"off\">\n");
      out.write("        <br>\n");
      out.write("        <select name=\"usergen\">\n");
      out.write("                <option selected disabled>--Gender--</option>\n");
      out.write("                <option value=\"male\">     Male</option>\n");
      out.write("                <option value=\"female\">   Female</option>                \n");
      out.write("        </select>\n");
      out.write("        <br>\n");
      out.write("        <h3>Dog Details</h3>\n");
      out.write("        <input type=\"text\" name=\"pettype\" placeholder=\"Enter dog Type\" pattern=\"[A-Za-z]+\" title=\"please enter character in between A-Z or a-z\" autocomplete=\"off\">\n");
      out.write("        <br>\n");
      out.write("        <input type=\"text\" name=\"petage\" placeholder=\"Enter dog Age\" pattern=\"[0-9]{2}$\"  autocomplete=\"off\">\n");
      out.write("        <br>\n");
      out.write("        <select name=\"petgen\">\n");
      out.write("                            <option selected disabled>dog Gender</option>\n");
      out.write("                            <option value=\"male\">Male</option>\n");
      out.write("                            <option value=\"female\">Female</option>\n");
      out.write("         </select>\n");
      out.write("         <br>\n");
      out.write("         <br>\n");
      out.write("         <br>\n");
      out.write("         <br>\n");
      out.write("        <input type=\"password\" placeholder=\"Enter Password\" name=\"password\"  autocomplete=\"off\">\n");
      out.write("        <br>        \n");
      out.write("        <input type=\"password\" placeholder=\"Enter Confirm Password\" name=\"conpassword\"  autocomplete=\"off\">\n");
      out.write("        <br>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <input type=\"submit\" value=\"REGISTER\">\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        </form>\n");
      out.write("    </div>\n");
      out.write("  \n");
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
