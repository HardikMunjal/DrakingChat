<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="req" value="${pageContext.request}" />
<c:set var="url">${req.requestURL}</c:set>
<c:set var="base" value="${fn:substring(url, 0, fn:length(url) - fn:length(req.requestURI))}${req.contextPath}/" />

<%@ page session="false" %>
<!DOCTYPE html>

<html lang="en" ng-app="AngularSpringApp">

<head>
 <script src="http://d3js.org/d3.v3.min.js" language="JavaScript"></script>

    <style>
        .liquidFillGaugeText { font-family: Helvetica; font-weight: bold; }
    </style>
    
    <style>
			body {
				font-family: "Helvetica Neue", Helvetica;
			}
		
			/* tell the SVG path to be a thin blue line without any area fill */
			path {
				stroke-width: 1;
				fill: none;
			}
			
			.data1 {
				stroke: green;
			}

			.data2 {
				stroke: orange;
			}
			
			.axis {
			  shape-rendering: crispEdges;
			}

			.x.axis line {
			  stroke: lightgrey;
			}

			.x.axis .minor {
			  stroke-opacity: .5;
			}

			.x.axis path {
			  display: none;
			}
			
			.x.axis text {
				font-size: 10px;
			}

			.y.axis line, .y.axis path {
			  fill: none;
			  stroke: #000;
			}
			
			.y.axis text {
				font-size: 12px;
			}

			
			
		</style>

<style>

#sidebar-wrapper {
  margin-left: -240px;
  left: 240px;
  width: 240px;
  
  position: fixed;
  height: 100%;
  overflow-y: auto;
 }
 
</style>
<style>
body {
    width:100px;
	height:100px;
  background: -webkit-linear-gradient(90deg, #16222A 10%, #3A6073 90%); /* Chrome 10+, Saf5.1+ */
  background:    -moz-linear-gradient(90deg, #16222A 10%, #3A6073 90%); /* FF3.6+ */
  background:     -ms-linear-gradient(90deg, #16222A 10%, #3A6073 90%); /* IE10 */
  background:      -o-linear-gradient(90deg, #16222A 10%, #3A6073 90%); /* Opera 11.10+ */
  background:         linear-gradient(90deg, #16222A 10%, #3A6073 90%); /* W3C */
font-family: 'Raleway', sans-serif;
}

p {
	color:#CCC;
}

.spacing {
	padding-top:7px;
	padding-bottom:7px;
}
.middlePage {
	width: 60%;
    height: 25%;
    position: absolute;
    top:22%;
    bottom: 0%;
    left: 0%;
    right: 0%;
    margin: auto;
}

.logo {
	color:#CCC;
}</style>


<!-- Angular js libraries -->
<script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<!-- Bootrsap css -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<!-- Bootstrap Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link rel="stylesheet" href= "<c:url value="/resources/stylesheets/MonochromicBackground.css" />">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="<c:url value="/resources/javascript/WidthRatioUncheckrd.js" />"></script>
<!--Angular Library-->
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
 <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.13/angular-route.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.13/angular-animate.js"></script>
<!--Bootstrap Library-->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<link rel="stylesheet" href= "<c:url value="/resources/stylesheets/style.css" />">
<script src="<c:url value="/resources/javascript/jquery-cookie.js" />"></script>
<link rel="stylesheet" href= "<c:url value="/resources/stylesheets/style.css" />">
<link rel="stylesheet" href= "<c:url value="/resources/stylesheets/MenuIcons.css" />">
<link rel="stylesheet" href= "<c:url value="/resources/stylesheets/GlobalPage.css" />">
<link rel="stylesheet" href= "<c:url value="/resources/stylesheets/MovingImages.css" />">
<link rel="stylesheet" href= "<c:url value="/resources/stylesheets/PanelShadow.css" />">
<!--   <link rel="stylesheet" href= "<c:url value="/resources/stylesheets/Flipper.css" />">  -->
<link rel="stylesheet" href= "<c:url value="/resources/stylesheets/Flipcard.css" />">
<link rel="stylesheet" href= "<c:url value="/resources/stylesheets/BackgroundBizzer.css" />">
<script src="<c:url value="/resources/javascript/UserDefined/CookieOnPageLoading.js" />"></script>

<script src="<c:url value="/resources/javascript/UserDefined/Angular/AngularCart.js" />"></script>
<script src="<c:url value="/resources/javascript/UserDefined/JavascriptCookiePush.js" />"></script>


<link rel="stylesheet" href="resources/css/app.css"/>
    <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css" />


<style type="text/css">
    
    .menu-disabled-true {
     color: red;
     }
</style>



</head>


<body> 
<div ng-controller="DataFetchControl">
<c:url value="/j_spring_security_logout" var="logoutUrl" />  

<div id="wrapper1">
    <div id="sidebar-wrapper">

<nav class="navbar navbar-inverse sidebar" role="navigation">
    <div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-sidebar-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">{{ptis.first_name}} {{ptis.last_name}}</a>
				<div class="profile-userpic">
					<img ng-src="http://graph.facebook.com/{{ptis.sn_id}}/picture?type=large" class="img-responsive" alt="">
				</div>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-sidebar-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-home"></span></a></li>
				<li ><a href="#">Profile<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-user"></span></a></li>
				<li ><a href="#">Messages<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-envelope"></span></a></li>
				
				
			
					<a href="game" class="dropdown-toggle" data-toggle="dropdown"> <b>Games Corner</b> <span class="caret"></span><span style="font-size:26px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-th-large"></span></a>
					<ul class="dropdown-menu forAnimate" >
						
						<li><a href="game/cricket">Cricket</a></li>
						<li><a href="game/football">Football</a></li>
						<li><a href="game/movies">Movies</a></li>
						
					</ul>
			
				<li></li>
				
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Settings <span class="caret"></span><span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-cog"></span></a>
					<ul class="dropdown-menu forAnimate" role="menu">
						<li><a href="${logoutUrl}">Logout</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li class="divider"></li>
						<li><a href="#">Separated link</a></li>
						<li class="divider"></li>
						<li><a href="#">One more separated link</a></li>
					</ul>
				</li>
				
				
				
			</ul>
		</div>
	</div>
</nav>
</div>

<div class="main">

  <div id="check"></div>
        <ul id="menu">
  <li><a href="#/SocialProfile">Profile</a></li>
  <li><a href="#/cars">Social</a></li>
  <li><a href="#/popularity">Popularity</a></li>
  <li><a href="/test">Friends Zone</a></li>
  <li><a href="/3d">Games Zone</a></li>
  <li><a href="#/trains">Wild Cards</a></li>
  <li><a href="test">Testing</a></li>
  <li><a href="/grid">Grid</a></li>
  <li><a href="#/why">Why Draka</a></li>
   <li><a href="#/test1">Checking</a></li>
   
   
        </ul> 
      

<div id="wrapper">

   <br>
   <br>
    <br>
    <div class="middlePage">


<div class="panel panel-info">
 
  <div class="panel-body">
  
  <div class="row">
  



 <div ng-view></div>
 
    
    
</div>
    
</div>
</div>


    
   

</div>

<script src="${base}/resources/js/lib/angular/angular.js"></script>
<script src="${base}/resources/js/app.js"></script>
<script src="${base}/resources/js/services.js"></script>
<script src="${base}/resources/js/controllers/RailwayStationController.js"></script>
<script src="${base}/resources/js/controllers/CarController.js"></script>
<script src="${base}/resources/js/controllers/TrainController.js"></script>
<script src="${base}/resources/js/controllers/UserController.js"></script>
<script src="${base}/resources/js/controllers/CricketOngoingMatchesController.js"></script>

<script src="${base}/resources/js/filters.js"></script>
<script src="${base}/resources/js/directives.js"></script>
         
         

 

</div>
</div>
</div>
</body>
</html>