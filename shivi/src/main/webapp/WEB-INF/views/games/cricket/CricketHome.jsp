<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page session="false" %>
<!DOCTYPE html>

<html lang="en" ng-app="AngularSpringApp">

<head>
  
 

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<!-- Bootstrap Latest compiled JavaScript -->
<!--Angular Library-->
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<!--Bootstrap Library-->


</head>


<body> 



<h1>bakschodi</h1>


<table>
<tr>
<th>Series Id</th>
<th>Series Name</th>
<th>Admin Enable Control</th>
<th>Sync with database</th>
<th>Start Date</th>
<th>End Date</th>
<th>Participant</th>
<th>Schedule</th>
<th>pending</th>
<th>Match Details</th>


</tr>
 </table>

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


<script src="/DrakingChat/resources/js/lib/angular/angular.js"></script>
<script src="/DrakingChat/resources/js/test.js"></script>
<script src="/DrakingChat/resources/js/services.js"></script>

<script src="/DrakingChat/resources/js/controllers/CarController.js"></script>

<script src="/DrakingChat/resources/js/controllers/CricketOngoingMatchesController.js"></script>

<script src="/DrakingChat/resources/js/filters.js"></script>
<script src="/DrakingChat/resources/js/directives.js"></script>
         
         

</div>
</div>

</body>
</html>