## JPACRUDProject - Week 9 Skill Distillery

### Overview

  A Full-Stack dynamic web application that shows information about Stocks!
   -- The original Stocks were created in a MySQL database that I manage, and users can update/delete/add to the database
   interactively through the webpages.  Incorporated Java code with data from a database, creating Java Entity Objects to be
   utilized in dynamic JSP web pages.
  
  User Story #1:
  -------------
  A user is brought to a home page that displays the current portfolio of Stocks that are stored in a database.
  Each stock is a Java Entity that can be manipulated on the webpage in various ways.
  
  
  User Story #2:
  --------------
  On the homepage, a user is able to Search for a stock by it's ticker symbol, bringing them to an information page
  which displays an interactive stock chart for that company. More detailed information about the Stock is shown
  here as well, such as Analyst Price Targets/Upside, 52-Week High/Low, the exchange it is traded on, etc.
  
  
  User Story #3:
  --------------
  From the homepage, a user can Create a stock, and if they create an actual stock that exists with an accurate ticker symbol
  and the correct exchange it is traded on, the interactive stock chart will link up and work for it on the display page.
  
  
  User Story #4:
  --------------
  The user is able to Delete a stock from the portfolio list, removing it from the database, by it's ticker symbol.
  If the stock does not exist they are brought to an error page with the option of returning home from a navbar at the top.
  
  
  User Story #5:
  --------------
  The homepage displays the updated Portfolio from the database, originally starting with 10 stocks.
  As new stocks are created, old ones are edited or deleted, the portfolio on the homepage updates to
  show these changes.

### Technologies Used

- Spring Tool Suite

- Spring Boot & MVC Framework

- Hibernate

- Java Persistence API

- SQL/MySQL

- MySQL Workbench

- Apache Tomcat

- Gradle

- MAMP

- Java

- HTML/CSS/Bootstrap

- GitHub/Git

- Atom

### Lessons Learned

- Building a database with MySQL Workbench.  Making sure your primary key auto-increments, that you forward engineer and save the script
to reset the original database as needed.

- Incorporating Spring Boot with JPA, having two projects tied together with one root project.

- Using a DAO (Data accessor object) to grab data from the database to be used in the controller mappings so the Stock entity
can be displayed and have its data fields manipulated on a JSP web page through JSL.

- Passing parameters into the controller, and when to be explicit and use @RequestParam if you are calling them something different.

- The magic of bootstrap and dialing in my HTML/CSS knowledge a bit more.

- Passing boolean results from the DAO methods into the Controllers so you can dynamically change the JSP webpage without needing
an entirely new JSP page to show something simple like a success message.

- Adding dependencies to Gradle for @Value annotations, even though I didn't have time to get that to work.. that in combination with
form:form errors will be the next future update of this project.

- Having multiple routing paths in one Controller method to bring someone back to the home page from another page.

- Was very comfortable with Controller methods that returned the Model, forced myself to learn how to create them returning
a String. Omitting the prefix/suffix so I could just return the name of the jsp page for instance without the .jsp part in said
methods.


