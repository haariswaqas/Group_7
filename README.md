# Group_7

 
UNIVERSITY OF GHANA
(All rights reserved)
COLLEGE OF BASIC AND APPLIED SCIENCES
SCHOOL OF ENGINEERING SCIENCEES
DEPARTMENT OF COMPUTER ENGINEERING
SECOND SEMESTER 2022/2023 ACADEMIC YEAR

Course Code & Title: CPEN 208 – Software Engineering
Course Instructor: Dr. John Korankye Assiamah
Teaching Assistant: Mr. Benjamin Sasu
Project: 2 

Dillan Ekow Hamah Hammond -	10952785
Adu-Gyamfi Michael Kwabena -	10980219
Waqas Haaris Ali -	10947015
Bernice Animwaa Boateng -	10980324
Enyima-Quansah Enoch -	10988268
Benneh Mensah Kwame Prince -	10976056
Kuayi Rapheal -	10970285

PROJECT 2 REPORT
MOBILE APPLICATION FOR SCHOOL OF ENGINEERING SCIENCES - UG

INTRODUCTION
The flutter app is a mobile application that provides features for user registration, login, and a dashboard for managing student information and tasks such as fees payment, assignments, projects, etc. The app utilizes various modules, libraries, and dart pages to implement these functionalities.

PROJECT STRUCTURE
•	The project is a mobile app developed using the Flutter framework.
•	The app provides features for user registration, login, and a dashboard for managing student information and tasks.
•	The project consists of several pages, including Homepage, Registration Page, Login Page, Dashboard Page, Student Profile Page, Assignments Page, Projects Page, Exams Page, Results Page, and Fees Payment Page.
•	Each page has its own layout, components, and functionality.
•	The Homepage displays information about the School of Engineering Sciences and allows users to explore different engineering departments.
•	The Registration Page includes a form for students to create an account with validation and error messages.
•	The Login Page allows students to log in to their accounts with email and password validation.
•	The Dashboard Page serves as the main interface for students to access various features and functionalities within the app.
•	The Student Profile Page displays the student's profile information and allows them to view and edit their personal details.
•	The Assignments Page displays a list of upcoming assignments and allows the user to mark them as completed.
•	The Projects Page displays a list of upcoming projects.
•	The Exams Page displays an exam timetable with the dates of upcoming exams.
•	The Results Page displays the CGPA and a table of course results.
•	The Fees Payment Page displays a table of payment data, including the date, description, and amount of each payment.

MAIN TECHNOLOGIES USED IN BUILDING THE SES MOBILE APPLICATION
•	Flutter is a UI framework for building native mobile applications. It was used as the main technology for developing the mobile app.
•	Dart is a programming language used with Flutter to write the app's logic and implement functionalities.

FLUTTER CLASSES & WIDGETS 
•	StatefulWidget is a Flutter class used for building components that can change their state over time.
•	MaterialApp is a Flutter class that provides a default app structure and layout, including navigation and theming.
•	ExpansionTile is a Flutter widget used to display collapsible content, such as the descriptions of engineering departments.
•	BottomNavigationBar is a Flutter widget used to display a bottom navigation bar with multiple items for easy navigation.
•	TextEditingController is a Flutter class used to control and manage the input fields in forms, such as the login page.
•	GlobalKey is a Flutter class used to access the state of a form and perform form validation, as seen in the login page.
•	CircleAvatar is a Flutter widget used to display circular profile pictures in the student profile page.
•	CheckboxListTile is a Flutter widget used to display a checkbox with a title and additional information, as seen in the assignments page.
•	PreferredSize is a Flutter widget used to set a preferred height for the app bar, as used in the dashboard page.
•	SingleChildScrollView is a Flutter widget used to enable scrolling when the content exceeds the available space, as seen in the profile, exams, and fees pages.
•	Padding is a Flutter widget used to add padding around the content of a widget, as seen in multiple pages.
•	Card is a Flutter widget used to display content in a card-like format, as seen in the assignments, projects, exams, and results pages.
•	ListTile is a Flutter widget used to display a single item in a list, as seen in the projects, exams, and results pages.
•	DataTable is a Flutter widget used to display tabular data, as seen in the results and fees pages.

HOMEPAGE
The HomePage component is a StatefulWidget that represents the home page of the application. It provides an overview of the School of Engineering Sciences and allows users to explore different engineering departments. Here's an overview of the key features and implementation details:
•	The app bar displays the title "Home" and a back button that allows users to navigate back to the previous screen.
•	The body of the page is divided into sections with relevant information about the school and its programs.
•	The engineering departments are displayed in an expansion tile format, allowing users to expand and collapse each department's description.
•	The "About Us" section provides additional information about the school's mission and goals.
•	The bottom navigation bar provides quick access to the home page, registration page, and dashboard.


 
REGISTRATION PAGE
The registration page consists of a form where students can enter their student ID, name, UG student mail, password, and confirm password. The form includes input validation to ensure that all required fields are filled out correctly and that the passwords match.
Upon successful registration, the user is navigated to the login page. The bottom navigation bar at the bottom of the screen provides links to the home page, registration page (current page), and login page.
The page's design features a gradient background and an app bar with a dark blue color. The form inputs are styled with white background colors and appropriate icons. Error messages are displayed below the form if any validation errors occur.
Overall, the registration page aims to provide a user-friendly and secure way for students to create an account within the School of Engineering Sciences system.

LOGIN PAGE
This page allows students to log in to their accounts within the School of Engineering Sciences system.
The Login Page is similar in design to the Registration Page. It consists of an app bar at the top with a dark blue background, a back button to navigate back, and a title displaying "Login". The body of the page includes a gradient background and a form for users to enter their email and password.
The form uses the TextEditingController class to control the input fields and the GlobalKey<FormState> to validate and manage the form state. The email and password fields are styled with white backgrounds and appropriate icons.
The form validation ensures that both email and password fields are filled out before allowing the form to be submitted. If any validation errors occur, error messages are displayed below the respective input fields.
Once the form is submitted and passes the validation, the login logic can be implemented. This could involve checking the entered email and password against a database or authentication service. After successful login, the user is navigated to the student dashboard by using the Navigator.pushReplacementNamed method.
The bottom navigation bar at the bottom of the screen provides links to the home page, registration page, and login page. The current page is highlighted as the "Login" option.
In summary, the LoginPage serves as an interface for students to enter their login credentials and access their accounts within the School of Engineering Sciences system.
  

DASHBOARD PAGE
The Dashboard page serves as the main interface for students to access various features and functionalities within the School of Engineering Sciences system.
The Dashboard class extends StatelessWidget and defines the layout and structure of the dashboard page. It includes an app bar with a transparent background and a title displaying "Dashboard". The app bar is wrapped in a PreferredSize widget to specify the preferred height of the app bar.
The drawer on the left side of the screen provides navigation options for the user. It includes a DrawerHeader with a black background and the text "Manage Tasks" in white. Below the header, there are three ListTiles: "Home", "Dashboard" (selected), and "Sign Out". Tapping on these options navigates the user to the corresponding pages using the Navigator.pushNamed method.
The bottom navigation bar at the bottom of the screen allows the user to navigate between different sections of the dashboard. It includes six BottomNavigationBarItems: "Profile", "Assignments", "Projects", "Exams", "Results", and "Fees". Each item is represented by an icon and a label. Tapping on these items navigates the user to the respective pages using the Navigator.pushNamed method.
The body of the page is centered and contains two Text widgets displaying welcome messages to the user.
In summary, the Dashboard page provides a centralized interface for students to access and manage various tasks, activities, and information within the School of Engineering Sciences system. The page includes an app bar, a drawer for navigation, a bottom navigation bar for section selection, and a centered body displaying welcome messages.

  
STUDENT PROFILE PAGE
The Profile page displays the student's profile information and allows them to view and edit their personal details.
The Profile class extends StatelessWidget and defines the layout and structure of the profile page. It includes an app bar with a title "Student Profile" and a blue background.
The drawer on the left side of the screen provides navigation options for the user. It includes a DrawerHeader with a black background and the text "Manage Tasks" in white. Below the header, there are three ListTiles: "Home", "Dashboard", and "Sign Out". Tapping on these options navigates the user to the corresponding pages using the Navigator.pushNamed method.
The body of the page is wrapped in a SingleChildScrollView to enable scrolling when the content exceeds the available space. It includes a Column with crossAxisAlignment set to CrossAxisAlignment.start. Inside the column, there is a Text widget displaying "Student Profile" with a font size of 20 and bold font weight.
In the center of the column, there is a Container with a fixed width and a white background. It contains the student's profile picture (displayed using a CircleAvatar), name, student ID, department, and email. Each detail is displayed using a combination of Text widgets.
The bottom navigation bar at the bottom of the screen allows the user to navigate between different sections of the dashboard. It includes six BottomNavigationBarItems: "Profile" (selected), "Assignments", "Projects", "Exams", "Results", and "Fees". Each item is represented by an icon and a label. Tapping on these items navigates the user to the respective pages using the Navigator.pushNamed method.
The Profile page provides a view of the student's profile information, including their profile picture, name, student ID, department, and email. It also includes navigation options in the app bar and drawer, allowing the user to switch between different sections of the dashboard.
 


ASSIGNMENTS PAGE
The Assignments page displays a list of upcoming assignments and allows the user to mark them as completed using checkboxes.
The Assignments class extends StatefulWidget and defines the layout and behavior of the assignments page. It includes an app bar with a title "Assignments" and a blue background.
The drawer on the left side of the screen provides navigation options for the user. It includes a DrawerHeader with a black background and the text "Manage Tasks" in white. Below the header, there are three ListTiles: "Home", "Dashboard", and "Sign Out". Tapping on these options navigates the user to the corresponding pages using the Navigator.pushNamed method.
The body of the page is wrapped in a Padding widget with padding set to EdgeInsets.all(16.0). It includes a Column with crossAxisAlignment set to CrossAxisAlignment.start. Inside the column, there is a Text widget displaying "Upcoming Assignments" with a font size of 20 and bold font weight.
Below the text, there are three Card widgets representing the upcoming assignments. Each Card includes a CheckboxListTile widget that displays the assignment's title, due date, and a checkbox indicating whether the assignment is completed. The values of the checkboxes are stored in boolean variables (_task1Completed, _task2Completed, _task3Completed), which are updated using the onChanged callback and setState method when the checkboxes are toggled.
The bottom navigation bar at the bottom of the screen allows the user to navigate between different sections of the dashboard. It includes six BottomNavigationBarItems: "Profile", "Assignments" (selected), "Projects", "Exams", "Results", and "Fees". Each item is represented by an icon and a label. Tapping on these items navigates the user to the respective pages using the Navigator.pushNamed method.
The Assignments page displays a list of upcoming assignments with checkboxes to mark them as completed. It also includes navigation options in the app bar and drawer, allowing the user to switch between different sections of the dashboard.

 PROJECTS PAGE
The Projects page displays a list of upcoming projects.
The Projects class extends StatelessWidget and defines the layout and behavior of the projects page. It includes an app bar with a title "Projects" and a blue background.
The drawer on the left side of the screen provides navigation options for the user, similar to the previous pages. It includes a DrawerHeader with a black background and the text "Manage Tasks" in white. Below the header, there are three ListTiles: "Home", "Dashboard", and "Sign Out". Tapping on these options navigates the user to the corresponding pages using the Navigator.pushNamed method.
The body of the page is wrapped in a SingleChildScrollView widget to enable scrolling when the content exceeds the available space. Inside the SingleChildScrollView, there is a Padding widget with padding set to EdgeInsets.all(16.0). It includes a Column with crossAxisAlignment set to CrossAxisAlignment.start. Inside the column, there is a Text widget displaying "Upcoming Projects" with a font size of 20 and bold font weight.
Below the text, there are four Card widgets representing the upcoming projects. Each Card includes a ListTile widget that displays the project's title and due date. Some projects have subtitles indicating additional details. The list of projects is hardcoded in the code but can be replaced with dynamic data from an external source.
The bottom navigation bar at the bottom of the screen is similar to the previous pages. It allows the user to navigate between different sections of the dashboard. It includes six BottomNavigationBarItems: "Profile", "Assignments", "Projects" (selected), "Exams", "Results", and "Fees". Each item is represented by an icon and a label. Tapping on these items navigates the user to the respective pages using the Navigator.pushNamed method.
In summary, the Projects page displays a list of upcoming projects. It includes navigation options in the app bar and drawer and a bottom navigation bar to switch between different sections of the dashboard.

 
EXAMS PAGE
The Exams page displays an exam timetable with the dates of upcoming exams.
The Exams class extends StatelessWidget and defines the layout and behavior of the exams page. It includes an app bar with the title "Exam Timetable" and a blue background.
The drawer on the left side of the screen provides navigation options for the user, similar to the previous pages. It includes a DrawerHeader with a black background and the text "Manage Tasks" in white. Below the header, there are three ListTiles: "Home", "Dashboard", and "Sign Out". Tapping on these options navigates the user to the corresponding pages using the Navigator.pushNamed method.
The body of the page is wrapped in a Padding widget with padding set to EdgeInsets.all(16.0). Inside the padding, there is a Column with crossAxisAlignment set to CrossAxisAlignment.start. Inside the column, there is a Text widget displaying "Exam Timetable" with a font size of 20 and bold font weight.
Below the text, there are three Card widgets representing the upcoming exams. Each Card includes a ListTile widget that displays the exam's title and date. The list of exams is hardcoded in the code but can be replaced with dynamic data from an external source.
The bottom navigation bar at the bottom of the screen is similar to the previous pages. It allows the user to navigate between different sections of the dashboard. It includes six BottomNavigationBarItems: "Profile", "Assignments", "Projects", "Exams" (selected), "Results", and "Fees". Each item is represented by an icon and a label. Tapping on these items navigates the user to the respective pages using the Navigator.pushNamed method.
In summary, the Exams page displays an exam timetable with the dates of upcoming exams. It includes navigation options in the app bar and drawer and a bottom navigation bar to switch between different sections of the dashboard.

 
RESULTS PAGE
The Results page displays the CGPA (Cumulative Grade Point Average) and a table of course results.
The Results class extends StatelessWidget and defines the layout and behavior of the Results page. It includes an app bar with a title "Results" and a blue background.
The drawer on the left side of the screen provides navigation options for the user, similar to the previous pages. It includes a DrawerHeader with a black background and the text "Manage Tasks" in white. Below the header, there are three ListTiles: "Home", "Dashboard", and "Sign Out". Tapping on these options navigates the user to the corresponding pages using the Navigator.pushNamed method.
The body of the page consists of a SingleChildScrollView wrapped in a Padding widget. Inside the padding, there is a Column with crossAxisAlignment set to CrossAxisAlignment.start. Inside the column, there is a Text widget displaying the CGPA with a font size of 20 and bold font weight.
Below the text, there is a SingleChildScrollView with a horizontal scroll direction. Inside it, there is a DataTable widget representing the course results table. The DataTable is populated with data from the paymentData list, which contains a list of maps representing each course result. Each map contains the course code, course title, and grade. The columns of the DataTable are defined using DataColumn widgets, and the rows are generated dynamically using the paymentData list.
The bottom navigation bar at the bottom of the screen is similar to the previous pages. It allows the user to navigate between different sections of the dashboard. It includes six BottomNavigationBarItems: "Profile", "Assignments", "Projects", "Exams", "Results" (selected), and "Fees". Each item is represented by an icon and a label. Tapping on these items navigates the user to the respective pages using the Navigator.pushNamed method.
In summary, the Results page displays the CGPA and a table of course results. It includes navigation options in the app bar and drawer and a bottom navigation bar to switch between different sections of the dashboard.
 
FEES PAYMENT PAGE
The Fees page displays a table of payment data, including the date, description, and amount of each payment.
The Fees class extends StatelessWidget and defines the layout and behavior of the Fees page. It includes an app bar with a title "Fees" and a blue background.
The drawer on the left side of the screen provides navigation options for the user, similar to the previous pages. It includes a DrawerHeader with a black background and the text "Manage Tasks" in white. Below the header, there are three ListTiles: "Home", "Dashboard", and "Sign Out". Tapping on these options navigates the user to the corresponding pages using the Navigator.pushNamed method.
The body of the page consists of a SingleChildScrollView wrapped in a Padding widget. Inside the padding, there is a Column with crossAxisAlignment set to CrossAxisAlignment.start. Inside the column, there is a Text widget displaying the title "Fees Payment" with a font size of 20 and bold font weight.
Below the text, there is a DataTable widget representing the payment data table. The DataTable has three columns defined using DataColumn widgets: "Date", "Description", and "Amount". The rows of the DataTable are generated dynamically using the paymentData list, which contains a list of maps representing each payment. Each map contains the date, description, and amount of the payment. The rows are generated by mapping over the paymentData list and creating a DataRow for each payment.
The bottom navigation bar at the bottom of the screen is similar to the previous pages. It allows the user to navigate between different sections of the dashboard. It includes six BottomNavigationBarItems: "Profile", "Assignments", "Projects", "Exams", "Results", and "Fees" (selected). Each item is represented by an icon and a label. Tapping on these items navigates the user to the respective pages using the Navigator.pushNamed method.
In summary, the Fees page displays a table of payment data, including the date, description, and amount of each payment. It includes navigation options in the app bar and drawer and a bottom navigation bar to switch between different sections of the dashboard.
 

LOGOUT PAGE
The LogoutPage is displayed when the user successfully logs out of the application.
The LogoutPage class extends StatelessWidget and defines the layout and behavior of the LogoutPage. It includes an app bar with a title "Logout".
The body of the page consists of a Center widget wrapped in a Column. Inside the column, there is an Icon widget displaying a green checkmark icon (Icons.check_circle) with a size of 80.
Below the icon, there is a SizedBox with a height of 16 pixels to create some vertical spacing.
Next, there is a Text widget displaying the message "You have successfully logged out!" with a font size of 20. The textAlign property is set to TextAlign.center to center the text horizontally.
Below the text, there is another SizedBox with a height of 32 pixels to create more vertical spacing.
Next, there are two ElevatedButton widgets. The first button is labeled "Login" and the second button is labeled "Register". Both buttons have onPressed callbacks that navigate the user to the respective pages using the Navigator.pushNamed method. When the "Login" button is pressed, the user is taken to the login page ("/login"). When the "Register" button is pressed, the user is taken to the registration page ("/registration").
In summary, the LogoutPage displays a success message and provides buttons to navigate the user to the login and registration pages.
 

