<%-- 
    Document   : Warning_Products
    Created on : 17 Nov 2020, 14:46:21
    Author     : cilli
--%>

<%@page import="com.bsapp.utils.IConstants"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <style>
        body{
            background-image: url(https://cdn.pixabay.com/photo/2015/11/07/11/13/street-1030930_1280.jpg);
          
        }
       .dropbtn {
  background-color: #007bff;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
  background-color: #3e8e41;
}

#myInput {
  box-sizing: border-box;
  background-image: url('searchicon.png');
  background-position: 14px 12px;
  background-repeat: no-repeat;
  font-size: 16px;
  padding: 14px 20px 12px 45px;
  border: none;
  border-bottom: 1px solid #ddd;
}

#myInput:focus {outline: 3px solid #ddd;}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f6f6f6;
  min-width: 230px;
  overflow: auto;
  border: 1px solid #ddd;
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown a:hover {background-color: #ddd;}

.show {display: block;}
    </style>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Shop Homepage - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/shop-homepage.css" rel="stylesheet">

</head>

<body>
 <% User user = (User)session.getAttribute(IConstants.SESSION_KEY_USER);%>
  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <img src="Images/LogoMakr-05a923.png"
              width="190"height="60"/>
      <a class="navbar-brand" href="#"></a>
       <% if (user != null){ %>
      <h5 style="color:white !Important;">Logged in as <%= user.getUsername() %>
      </h5>  
      <% } %>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    <div class="collapse navbar-collapse" id="navbarResponsive" style="position:relative !Important;">
          <ul class="navbar-nav ml-auto" style="position:relative !Important;">
           <li class="nav-item active">
              <a id="nav-link1" href="index.html"Style="color:white !important; line-height: 250% !important;">Home
                <span class="sr-only">(current)</span>
              </a>
                    <% if (user != null){ %> 
<script>

document.getElementById("nav-link1").innerHTML = "";
document.getElementById('nav-link1').href= "";
</script> 
                  <% } %>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Informative.jsp"Style="color:white !important;">Products</a>
            </li>
           <li class="nav-item" >
              <a id="nav-link" href="Login.jsp" Style="color:white !important; line-height: 250% !important;">
    Login </a>
               <% if (user != null){ %> 
<script>

document.getElementById("nav-link").innerHTML = "Logout";
document.getElementById('nav-link').href= "Logout.jsp";
</script> 
                  <% } %>
              
            </li>
            <li class="nav-item">
              <a class="nav-link" href="cart.jsp"><img src="Images/cart.png"
              width="30"height="20"/>
</a>
            </li>
          </ul>
        </div>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <div class="col-lg-3">

        <h2 class="my-4" style="color:white;">Product Type:</h2>
        <div class="list-group">
          <a href="Informative.jsp" class="list-group-item">Informative</a>
           <a href="Reg_Products.jsp" class="list-group-item">Regulatory</a>
          <a href="Warning_Products.jsp" class="list-group-item">Warning</a>
          
        </div>

      <div class="dropdown">
  <button onclick="myFunction()" class="dropbtn">Colour</button>
  <div id="myDropdown" class="dropdown-content">
    <input type="text" placeholder="Search.." id="myInput" onkeyup="filterFunction()">
     <a href="Warning_Products.jsp">Any</a>
    <a href="Warning_Products_Orange.jsp">Orange</a>
    <a href="Warning_Products_Yellow.jsp">Yellow</a>
    
    
  </div>
</div>
      </div>
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">

        <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
              <img class="d-block img-fluid" src="Images/compress.jpg" alt="First slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="Images/Antrim Coast Road0.jpg" alt="Second slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="Images/RoadOcean.jpg" alt="Third slide">
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>

<script>
/* When the user clicks on the button,
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

function filterFunction() {
  var input, filter, ul, li, a, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  div = document.getElementById("myDropdown");
  a = div.getElementsByTagName("a");
  for (i = 0; i < a.length; i++) {
    txtValue = a[i].textContent || a[i].innerText;
    if (txtValue.toUpperCase().indexOf(filter) > -1) {
      a[i].style.display = "";
    } else {
      a[i].style.display = "none";
    }
  }
}
</script>
        <div class="row">

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="Images/download.png" style= "border: 9px solid #007bff;alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Road Bend</a>
                </h4>
                <h5><b>$6.00</b></h5>
                <ul class="card-text">
                                           <li><b>ID:</b> 7
                     </li>
                   <li><b>Description:</b> Indicates series of dangerous bends ahead
                     </li>
                      <li><b>Colour:</b> Yellow
                     </li> <li><b>Height:</b> .2m
                     </li> <li><b>Weight:</b> 2Kg
                     </li>
                </ul>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
             <form  action="cart" method="POST"><% if (user != null){ %>
               
                <input type="hidden" name="productCode" value="7">
                <input type="submit" value="Add To Cart"style= "color: white !Important;background-color: #007bff !Important;">
         <% } %>
            </form><!--<a href="cart?productCode=8601">Add To Cart</a>-->
            </div>
          </div>
 <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src=Images/tjunction.png style= "border: 9px solid #007bff;alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">T Junction</a>
                </h4>
                <h5><b>$10.00</b></h5>
                <ul class="card-text">
                                           <li><b>ID:</b> 8
                     </li>
                   <li><b>Description:</b> Indicates T-Junction ahead
                     </li>
                      <li><b>Colour:</b> Yellow
                     </li> <li><b>Height:</b> .2m
                     </li> <li><b>Weight:</b> 4Kg
                     </li>
                </ul>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
              <form  action="cart" method="POST"><% if (user != null){ %>
               
                <input type="hidden" name="productCode" value="8">
                <input type="submit" value="Add To Cart"style= "color: white !Important;background-color: #007bff !Important;">
         <% } %>
            </form><!--<a href="cart?productCode=8601">Add To Cart</a>-->
            </div>
          </div>
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="Images/traffic-sign-3015228_1280.png"style= "border: 9px solid #007bff; alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#"> Slippery Road</a>
                </h4>
                <h5><b>$5.00</b></h5>
            <ul class="card-text">
                                       <li><b>ID:</b> 9
                     </li>
                   <li><b>Description:</b> Indicates slippery road ahead
                     </li>
                      <li><b>Colour:</b> Yellow
                     </li> <li><b>Height:</b> .2m
                     </li> <li><b>Weight:</b> 2Kg
                     </li>
                </ul>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
               <form  action="cart" method="POST"><% if (user != null){ %>
               
                <input type="hidden" name="productCode" value="9">
                <input type="submit" value="Add To Cart"style= "color: white !Important;background-color: #007bff !Important;">
         <% } %>
            </form><!--<a href="cart?productCode=8601">Add To Cart</a>-->
            </div>
          </div>

         
 

          
         
<div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="Images/roudnabout.png" style= "border: 9px solid #007bff;alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Roundabout</a>
                </h4>
                  <h5><b>$8.00</b></h5>
                <ul class="card-text">
                                           <li><b>ID:</b> 12
                     </li>
                   <li><b>Description:</b> Indicates Roundabout ahead
                     </li>
                      <li><b>Colour:</b> Yellow
                     </li>
                     <li><b>Height:</b> .2m
                     </li>
                     <li><b>Weight:</b> 4Kg
                     </li>
                </ul>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
               <form  action="cart" method="POST"><% if (user != null){ %>
               
                <input type="hidden" name="productCode" value="12">
                <input type="submit" value="Add To Cart"style= "color: white !Important;background-color: #007bff !Important;">
         <% } %>
            </form><!--<a href="cart?productCode=8601">Add To Cart</a>-->
            </div>
          </div>

          
          </div>

        </div>
        <!-- /.row -->

      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark"Style="opacity:0.89 !Important;">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; The Sign Shop 2020</p>      <a href="https://www.facebook.com/"><img width="60" height="60" src="Images/fb.png" title="facebook" alt="facebook"></a>
      <a href="https://www.Twitter.com/"><img width="60" height="60" src="Images/twitter.jpg" title="twitter" alt="twitter"></a>
      <a href="https://www.Youtube.com/"><img width="60" height="60" src="Images/youtube.jpg" title="youtube" alt="youtube"></a>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
