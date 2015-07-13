<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<link rel="stylesheet" href= "<c:url value="/resources/stylesheets/MovingImages.css" />">
<script src="<c:url value="/resources/javascript/UserDefined/MovingImages.js" />"></script>




</head>


<body>

<div class="main">



<div align="left">

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

      </div>
      
         
<br><br><br><br>
<input type=button onClick=ask() value='Draka Is Coming'>
<input type=button onClick=reset1() value='Get Original'>
<div id='msg'></div>

        <p>oops, jquery cookie</p>
       
   </div>
       
        


</div>
</body>
</html>
