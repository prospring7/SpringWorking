<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
  <head>
    <title>Admin - View Product
    </title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js">
    </script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js">
    </script>
    <link rel="stylesheet" href="styles/main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
      /* Make the image fully responsive */
      .carousel-inner img {
        width: 100%;
        height: 100%;
      }
    </style>
  </head>
  <body>
    <nav class="navbar navbar-expand-md navbar-light bg-light">
      <a class="navbar-brand" href="#">
        <img src="images/logo-navbar.png" alt="logo">
      </a>
      <form class="mx-2 my-auto d-inline">
        <div class="input-group topnav1">
          <input type="text" class="form-control border border-right-0 bg-light form-rounded" placeholder="Search">
          <span class="input-group-append">
            <button class="btn btn-outline-secondary border border-left-0  form-rounded" type="button">
              <span class="fa fa-search">
              </span>
            </button>
          </span>
        </div>
      </form>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" href="#">
            <span class="fa fa-bell">
            </span>
          </a>
        </li>
        <li class="nav-item">
          <span class="navbar-text">
            Welcome, ${user.name}
           
          </span>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <form class= "mx-2 my-auto w-full">
            <a class="btn btn-secondary  form-rounded" href="LogoutServlet" >Logout
            </a>
          </form>
        </li>
      </ul>
    </nav>
    <div class="container-clearfix">
      <br>
    </div>
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-3 bg-light">
          <br>
          <nav class="navbar navbar-expand-md navbar-dark navbar-custom">
            <span class="navbar-text navbar-">
              <b>PROFILE
              </b>
            </span>
            <ul class="navbar-nav ml-auto">
              <li class="nav-item">
                <a href="" style="color:aliceblue">
                  <b>Edit
                  </b>
                </a>
              </li>
            </ul>
          </nav>
          <br>
          <center>
            <img src="images/profile-picture.png" alt="Profile Picture">
            <br>
            <br>
            <b>${user.name} 
            </b>
            <br>
            <br>
            ID:
            <br>${user.userId}
            <br>
            <br>
            Designation:
            <br>
            ${user.designation}
            <br>
            <br>
            Office:
            <br>
            ${user.address}
          </center>
        </div>
        <div class="col-md-6">
          <div class="container">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs" role="tablist">
              <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#home">Products
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#menu1">Vendors
                </a>
              </li>
            </ul>
            <!-- Tab panes -->
            <div class="tab-content">
              <div id="home" class="container tab-pane active">
                <br>
                <style> p {
                  color: slategray}
                  b{
                    color: black}
                </style>
                <p>
                  <b>${product.name}
                  </b> by ${product.brand}. 
                  <a href="">
                    <span class="fa fa-pencil-square">
                    </span>
                  </a>
                  <br>
                  <span class="fa fa-star">&nbsp;${product.rating}
                  </span>
                <div class="row">
                  <div class="col-md-8 bg-light">
                    <!--carousel -->
                    <div id="demo" class="carousel slide" data-ride="carousel">
                      <!-- Indicators -->
                      <ul class="carousel-indicators">
                        <li data-target="#demo" data-slide-to="0" class="active">
                        </li>
                        <li data-target="#demo" data-slide-to="1">
                        </li>
                        <li data-target="#demo" data-slide-to="2">
                        </li>
                      </ul>
                      <!-- The slideshow -->
                      <div class="carousel-inner">
                        <div class="carousel-item active">
                          <img src="images/1.jfif" alt="Los Angeles" width="1100" height="500">
                        </div>
                        <div class="carousel-item">
                          <img src="images/2.png" alt="Chicago" width="1100" height="500">
                        </div>
                        <div class="carousel-item">
                          <img src="images/3.jfif" alt="New York" width="1100" height="500">
                        </div>
                      </div>
                      <!-- Left and right controls -->
                      <a class="carousel-control-prev" href="#demo" data-slide="prev">
                        <span class="carousel-control-prev-icon">
                        </span>
                      </a>
                      <a class="carousel-control-next" href="#demo" data-slide="next">
                        <span class="carousel-control-next-icon">
                        </span>
                      </a>
                    </div>
                    <center>
                      <br>Product Images
                    </center>
                  </div>
                  <div class="col-md-4 ">
                    <b> Product Description
                    </b>&nbsp;&nbsp;
                    <a href="">
                      <span class="fa fa-pencil-square">
                      </span>
                    </a>
                    <br>
                    <div class="form-group">
                      <br>
                      <textarea rows="5" id="comment" readonly>${product.description}                      </textarea>
                    </div>
                  </div>
                </div>
                </p>
            </div>
            <!--first tab Prioducts section ends here-->
            <div id="menu1" class="container tab-pane fade">
              <br>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <a class="btn btn-dark form-rounded" href="FetchCategoryServlet" style="width:30%; position: absolute; bottom: 50px; right: 20px;">Add
        </a>
        <br>
        <button class="btn btn-secondary form-rounded" style="width:30%;  position: absolute; bottom: 0; right: 20px;"  type="cancel">Cancel
        </button>
      </div>    
      
    </div>
  </body>
</html>
