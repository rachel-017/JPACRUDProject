<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About ${creature.name}</title>
</head>
<body>

	<c:choose>
		<c:when test="${empty creature.id}">

			<p>There aren't any Creatures with that ID</p>

		</c:when>
		<c:otherwise>
			<h2>Get to know ${creature.name}!</h2>
			<br>
			<div class="info">
				ID Number: ${creature.id} 
				<br>
				Arrived at Magi-Ranch on ${creature.dateArrived} 
				<br> 
				${creature.name} is a ${creature.gender} ${creature.species}, 
				and ${creature.age} years old. 
				<br> 
				${creature.name} lives in the ${creature.housing}. 
				<br>
				${creature.name}'s Personality: ${creature.personality}
			</div>
			<br>
			<div class="speciesinfo">
				<h4>About ${creature.species}s</h4>
				${creature.species}s are ${creature.diet}s 
			</div>

		</c:otherwise>
	</c:choose>
	<a href="home.do">Go Home</a>
	<br />

</body>
</html>