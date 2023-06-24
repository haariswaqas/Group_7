import 'package:flutter/material.dart';

class Assignments extends StatelessWidget {
  static const String routeName = 'assignments';

  const Assignments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upcoming Assignments'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Upcoming Assignments',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Card(
              child: ListTile(
                title: const Text('Linear Circuits Homework 3'),
                subtitle: const Text('Due: 21st June, 2023'),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Linear Circuits Lab 3 Report'),
                subtitle: const Text('Due: 5th July, 2023'),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Data Structures & Algorithms Quiz 3'),
                subtitle: const Text('On: 27th June, 2023'),
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
        currentIndex: 1, // Set the current index of the selected item
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
          else if (index == 2) {
            Navigator.pushNamed(context, 'fees');
          }
        },
),
    );
  }
}
