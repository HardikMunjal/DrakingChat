<!DOCTYPE html>
<html>
<script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<body>

<div ng-app="myApp" ng-controller="customersCtrl"> 


<style>
table, td, th {
    border: 4px solid yellow;
}

th {
    background-color: orange;
    color: white;
}
</style>


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
  <tr ng-repeat="x in names">
    <td>{{ x.SeriesId }}</td>
    <td>{{ x.SeriesName }}</td>
    <td><input type="radio" name="AdminControl" value="enable">Enable<br>
<input type="radio" name="AdminControl" value="disable">Disable</td>
<td><button>Add to Database</button></td>
    <td>{{ x.StartDate }}</td>
    <td>{{ x.EndDate }}</td>
    <td>{{ user.email }}</td>
    <td>{{ x.Schedule.Match[0].matchid }}</td>
    <td></td>
    <td><table style="margin:auto;border:solid; width:50%">
                <tr>
                    <th>Match Id</th> 
                    <th>Match No.</th>
                    <th>Status</th>
                    <th>Start Date</th>
                    <th>End Date</th>
                    <th> Team </th>
                    <th> Play </th>
                                       
                </tr>
                <tr ng-repeat="y in x.Schedule.Match">
                <td>{{y.matchid}}</td>
                <td>{{y.MatchNo}}</td>
                <td>{{y.status}}</td>
                <td>{{y.StartDate}}</td>
                <td>{{y.EndDate}}</td>
                <td><table style="margin:auto;border:solid; width:50%">
                <tr>
                    <th>Teams</th> 
                    
                   
                                       
                </tr>
                <tr ng-repeat="z in y.Team">
                <td>{{z.Team}}</td>
               
                
                </tr>
            </table></td>
                  <td><a href="match/{{y.matchid}}">Play</a></td>
                </tr>
            </table> </td>
   
 
   
  </tr>
</table>

<ul>
  <li ng-repeat="x in names">
    {{ x.SeriesId}}
  </li>
 
</ul>



</div>

<script>
var app = angular.module('myApp', []);
app.controller('customersCtrl', function($scope, $http) {
  $http.get("https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20cricket.series.ongoing&format=json&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0&callback=")
  .success(function (response) {$scope.names = response.query.results.Series;});
});
</script>

</body>
</html>
