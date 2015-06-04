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

<!--Bootstrap Library-->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>



<link rel="stylesheet" href= "<c:url value="/resources/stylesheets/style.css" />">


<script src="<c:url value="/resources/javascript/jquery-cookie.js" />"></script>





    <style>/* entire container, keeps perspective */
.flip-container {
	perspective: 1000;
}
	/* flip the pane when hovered */
	.flip-container:hover .flipper, .flip-container.hover .flipper {
		transform: rotateY(180deg);
	}

.flip-container, .front, .back {
	width: 320px;
	height: 480px;
}

/* flip speed goes here */
.flipper {
	transition: 0.6s;
	transform-style: preserve-3d;

	position: relative;
}

/* hide back of pane during swap */
.front, .back {
	backface-visibility: hidden;

	position: absolute;
	top: 0;
	left: 0;
}

/* front pane, placed above back */
.front {
	z-index: 2;
	/* for firefox 31 */
	transform: rotateY(0deg);
}

/* back, initially hidden pane */
.back {
	transform: rotateY(180deg);
}
    </style>

<link rel="stylesheet" href= "<c:url value="/resources/stylesheets/style.css" />">
<link rel="stylesheet" href= "<c:url value="/resources/stylesheets/MenuIcons.css" />">
<link rel="stylesheet" href= "<c:url value="/resources/stylesheets/GlobalPage.css" />">
<link rel="stylesheet" href= "<c:url value="/resources/stylesheets/MovingImages.css" />">
<link rel="stylesheet" href= "<c:url value="/resources/stylesheets/PanelShadow.css" />">


<script src="<c:url value="/resources/javascript/UserDefined/CookieOnPageLoading.js" />"></script>
<script src="<c:url value="/resources/javascript/UserDefined/MovingImages.js" />"></script>
<script src="<c:url value="/resources/javascript/UserDefined/Angular/AngularCart.js" />"></script>


   

  
   


<style type="text/css">
    
    .menu-disabled-true {
     color: red;
     }
    
</style>

    

</head>
<body>

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
<!-- Content Here -->
  <div id="check"></div>

        <ul id="menu">
  <li><a href="/DrakaPlatform">Why Draka</a></li>
  <li><a href="/Stylised Menu">Menu</a></li>
  <li><a href="/grid">Grid</a></li>
  <li><a href="/3d">3d transformation</a></li>
</ul> 
       



<form ng-submit="OnSubmit()" ng-controller="StartUpController">

Starting: <input ng-change="computeNeeded()" ng-model="funding.startingEstimate">
Recommendation: {{funding.needed}}

<button>Fund mystartup</button>
</form>
                  

       
       <div id="H1">     <img class="example" id="H" src=<c:url value="/resources/Images/H.gif"/>  style="position:absolute; left: 500; top: 100; width: 35px; height: 50px;"></div>
       <div id="A1">     <img class="example" id="A" src=<c:url value="/resources/Images/A.gif"/>  style="position:absolute; left: 500; top: 100; width: 30px; height: 40px;"></div> 
       <div id="R1">     <img class="example" src=<c:url value="/resources/Images/R.gif"/>  style="position:absolute; left: 500; top: 100; width: 30px; height: 40px;"> </div>
       <div id="D1">     <img class="example" src=<c:url value="/resources/Images/D.gif"/>  style="position:absolute; left: 500; top: 100; width: 30px; height: 40px;">  </div>
       <div id="I1">     <img class="example" src=<c:url value="/resources/Images/I.gif"/>  style="position:absolute; left: 500; top: 100; width: 30px; height: 40px;">  </div>
       <div id="K1">     <img class="example" src=<c:url value="/resources/Images/K.gif"/>  style="position:absolute; left: 500; top: 100; width: 30px; height: 40px;">  </div>
       <div id="M1">     <img class="example" id="M" src=<c:url value="/resources/Images/M.gif"/>  style="position:absolute; left: 500; top: 100; width: 35px; height: 50px;"></div>         
       <div id="U1">     <img class="example" id="U" src=<c:url value="/resources/Images/U.gif"/>  style="position:absolute; left: 500; top: 100; width: 30px; height: 40px;"></div> 
       <div id="N1">     <img class="example" src=<c:url value="/resources/Images/N.gif"/>  style="position:absolute; left: 500; top: 100; width: 30px; height: 40px;"> </div>
       <div id="Z1">     <img class="example" src=<c:url value="/resources/Images/Z.gif"/>  style="position:absolute; left: 500; top: 100; width: 30px; height: 40px;">  </div>
       <div id="A2">     <img class="example" src=<c:url value="/resources/Images/A.gif"/>  style="position:absolute; left: 500; top: 100; width: 30px; height: 40px;">  </div>
       <div id="A3">     <img class="example" src=<c:url value="/resources/Images/A.gif"/>  style="position:absolute; left: 500; top: 100; width: 30px; height: 40px;">  </div>
       <div id="A4">     <img class="example" src=<c:url value="/resources/Images/A.gif"/>  style="position:absolute; left: 500; top: 100; width: 30px; height: 40px;">  </div>
       <div id="L1">     <img class="example" src=<c:url value="/resources/Images/L.gif"/> style="position:absolute; left: 500; top: 100; width: 30px; height: 40px;">  </div>
         
         
<br><br><br><br>
<input type=button onClick=ask() value='Draka Is Coming'>
<input type=button onClick=reset1() value='Get Original'>
<div id='msg'></div>

            

    <div ng-controller='DeathrayMenuController'>
<ul>
<li class='menu-disabled-{{isDisabled}}' ng-click='stun()'>Change my color :)</li>

</ul>
<div/>

        <p>oops, jquery cookie</p>

        <div ng-controller="MyCtrl">
       <input type="text" ng-model="foo" placeholder="Enter something" />
       <input type="button" ng-click="doSomething()" value="Send" ng-disabled="foo == null" />
   </div>
       
        <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
	<div class="flipper">
		<div class="front">
			<img src=Images/H.gif  style="position:absolute; left: 500; top: 100; width: 35px; height: 50px;">
		</div>
		<div class="back">
			<img src=Images/A.gif  style="position:absolute; left: 500; top: 100; width: 35px; height: 50px;">
		</div>
	</div>
</div>


<script>
$(document).ready(function(){
    $("p").click(function(){


        $.cookie.json = true;

     var user = [{ name: "name", age: 25 },{ name: "name", age: 25 }]

     user.push({ name: "hardik", age: 25 });

$.cookie('user', user);
var currentUser = $.cookie('user');
alert('User name is ' + currentUser[2].name);
    });
});
</script>






<P>  The time on the server is ${serverTime}. </P>

</div>



</body>
</html>
