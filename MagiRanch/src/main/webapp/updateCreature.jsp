<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Creature File</title>
</head>
<body>

<form action="updateCreature.do" method="POST">
		<p><label for = "id">ID of Creature to Update: </label>
		<input type="text" name="id" size="5"></p>
	
		<p><label for = "species">Species:</label>
		<input type="text" name="species" size="10"/></p>
		
		<p><label for = "name">Name:</label>
		<input type="text" name="name" size="7"/></p>
		
		<p><label for = "age">Age:</label>
		<input type="text" name="age" size="5"/></p>
		
		<p><label for = "age">Gender:</label>
		<input type="text" name="age" size="5"/></p>
		
		<p><label for = "age">Diet:</label>
		<input type="text" name="age" size="5"/></p>
		
		<p><label for = "age">Housing:</label>
		<input type="text" name="age" size="7"/></p>
		
		<p><label for = "personality">Personality:</label>
		<input type="text" name="personality" size="30"/></p>
		
		<p><label for = "dateReceived">Date Arrived:</label>
		<input type="text" name="date_received" size="10"/></p>
		
		<p><input type="submit" value = "Update"/></p>
	</form> 
</body>
</html>