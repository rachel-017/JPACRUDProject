<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Creature File!</title>
</head>
<body>

<h2><b>Enter New Creature Information:</b></h2>

	<form action="addCreature.do" method="POST">
	
		<p><label for = "species">Species:</label>
		<input type="text" name="species" size="10"/></p>
		
		<p><label for = "name">Name:</label>
		<input type="text" name="name" size="10"/></p>
		
		<p><label for = "age">Age:</label>
		<input type="text" name="age" size="5"/></p>
		
		<p><label for = "age">Gender:</label>
		<input type="text" name="age" size="8"/></p>
		
		<p><label for = "age">Diet:</label>
		<input type="text" name="age" size="12"/></p>
		
		<p><label for = "age">Recommended Housing:</label>
		<input type="text" name="age" size="15"/></p>
		
		<p><label for = "personality">Personality:</label>
		<input type="text" name="personality" size="30"/></p>
		
		
		<p><input type="submit" value = "Add"/></p>
	</form> 

</body>
</html>