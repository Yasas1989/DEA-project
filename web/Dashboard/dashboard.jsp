<%-- 
    Document   : dashboard
    Created on : Sep 19, 2020, 10:24:45 PM
    Author     : Ukdmp Kasun
--%>

<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            response.setHeader("Pragma","no-cache");
            response.setHeader("Expires","0");


Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

      <%
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            response.setHeader("Pragma","no-cache");
            response.setHeader("Expires","0");
            
        
      HttpSession session2=request.getSession(false);  
        String name=(String)session2.getAttribute("name");         
            
        HttpSession session1=request.getSession(false);  
        String id=(String)session1.getAttribute("id"); 
        if(session1.getAttribute("id")!= null ){  
         
      
        
        }  
       
      
        else{
           response.sendRedirect("../Auth/login.jsp");  
        }
       
            %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>My Dashboard</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
         <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Update Password</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <div class="modal-body">
                        <form action="../updatePassword" method="POST">
                      
                            <div class="form-group">
                                <label for="exampleInputPassword1">New Password</label>
                                <input type="password" minlength="6"  class="form-control" id="exampleInputPassword1"  name="pass1" placeholder="Password">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword2">Confirm Password</label>
                                <input type="password"  minlength="6"  class="form-control" id="exampleInputPassword2" name="pass2" placeholder="Confirm Password">
                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-danger">Update Password</button>

                            </div>
                        </form>    
                    </div> 
                </div>
            </div>
        </div>
        
        
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark ">
            <a class="navbar-brand" href="index.jsp">My Dashboard</a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>

            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">

                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="UpdateAccount.jsp">Update My Account</a>
                        <a class="dropdown-item" href="#" class="dropdown-item" data-toggle="modal" data-target="#exampleModal">Update Password</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="../LogOut">Logout</a>
                    </div>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Main</div>
                            <a class="nav-link" href="dashboard.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a>

                            <a class="nav-link" href="addItem.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-plus"></i></div>
                                Add New Item
                            </a>
                            <a class="nav-link" href="myAccount.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-user"></i></div>
                                My Account
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as: <span class="badge badge-pill badge-dark"><%=name %> </span></div>
                        <br> 
                      
                    </div>
                      <a class="nav-link" href="../index.jsp"> <i class="fas fa-home" style="margin-right: 30%;"></i> Home</a>
                      <br><br>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">My Store</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">My Store</li>
                        </ol>
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Number</th>
      <th scope="col">Item Title</th>
       <th scope="col">Category</th>
      <th scope="col">Price</th>
      <th scope="col">Added On</th>
    </tr>
  </thead>
  <tbody>
 
 <%
try{ 
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/store","root","");
statement=connection.createStatement();
String sql ="select * from products where  userId ='"+session1.getAttribute("id")+"' ";

resultSet = statement.executeQuery(sql);
 int i = 1;
while(resultSet.next()){
   
%> 

    <tr>
      <th scope="row"><%=i %></th>
      <td><%=resultSet.getString(3)%></td>
       <td><%=resultSet.getString(5)%></td>
      <td><%=resultSet.getString(4)%></td>
      <td><%=resultSet.getString(8)%></td>
    </tr>

<% i++; %>
 <% 
   
}

} catch (Exception e) {
e.printStackTrace();
}
%>
  </tbody>
</table>

                    </div>
                </main>
  <footer class="py-4 bg-dark mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2020 Team Your Store</div>
                            <div>
                                <a href="../contact.jsp">Contact Us</a>
                               
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
  
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
