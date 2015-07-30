
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="req" value="${pageContext.request}" />
<c:set var="url">${req.requestURL}</c:set>
<c:set var="base" value="${fn:substring(url, 0, fn:length(url) - fn:length(req.requestURI))}${req.contextPath}/" />

<%@ page session="false" %>
<!DOCTYPE html>

<html lang="en" ng-app="AngularSpringApp">

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
<link rel="stylesheet" href= "<c:url value="/resources/stylesheets/style.css" />">



</head>


<body> 





        <ul id="menu">
  <li><a href="#/users">Users</a></li>
  <li><a href="#/cars">Social</a></li>
          </ul> 



  
    
   



  
  

 <div ng-view></div>
 <script src="${base}/resources/js/lib/angular/angular.js"></script>
<script src="${base}/resources/js/app.js"></script>
<script src="${base}/resources/js/services.js"></script>
<script src="${base}/resources/js/controllers/RailwayStationController.js"></script>
<script src="${base}/resources/js/controllers/CarController.js"></script>
<script src="${base}/resources/js/controllers/TrainController.js"></script>
<script src="${base}/resources/js/controllers/UserController.js"></script>
<script src="${base}/resources/js/filters.js"></script>
<script src="${base}/resources/js/directives.js"></script>
</body>
</html>