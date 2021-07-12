<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Magi-Ranch</title>
</head>
<body>

	<h1>Welcome to Magi-Ranch!</h1>

	<form action="getCreature.do" method="GET">
		Enter Creature ID Here: <input type="text" name="cid" size="4" /> <input
			type="submit" value="Search" />
	</form>
	<br>
	
	<p>
		Add a New Creature<a href="addCreature">&nbsp;Add</a>
		<br/>
		Update a Creature File<a href="updateCreature">&nbsp;Update</a>
		<br>
		Delete a Creature File<a href="deleteCreature">&nbsp;Delete</a>
	</p>

</body>
</html>