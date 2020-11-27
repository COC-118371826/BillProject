<%-- 
    Document   : users
    Created on : 24 Nov 2020, 13:51:04
    Author     : cilli
--%>


<%@page import="com.bsapp.utils.IConstants"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>   <style>
        
        body{
          

        }
        div123 {
  background-image: url('https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823_1280.jpg');
}
          input {
  width: 100%;
}
   .login_btn{
color: white !Important;
background-color:  #007bff !Important;
width: 150px;
}

.login_btn:hover{
color: black;
background-color: white;
}   
      </style>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - SB Admin</title>
        <link href="css/hi.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    </head>
   
    <body class="sb-nav-fixed">

        <% User user = (User)session.getAttribute(IConstants.SESSION_KEY_USER);%>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <a class="nav-link" href="admin.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-crown"></i></div>
                                Admin
                            </a>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Reports
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="stock.jsp">Stock Level</a>
                                    <a class="nav-link" href="Sales.jsp">Sales Report</a>
                                </nav>
                            </div>
                            
                        
                            
                            <a class="nav-link" href="users.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-users"></i></div>
                                Users
                            </a>
                            <a class="nav-link" href="updateProduct.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-sign"></i></div>
                                Update Products
                            </a>
                                                       <a class="nav-link" href="index.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-times-circle"></i></div>
                                Logout
                            </a>
                        </div>
                    </div>
                       <div class="sb-sidenav-footer" Style="background-color:#212529 !Important; ">
                        <div class="small" > <% if (user != null){ %> <p Style="color:white !Important; "> Logged in as: </p>
                        </div>
                        <p Style="color:white !Important; ">   <%= user.getUsername() %> <% } %></p>
                    </div>
                </nav>
            </div>
                      <div id="layoutSidenav_content">
             <div id="div123">
                    <div class="container-fluid">
                       <div class="heading text-center">
                           
                            <h2>Manage Users</h2>
                        </div>

                        <div style="margin-left: 5%; margin-right: 5%;"> 
                             
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Fullname</th>
                                    <th>Username</th>
                                    <th>Password</th>
                                    <th>AccountStatus</th>
                                  
                                   
                                </tr>
                       
                            
                            </thead>
                            
                            <form  action="updateUserServlet" method="POST">
                            <tbody>
                               <c:forEach items="${SKALLUSER}" var="tempUser">    
                                    <tr>
                                        <td scope="row"><c:out value="${tempUser.getId()}"/></td>
                                        
                                          <td><input id="CustomerFullName" type="textbox" value="${tempUser.CUSTOMERFullName}"></td>
                                        <td><input id="UserUserName" type="textbox" value="${tempUser.UserUserName}"></td>
                                        <td><input id="UserPassword" type="textbox" value="${tempUser.UserPassword}"></td>
                                           <td><input id="CustomerAccountStatus" type="textbox" value="${tempUser.CustomerAccountStatus}"></td>
                              
                                      
                                       </c:forEach>
                            </tr>
                            </tbody>
                            </form>
                            </table>
                        </div>   
                                       <div class="text-center">
                                           <button type="submit" class="btn float-center login_btn"" value="Update User">Update User </button>
                            </div>
                            </form>
                        </div>
                        </div>
                    </div>
        </div>
                </main>
                    <footer class="py-4 bg-light mt-auto" Style="background-color:#212529 !Important; ">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2020</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                
                </footer>
                 </div>
         

        
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/datatables-demo.js"></script>
    </body>
</html>