


<div> 





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



