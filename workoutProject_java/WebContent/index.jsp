<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			style="background-color: darkgreen">
			<div>
				<a class="navbar-brand"> Work Out Creator </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Groups</a></li>
			</ul>
			
						<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/addDistance"
					class="nav-link">ADD Detail</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${group != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${group == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${group != null}">
            			Edit Group
            		</c:if>
						<c:if test="${group == null}">
            			Add New group
            		</c:if>
					</h2>
				</caption>

				<c:if test="${groupr != null}">
					<input type="hidden" name="num" value="<c:out value='${group.num}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Name</label> <input type="text" value="<c:out value='${group.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>
<fieldset class="form-group">
					<label>Group: </label> <select  var ="groupnum" id="groupnum" name ="groupnum">
						  <option value="1">1</option>
						  <option value="2">2</option>
						  <option value="3">3</option>
						  <option value="4">4</option>
						  <option value="5">5</option>
			</select>
				</fieldset>
				
				<fieldset class="form-group">
					<label>Set number: </label> <select id="setsnum" name="setsnum">
						  <option value="1">1</option>
						  <option value="2">2</option>
						  <option value="3">3</option>
						  <option value="4">4</option>
						  
						  <option value="5">5</option>
			</select>
				</fieldset>
				
				<fieldset class="form-group">
					<label>Sport: </label> <input type="text" value="<c:out value='${group.sport}' />" class="form-control"
						name="sport">
				</fieldset>

				

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>










