package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.Connection;
import servlets.DbCon;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"zxx\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"description\" content=\"Ashion Template\">\n");
      out.write("    <meta name=\"keywords\" content=\"Ashion, unica, creative, html\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("    <title>Your Store</title>\n");
      out.write("\n");
      out.write("    <!-- Google Font -->\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css2?family=Cookie&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap\"\n");
      out.write("          rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Css Styles -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\" type=\"text/css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/font-awesome.min.css\" type=\"text/css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/elegant-icons.css\" type=\"text/css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/jquery-ui.min.css\" type=\"text/css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/magnific-popup.css\" type=\"text/css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/owl.carousel.min.css\" type=\"text/css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/slicknav.min.css\" type=\"text/css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\">\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("<!-- Page Preloder -->\n");
      out.write("<div id=\"preloder\">\n");
      out.write("    <div class=\"loader\"></div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<!-- Offcanvas Menu Begin -->\n");
      out.write("<div class=\"offcanvas-menu-overlay\"></div>\n");
      out.write("<div class=\"offcanvas-menu-wrapper \" style=\"background-color: black\">\n");
      out.write("    <div class=\"offcanvas__close\">+</div>\n");
      out.write("   \n");
      out.write("    <div class=\"offcanvas__logo\">\n");
      out.write("        <a href=\"./index.jsp\">Your Store</a>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    <div id=\"mobile-menu-wrap\"></div>\n");
      out.write("    <div class=\"offcanvas__auth\">\n");
      out.write("        <a href=\"#\">Login</a>\n");
      out.write("        <a href=\"#\">Register</a>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<!-- Offcanvas Menu End -->\n");
      out.write("\n");
      out.write("<!-- Header Section Begin -->\n");
      out.write("<header class=\"header col-xl-12 col-xl-12\" style=\"background-color: black; \">\n");
      out.write("    <div class=\"container-fluid\">\n");
      out.write("        <div class=\"row \">\n");
      out.write("            <div class=\"col-xl-3 col-lg-2\">\n");
      out.write("                <div class=\"header__logo\">\n");
      out.write("                    <a href=\"./index.jsp\"><img src=\"img/logo.webp\" class=\"img-fluid\" style=\"width: 33%;\"></a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-xl-6 col-lg-7\">\n");
      out.write("                <nav class=\"header__menu\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li class=\"active\"><a style=\"color: white;\" href=\"./index.jsp\">Home</a></li>\n");
      out.write("                        <li><a style=\"color: white;\" href=\"all_products.jsp\">All Products</a></li>\n");
      out.write("\n");
      out.write("                        <li><a style=\"color: white;\" href=\"./Dashboard/dashboard.jsp\">My Account</a></li>\n");
      out.write("                          <li><a style=\"color: white;\" href=\"contact.jsp\">Contact US</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </nav>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-lg-3\">\n");
      out.write("                <div class=\"header__right\">\n");
      out.write("                    <a style=\"color: white; font-size: 130%\" class=\"btn btn-success\"  href=\"./Auth/login.jsp\">Login</a>\n");
      out.write("                      <a style=\"color: white; font-size: 130%\" class=\"btn btn-success offset-1\"  href=\"./Auth/signup.jsp\">Register</a>\n");
      out.write("         \n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"canvas__open\">\n");
      out.write("            <i class=\"fa fa-bars\"></i>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</header>\n");
      out.write("<!-- Header Section End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- Product Section Begin -->\n");
      out.write("<section class=\"product spad\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-lg-4 col-md-4\">\n");
      out.write("                <div class=\"section-title\">\n");
      out.write("                    <h4>New product</h4>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("           ");

                                        DbCon db = new DbCon();
                                        Connection con1 = db.getConnection();
                                        Statement st1 = con1.createStatement();

                                        ResultSet res1 = st1.executeQuery("SELECT * FROM products ORDER BY id DESC LIMIT 8");
                                        while (res1.next()) {
                                            String title = res1.getString("title");
                                            String des = res1.getString("description");
                                            String price = res1.getString("price");
                                            String id = res1.getString("id");
                                            String seller = res1.getString("user");
                                            String cat = res1.getString("category");
                                            String con = res1.getString("contact");
                                    
      out.write("\n");
      out.write("        <div class=\"row property__gallery \">\n");
      out.write("            <div class=\"col-lg-3 col-md-4 col-sm-6 mix women\">\n");
      out.write("                <div class=\"product__item\">\n");
      out.write("                    <div class=\"product__item__pic set-bg\" data-setbg=\"getImage.jsp?id=");
      out.print(id);
      out.write("\">\n");
      out.write("                        <div class=\"label new\">New</div>\n");
      out.write("                        <ul class=\"product__hover\" style=\"width:100%\">\n");
      out.write("                            <li><span class=\"badge badge-light\">");
 out.println(des); 
      out.write("</span><br>\n");
      out.write("                                <span class=\"badge badge-pill badge-warning\">");
 out.println(seller); 
      out.write("</span><br>\n");
      out.write("                                <span class=\"badge badge-pill badge-secondary\">");
 out.println(con); 
      out.write("</span>\n");
      out.write("                            </li>\n");
      out.write("\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"product__item__text\">\n");
      out.write("                        <h6><a href=\"#\">");
 out.println(title); 
      out.write("</a></h6>\n");
      out.write("<span class=\"badge badge-pill badge-info\">");
 out.println(cat); 
      out.write("</span>\n");
      out.write("                        <div class=\"product__price\">");
 out.println(price); 
      out.write("</div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            </\n");
      out.write("                               ");

                                        }
                                    
      out.write(" \n");
      out.write("          \n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</section>\n");
      out.write("<!-- Product Section End -->\n");
      out.write("\n");
      out.write("<footer class=\"footer bg-dark\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-lg-12\">\n");
      out.write("                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->\n");
      out.write("                <div class=\"footer__copyright__text\">\n");
      out.write("                    <p style=\"color: white\">Copyright &copy; <script>document.write(new Date().getFullYear());</script> All rights reserved | Team Your Store</p>\n");
      out.write("                </div>\n");
      out.write("               \n");
      out.write("          \n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("      \n");
      out.write("</footer>\n");
      out.write("\n");
      out.write("<!-- Js Plugins -->\n");
      out.write("<script src=\"js/jquery-3.3.1.min.js\"></script>\n");
      out.write("<script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"js/jquery.magnific-popup.min.js\"></script>\n");
      out.write("<script src=\"js/jquery-ui.min.js\"></script>\n");
      out.write("<script src=\"js/mixitup.min.js\"></script>\n");
      out.write("<script src=\"js/jquery.countdown.min.js\"></script>\n");
      out.write("<script src=\"js/jquery.slicknav.js\"></script>\n");
      out.write("<script src=\"js/owl.carousel.min.js\"></script>\n");
      out.write("<script src=\"js/jquery.nicescroll.min.js\"></script>\n");
      out.write("<script src=\"js/main.js\"></script>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
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
