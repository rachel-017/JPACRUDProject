<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Creature File Deletion</title>
</head>
<body>

	<h2>Results:</h2>
	<c:choose>
		<c:when test="${ empty creature}">
			<p>${creature.name}'s file has been successfully deleted</p>
		</c:when>
		<c:otherwise>
			<p>The file could not be deleted</p>
		</c:otherwise>
	</c:choose>

	<a href="home.do">Go Home</a>
	<br />
</body>
</html>