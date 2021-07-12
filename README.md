# JPACRUDProject

This project was made to demonstrate how MYSQLWorkbench, and Spring can be used to create, read, update and delete (CRUD) data.

## Usage

Features are accessed through localhost:8082. From there the user is able to choose from performing a search, adding a new creature file, updating a creature file, or deleting a creature file. If they choose the search they are displayed the search results, and can click a link to return to the home page. Choosing to add a new creature file navigates the user to a page with a form that asks for the new creature's information. If the user clicks update, they are taken to a similar looking form and must enter the updated information. After submitting a new file or an updated file, the user is shown the results of their attempted action, and a link to return to the home page. If the user chooses to delete a file they are taken to a page where they can enter the id number of the creature to be deleted. After submitting the deletion the user is shown if the deletion was successful or not.

## Technologies used

- Gradle
- Spring
- MYSQLWorkbench
- DAO
- JSP View Resolver

## Lessons Learned

It is extremely important to pay attention to every change made when working with so many files. I found it helpful to keep physical notes next to me during the project to help follow all the breadcrumbs of the application. I also learned how helpful the "Problems" view in Eclipse is for finding and solving program errors.
