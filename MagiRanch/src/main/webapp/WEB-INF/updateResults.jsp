<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Results</title>
</head>
<body>

<c:choose>
		<c:when test="${empty creature}">
			<p>The Creature file could not be updated</p>
			
		</c:when>
		<c:otherwise>
			<p>--The file has been updated!--</p>
			<p>New File:</p>
				<ul>
					<li>${creature.id}</li>
					<li>${creature.species}</li>
					<li>${creature.name}</li>
					<li>${creature.age}</li>
					<li>${creature.gender}</li>
					<li>${creature.diet}</li>
					<li>${creature.housing}</li>
					<li>${creature.personality}</li>
					<li>${creature.dateArrived}</li>
				</ul>
		</c:otherwise>
	</c:choose>
	
	<a href="home.do">Go Home</a><br/>
</body>
</html>