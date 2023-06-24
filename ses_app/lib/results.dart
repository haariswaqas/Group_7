import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  static const String routeName = 'results';

  const Results({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Results'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Results/Grades',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'CGPA: 3.75', // Replace with the actual CGPA value
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Card(
              child: ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Linear Circuits'),
                    Text('Grade: A'),
                  ],
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Data Communications'),
                    Text('Grade: B+'),
                  ],
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Software Engineering'),
                    Text('Grade: A-'),
                    Text('Due: 26th June, 2023'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
             bottomNavigationBar: BottomNavigationBar(
  items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.account_circle),
      label: 'Profile',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.assignment),
      label: 'Assignments',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.folder),
      label: 'Projects',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.event_note),
      label: 'Exams',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.grade),
      label: 'Results',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.payment),
      label: 'Fees',
    ),
  ],
 selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.blue,
        currentIndex: 4, // Set the current index of the selected item
        onTap: (index) {
          // Handle item tap here
          if (index == 0) {
            // Navigate to home page
            Navigator.pushNamed(context, 'profile');  } 
            else if (index == 1) {
            Navigator.pushNamed(context, 'assignments');
          } else if (index == 2) {
            Navigator.pushNamed(context, 'projects');
          }
          else if (index == 3) {
            Navigator.pushNamed(context, 'exams');
          }
          else if (index == 4) {
            Navigator.pushNamed(context, 'results');
          }
          else if (index == 5) {
            Navigator.pushNamed(context, 'fees');
          }
        },
),
    );
  }
}
