<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Work Out Creator</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>




	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: green">
			<div>
				<a class="navbar-brand"> Work Out Creator </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Groups</a></li>
			</ul>
			
						<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/addDistance"
					class="nav-link">Add Detail</a></li>
			</ul>
		</nav>
	</header>
	
	<br>
	<div class="container col-md-5">
		
				
				<c:if test="${group == null}">
					<form action="insertDistance" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${group != null}">
            			Edit Group
            		</c:if>
						<c:if test="${group == null}">
            			Add Detail 
            		</c:if>
					</h2>
				</caption>
                    
                    
                    
				<div id = "main1">

	
				  <div style="display:block;" id = "select1">

				<fieldset class="form-group">
					<label>Group: </label> <select  var ="groupnum" id="groupnum" name ="groupnum">
						  <option value="1">1</option>
						  <option value="2">2</option>
					
			</select>
				</fieldset>
				
				<fieldset class="form-group">
					<label>Set number: </label> <select id="setsnum" name="setsnum">
						  <option value="1">1</option>
						  <option value="2">2</option>
			</select>
				</fieldset>
				
				<fieldset class="form-group">
					<label>The distance for this group:</label> <input type="text" value="<c:out value='${group.distance}' />" 
						name="distance" id="distance">

					<label>X  </label> <select name ="split" id="split">
						  <option value="1">1</option>
						  <option value="2">2</option>
						  <option value="3">3</option>
						  <option value="4">4</option>
						  <option value="5">5</option>
									</select>
									
									<select name ="unit" id="unit">
						  <option value="meter">Meter</option>
						  <option value="km">KM</option>
						  <option value="feet">feet</option>
		
									</select>
				</fieldset>
				
				<fieldset class="form-group">
					<label>Planed Duration:</label> <input type="text" value="<c:out value='${group.duration}' />" 
						name="duration" id="duration">
						</fieldset>
						
						
				</div>
				
					<sql:setDataSource
					        var="myDS"
					        driver="com.mysql.jdbc.Driver"
					        url="jdbc:mysql://localhost:3306/workout"
					        user="root" password="WYing2402"
					    />
					     
					    <sql:query var="lisGroup1"   dataSource="${myDS}">
					        SELECT DISTINCT name,sport FROM `group` where groupnum = 1 and setsnum = 1;
			
					    </sql:query>







				<div style="display: none;" id= "group1">
				
				
				 <caption><h2 >Group <span id="groupid"></span></h2></caption>
              <c:forEach var="user" items="${lisGroup1.rows}">                       
                  <c:out value="${user.name}" />    
            </c:forEach>
             <caption><h2 >Set <span id="setid"></span></h2></caption>
             <c:forEach var="user" items="${lisGroup1.rows}">                       
                  <c:out value="${user.sport}" />    
            </c:forEach>
            
            <table  id = "my-table" cellpadding="5" cellspacing="5" border="1">
            <td>name</td>
             <c:forEach var="user" items="${lisGroup1.rows}">
             <tr>
           <td>  <c:out value="${user.name}" /></td>
  
            </tr>
            </c:forEach>
        </table>
		</div>
 
				
          <br>
  
          <input style="display: block;" id= "submit1" type="button" value="Print" onClick="addtable1();groupid();setid();showhidden();" >
          <br>
          <br>
          <br>
          </div>
          
                    
                    
          
          <div style="display:none;" id="main2">
          
          <div style="display:block;" id = "select2">
          
          <fieldset class="form-group">
					<label>Group: </label> <select  var ="groupnum" id="groupnum2" name ="groupnum">
						  <option value="1">1</option>
						  <option value="2">2</option>
					
			</select>
				</fieldset>
				
				<fieldset class="form-group">
					<label>Set number: </label> <select id="setsnum2" name="setsnum">
						  <option value="1">1</option>
						  <option value="2">2</option>
			</select>
				</fieldset>
				
				<fieldset class="form-group">
					<label>The distance for this group:</label> <input type="text" value="<c:out value='${group.distance}' />" 
						name="distance" id="distance2">

					<label>X  </label> <select name ="split" id="split2">
						  <option value="1">1</option>
						  <option value="2">2</option>
						  <option value="3">3</option>
						  <option value="4">4</option>
						  <option value="5">5</option>
									</select>
									
									<select name ="unit" id="unit2">
						  <option value="meter">Meter</option>
						  <option value="km">KM</option>
						  <option value="feet">feet</option>
		
									</select>
				</fieldset>
				
				<fieldset class="form-group">
					<label>Planed Duration:</label> <input type="time" value="<c:out value='${group.duration}' />" 
						name="duration" id="duration2">
						</fieldset>
						
          
          
          </div>
              
              
              
              
              <sql:setDataSource
					        var="myDS"
					        driver="com.mysql.jdbc.Driver"
					        url="jdbc:mysql://localhost:3306/workout"
					        user="root" password="WYing2402"
					    />
					     
					    <sql:query var="lisGroup2"   dataSource="${myDS}">
					        SELECT DISTINCT name,sport FROM `group` where groupnum = 1 and setsnum = 2;
			
					    </sql:query>
          
          
          
          				<div style="display: none;" id= "group2">
				
				
				 <caption><h2 >Group <span id="groupid2"></span></h2></caption>
              <c:forEach var="users" items="${lisGroup2.rows}">                       
                  <c:out value="${users.name}" />    
            </c:forEach>
             <caption><h2 >Set <span id="setid2"></span></h2></caption>
             <c:forEach var="users" items="${lisGroup2.rows}">                       
                  <c:out value="${users.sport}" />    
            </c:forEach>
            
            <table  id = "my-table2" cellpadding="5" cellspacing="5" border="1">
            <td>name</td>
             <c:forEach var="users" items="${lisGroup2.rows}">
             <tr>
           <td>  <c:out value="${users.name}" /></td>
  
            </tr>
            </c:forEach>
        </table>
		</div>
      <input style="display: none;" id= "submit2" type="button" value="Print" onClick="addtable2();groupid2();setid2();showhidden2();" >
        
</div> 
<br>
<br>
<br>




  <div style="display:none;" id="main3">
          
          <div style="display:block;" id = "select3">
          
          <fieldset class="form-group">
					<label>Group: </label> <select  var ="groupnum" id="groupnum3" name ="groupnum">
						  <option value="1">1</option>
						  <option value="2">2</option>
					
			</select>
				</fieldset>
				
				<fieldset class="form-group">
					<label>Set number: </label> <select id="setsnum3" name="setsnum">
						  <option value="1">1</option>
						  <option value="2">2</option>
			</select>
				</fieldset>
				
				<fieldset class="form-group">
					<label>The distance for this group:</label> <input type="text" value="<c:out value='${group.distance}' />" 
						name="distance" id="distance3">

					<label>X  </label> <select name ="split" id="split3">
						  <option value="1">1</option>
						  <option value="2">2</option>
						  <option value="3">3</option>
						  <option value="4">4</option>
						  <option value="5">5</option>
									</select>
									
									<select name ="unit" id="unit3">
						  <option value="meter">Meter</option>
						  <option value="km">KM</option>
						  <option value="feet">feet</option>
		
									</select>
				</fieldset>
				
				<fieldset class="form-group">
					<label>Planed Duration:</label> <input type="time" value="<c:out value='${group.duration}' />" 
						name="duration" id="duration3">
						</fieldset>
						
          
          
          </div>
              
              
              
              
              <sql:setDataSource
					        var="myDS"
					        driver="com.mysql.jdbc.Driver"
					        url="jdbc:mysql://localhost:3306/workout"
					        user="root" password="WYing2402"
					    />
					     
					    <sql:query var="lisGroup3"   dataSource="${myDS}">
					        SELECT DISTINCT name,sport FROM `group` where groupnum = 2 and setsnum = 1;
			
					    </sql:query>
          
          
          
          				<div style="display: none;" id= "group3">
			
				
				 <caption><h2 >Group <span id="groupid3"></span></h2></caption>
              <c:forEach var="users3" items="${lisGroup3.rows}">                       
                  <c:out value="${users3.name}" />    
            </c:forEach>
             <caption><h2 >Set <span id="setid3"></span></h2></caption>
             <c:forEach var="users3" items="${lisGroup3.rows}">                       
                  <c:out value="${users3.sport}" />    
            </c:forEach>
            
            <table  id = "my-table3" cellpadding="5" cellspacing="5" border="1">
            <td>name</td>
             <c:forEach var="users3" items="${lisGroup3.rows}">
             <tr>
           <td>  <c:out value="${users3.name}" /></td>
  
            </tr>
            </c:forEach>
        </table>
		</div>
		<br>
		<br>
		 <input style="display:block;" id= "submit3" type="button" value="Submit" onClick="addtable3();groupid3();setid3();showhidden3();" >
     <br>
     <br>
        
</div>
        
        
        

				<button type="submit" class="btn btn-success">Update</button>
				</form>
			
		
	
	
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	



	
	
	
	
	
	
	
	 <script>
	 
	 function setid(){
		 var x = document.getElementById("setsnum").value;
		  document.getElementById("setid").innerHTML = x;
		 
	 }
          function setid2(){
		 var y = document.getElementById("setsnum2").value;
		  document.getElementById("setid2").innerHTML = y;
		
		 
	 }
          function setid3(){
     		 var y = document.getElementById("setsnum3").value;
     		  document.getElementById("setid3").innerHTML = y;
     		
     		 
     	 }
	 
	 function groupid(){
		 var x = document.getElementById("groupnum").value;
		  document.getElementById("groupid").innerHTML = x;
		 
	 }
         
          function groupid2(){
		 var y = document.getElementById("groupnum2").value;
		  document.getElementById("groupid2").innerHTML = y;
		 
	 }

          function groupid3(){
		 var y = document.getElementById("groupnum3").value;
		  document.getElementById("groupid3").innerHTML = y;
		 
	 }
          
	 var groupnum1 = document.getElementById("groupnum").value;
	 
	 
	 function addtable1(){
	 var e = parseInt(document.getElementById("split").value);
    


    for (j = 0; j < e; j++) {
        var tbl = document.getElementById('my-table'), // table reference
            i;
       
        // open loop for each row and append cell
        for (i = 0; i < tbl.rows.length; i++) {
            createCell(tbl.rows[i].insertCell(tbl.rows[i].cells.length),i,'col');
        }
    }
    }
         
         
          function addtable2(){
	 var e = parseInt(document.getElementById("split2").value);
    


    for (j = 0; j < e; j++) {
        var tbl = document.getElementById('my-table2'), // table reference
            i;
       
        // open loop for each row and append cell
        for (i = 0; i < tbl.rows.length; i++) {
            createCell(tbl.rows[i].insertCell(tbl.rows[i].cells.length),i,'col');
        }
    }
    }
          
          
         
          function addtable(){
	 var e = parseInt(document.getElementById("split3").value);
    


    for (j = 0; j < e; j++) {
        var tbl = document.getElementById('my-table3'), // table reference
            i;
       
        // open loop for each row and append cell
        for (i = 0; i < tbl.rows.length; i++) {
            createCell(tbl.rows[i].insertCell(tbl.rows[i].cells.length),i,'col');
        }
    }
    }
    
    function createCell(cell, i, style) {
        var div = document.createElement('div'), // create DIV element
            txt = document.createTextNode('\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0'); 
        div.appendChild(txt);                    // append text node to the DIV
        div.setAttribute('class', style);        // set DIV class attribute
        div.setAttribute('className', style);    // set DIV class attribute for IE (?!)
        cell.appendChild(div);                   // append DIV to the table cell
  
    }
    
    function showhidden(){
    	
    	 
                 document.getElementById("submit1").style.display ="none";
                 document.getElementById("group1").style.display = 'block';
                 document.getElementById("submit2").style.display = 'block';
                 document.getElementById("main2").style.display ="block";
        document.getElementById("select2").style.display ="block";

         
         
    }
    function showhidden2(){
    	
   	 
        document.getElementById("submit2").style.display ="none";
        document.getElementById("group2").style.display = 'block';
        document.getElementById("submit3").style.display = 'block';
        document.getElementById("main3").style.display ="block";
        document.getElementById("select3").style.display ="block";



}
    function showhidden3(){
    	
      	 
        document.getElementById("submit3").style.display ="none";
        document.getElementById("group3").style.display = "block";
       
      



}
    
   
    
   
    </script>
</body>
</html>










