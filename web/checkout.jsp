<%-- 
    Document   : checkout
    Created on : 17 Nov 2020, 14:47:14
    Author     : cilli
--%>
<%@page import="com.bsapp.utils.IConstants"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}


input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
  font-weight:bold
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: black !Important;
  color: white !Important;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 200px;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
float: right;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}



/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
</style>
 <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/heroic-features.css" rel="stylesheet">
</head>
<body>
    <% User user = (User)session.getAttribute(IConstants.SESSION_KEY_USER);%>
  <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" 
         >
      <div class="container">
          <img src="Images/LogoMakr-05a923.png" 
              width="190" height="60"/>
        <a class="navbar-brand" href="#"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            
            <li class="nav-item">
              <a class="nav-link" href="Informative.jsp">Products</a>
            </li>
         <li class="nav-item active">
              <a class="nav-link" href="Logout.jsp">Logout
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="cart.jsp"><img src="Images/cart.png"
              width="30" height="20"/>
</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
 
   <header class="jumbotron my-4" Style="opacity:0.89 !Important;">
<div class="row">
  <div class="col-75">
    <div class="container">
      
        <form>
        <div class="row">
           
          <div class="col-50">
            <h3>Billing Address</h3>
             <% if (user != null){ %>
  
            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" id="fname" name="FullName" placeholder="<%= user.getUsername() %>">
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email" placeholder="<%= user.getEmail() %>">
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" name="address" placeholder="Enter your Address">
            <label for="city"><i class="fa fa-institution"></i> City</label>
            <input type="text" id="city" name="city" placeholder="Enter your City">

            <div class="row">
              <div class="col-50">
                <label for="state">Province</label>
                <input type="text" id="state" name="Province" placeholder="Enter your Province">
              </div>
              <div class="col-50">
                <label for="zip">Zip</label>
                <input type="text" id="zip" name="zip" placeholder="Enter your Zip">
              </div>
            </div>
          </div>

          <div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="<%= user.getUsername() %>">
            <label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="Enter Credit Card Number">
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="Enter Month">
            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear" placeholder="Enter Year">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="Enter CVV">
              </div>
            </div>
          </div>
           <% } %>
        </div></form>
<div class="pull-right" style="margin: 10px">
                    <a href="OrderConfirmation.jsp" class="btn btn-success pull-right" Style="color:White!Important;background-color:black!Important;">Checkout</a>
                  
                </div>
      
    </div>
  </div>
  
</div>
   </header>
<footer class="py-5 bg-dark" Style="opacity:0.89 !Important;">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; The Sign Shop 2020</p>
      <a href="https://www.facebook.com/"><img width="60" height="60" src="Images/fb.png" title="facebook" alt="facebook"></a>
      <a href="https://www.Twitter.com/"><img width="60" height="60" src="Images/twitter.jpg" title="twitter" alt="twitter"></a>
      <a href="https://www.Youtube.com/"><img width="60" height="60" src="Images/youtube.jpg" title="youtube" alt="youtube"></a>
    </div>
      
    </footer>
</body>
</html>
