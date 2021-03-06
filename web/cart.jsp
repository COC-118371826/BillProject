<%-- 
    Document   : cart
    Created on : 23 Nov 2020, 13:35:07
    Author     : cilli
--%>
<%@page import="com.bsapp.utils.IConstants"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
  

   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/heroic-features.css" rel="stylesheet">

    
<style>
    body{
        background-image: url(https://cdn.pixabay.com/photo/2016/11/15/22/29/shopping-cart-1827716_1280.jpg);
    }
.login_btn{
color: white !Important;
background-color:  #007bff !Important;
width: 10%;
}
.checkout_btn{
color: white !Important;
background-color:  black !Important;
width: 10%;
}
.login_btn:hover{
color: black;
background-color: white;
}
</style>

    </head>
    <body>
            <% User user = (User)session.getAttribute(IConstants.SESSION_KEY_USER);%>
         <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" >
      <div class="container">
          <img src="Images/LogoMakr-05a923.png"
              width="190"height="60"/>
        <a class="navbar-brand" href="#"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
         
        </div>
      </div>
    </nav>
         
         <br>  <br>  <br>


<div class="w3-container" style="background-color:white !Important;">


  <table class="w3-table w3-striped w3-border">
  <tr>
    <th>Quantity</th>
    <th>Name - Description</th>
    <th>Price</th>
    <th>Amount</th>
  
  </tr>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="item" items="${cart.items}">
  <tr>
    <td>
      <form action="" method="post">
        <input type="hidden" name="productCode" value="${item.product.id}">
        <input type=text name="quantity" value="${item.quantity}" id="quantity">
        <input type="submit" value="Update">
      </form>
    </td>
    <td>${item.product.getProductDescription()}</td>
    <td>${item.product.getProductPrice()}</td>
    <td>${item.totalCurrencyFormat}</td>
    <td>
      <form action="" method="post">
        <input type="hidden" name="productCode" 
               value="${item.product.id}">
        <input type="hidden" name="quantity" 
               value="0">
        <input type="submit" value="Remove Item">
      </form>
    </td>
  </tr>
</c:forEach>
</table>
</div>
<p style="color:black;background-color:white"><b>To change the quantity</b>, enter the new quantity 
      and click on the Update button.</p>
  <% if (user != null){ %>
      
        
      <form action="checkout.jsp" method="post">
  <input type="hidden" name="action" value="checkout">
<input type="submit" id="Login" value="Checkout" class="btn float-right checkout_btn">
 <% } %>
 </form>
<form action="Informative.jsp" method="post">
    
  <input type="hidden" name="action" value="shop">
  <input type="submit" id="Login" value="Continue Shopping" class="btn float-right login_btn">
</form>


<br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br>
 <br><br><br>
 <br><br><br>
        <!-- Footer -->
  <footer class="py-5 bg-dark"Style="opacity:0.89 !Important; " >
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; The Sign Shop 2020</p>
            <a href="https://www.facebook.com/"><img width="60" height="60" src="Images/fb.png" title="facebook" alt="facebook"></a>
      <a href="https://www.Twitter.com/"><img width="60" height="60" src="Images/twitter.jpg" title="twitter" alt="twitter"></a>
      <a href="https://www.Youtube.com/"><img width="60" height="60" src="Images/youtube.jpg" title="youtube" alt="youtube"></a>

    </div>

  </footer>
</body>
</html>