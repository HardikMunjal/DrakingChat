<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
  <style>.mt-100 {
    margin-top: 100px; 
}
.mb-100 {
    margin-bottom: 100px;
}

.icon {
    width: 32px;
    height: 32px;
    text-align: center;
    padding: 7px 8px;
    border: 2px solid;
    border-radius: 50%;
}

.header {
    padding-top: 50px;
    background-color: #eee;
    overflow: hidden;
}
.footer {
    color: #887;
    background-color: #eee;
    padding-top: 30px;
    padding-bottom: 30px;
}

.content {
    position: relative;
    display: table;
    width: 100%;
    min-height: 100vh;
}
.pull-middle {
    display: table-cell;
    vertical-align: middle;
}

.btn {
    padding-left: 25px;
    padding-right: 25px;
}
.btn-circle {
    border-radius: 20px;
}

.input-group input {
    border: 0;
    box-shadow: none;
    padding-right: 30px;
}
.input-group input:focus,
.input-group input:active {
    outline: 0;
    box-shadow: none;
}
.input-group-btn:last-child>.btn {
    z-index: 2;
    margin-left: -18px;   
    border-radius: 20px;
}

.phone {
    position: relative;
    max-width: 263px;
    margin: 0 auto;
    padding: 65px 15px 55px;
    border: 2px solid #ddd;
    border-radius: 20px;
    background-color: #222;
    box-shadow: 20px 20px 40px #887;
}
</style>
</head>
<body>


 
<div class="wrapper">
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand text-uppercase" href="#"><span class="label label-success text-capitalize">Drakulaaz</span></a>

     
        </div>
    
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navigation">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">About Us</a></li>
                <li><a href="#">Why Draka</a></li>
                <li><button type="button" class="btn btn-success navbar-btn btn-circle">Sign in</button></li>
            </ul>
        </div>
      </div>
    </nav>
    <header class="header">
        <div class="container">
          <div class="row">
            <div class="col-md-5 col-md-offset-1">
                <div class="content">
                  <div class="pull-middle">
                  
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <form action="#" role="form">
                                <div class="input-group">
                                   <input type="email" class="form-control" placeholder="Email Address" required>
                                   <input type="password" class="form-control" placeholder="Password" required>
                                    <span class="input-group-btn">
                                      <button class="btn btn-success btn-circle" type="submit">Login</button>
                                    </span>                        
                                </div>
                            </form>
                            
                        </div>
                         
                   
                    </div>
                     <button type="button" class="btn btn-warning">Sign Up</button>
  <a class="btn btn-info" href="https://www.facebook.com/dialog/oauth?client_id=758610000925041&redirect_uri=http://localhost:3000/shivi/FetchUserDetails/">Sync with facebook</a>
       
                  </div>              
                </div>
            </div>
            <div class="col-md-4 col-md-offset-1 text-center mt-100 mb-100">
                <div class="phone">
                    <img class="img-responsive img-rounded" src=<c:url value="/resources/Images/Capture.PNG"/>  style="position:center; width: 235px; height: 250px;"></div>
     
                </div>
            </div>
          </div>
      
    </header>
   
    
   </div>


 
 
 
</body>
</html>