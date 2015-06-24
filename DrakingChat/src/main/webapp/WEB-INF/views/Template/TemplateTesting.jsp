<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>

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
<script src="<c:url value="/resources/javascript/UserDefined/MovingImages.js" />"></script>
<script src="<c:url value="/resources/javascript/UserDefined/Angular/AngularCart.js" />"></script>
<script src="<c:url value="/resources/javascript/UserDefined/JavascriptCookiePush.js" />"></script>


<style type="text/css">
    
    .menu-disabled-true {
     color: red;
     }
</style>



</head>


<body ng-app="animateApp">
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
			<a class="navbar-brand" href="#">Hardik Munjal</a>
				<div class="profile-userpic">
					<img src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/p200x200/11083866_950312875013030_7885465492717904463_n.jpg?oh=7a30e797d1c5cb3f5a99ef2d9d4461c2&oe=55FAA592&__gda__=1441179641_cdd3fe3d799fc29e871a8dc95b1f3eaa" class="img-responsive" alt="">
				</div>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-sidebar-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-home"></span></a></li>
				<li ><a href="#">Profile<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-user"></span></a></li>
				<li ><a href="#">Messages<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-envelope"></span></a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Settings <span class="caret"></span><span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-cog"></span></a>
					<ul class="dropdown-menu forAnimate" role="menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li class="divider"></li>
						<li><a href="#">Separated link</a></li>
						<li class="divider"></li>
						<li><a href="#">One more separated link</a></li>
					</ul>
				</li>
				<li><a href="#">Home<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-home"></span></a></li>
				<li ><a href="#">Profile<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-user"></span></a></li>
				<li ><a href="#">Messages<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-envelope"></span></a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Settings <span class="caret"></span><span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-cog"></span></a>
					<ul class="dropdown-menu forAnimate" role="menu">
						<li><a href="#">Action</a></li>
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

<div class="main">

  <div id="check"></div>
        <ul id="menu">
  <li><a href="/DrakaPlatform">Why Draka</a></li>
  <li><a href="/Stylised Menu">Menu</a></li>
  <li><a href="/grid">Grid</a></li>
  <li><a href="/3d">3d transformation</a></li>
        </ul> 



      <script type="text/javascript">

             var animateApp = angular.module('animateApp', ['ngRoute', 'ngAnimate', 'ui.bootstrap']);

             animateApp.config(function ($routeProvider) {
                 $routeProvider
                                                     .when('/', {
                                                         templateUrl: '/partial/'

                                                     })
                                                     .when('/about', {
                                                         templateUrl: '/partial/page-aboutTest.ejs',
                                                         controller: 'aboutController'
                                                     })
                                                     .when('/contact/:id', {
                                                         templateUrl: '/partial/page-home3Test.ejs'

                                                     });

             });


             animateApp.controller('JustCtrl', function ($scope, $http, $routeParams) {
                 $scope.ptis = [];
                 // Simple GET request example :
                 debugger;
                 $http.get('https://gist.githubusercontent.com/idhamperdameian/239cc5a4dbba4488575d/raw/0a2ea4c6c120c9a8f02c85afcf7a31941ef74d3a/ptis.json').
                                                 success(function (data, status, headers, config) {
                                                     // this callback will be called asynchronously
                                                     // when the response is available
                                                     $scope.ptis = data[$routeParams.id];
                                                     $scope.myInterval = 3000;
                                                     $scope.slides = [
                                 {
                                     image: 'http://lorempixel.com/400/200/'
                                 },
                                 {
                                     image: 'http://lorempixel.com/400/200/food'
                                 },
                                 {
                                     image: 'http://lorempixel.com/400/200/sports'
                                 },
                                 {
                                     image: 'http://lorempixel.com/400/200/people'
                                 }
                               ];

                                                 }).
                                                 error(function (data, status, headers, config) {
                                                     // called asynchronously if an error occurs
                                                     // or server returns response with an error status.
                                                 });

             }).controller('MyController', ['$scope', function ($scope) {
                 $scope.username = $scope.ptis;




             } ]);

         
         
</script>
 <div class="{{ pageClass }}" ng-view></div>
   

</div>
</body>
</html>
