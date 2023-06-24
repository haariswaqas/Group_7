import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  static const String routeName = '/dashboard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Text(
                'Navigation',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              title: Text('Dashboard'),
              onTap: () {
                Navigator.pushNamed(context, Dashboard.routeName);
              },
            ),
            ListTile(
              title: Text('Sign Out'),
              onTap: () {
                Navigator.pushNamed(context, '/logout_page');
              },
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
         // Set the current index of the selected it
        onTap: (index) {
          // Handle item tap here
          if (index == 0) {
            // Navigate to profile page
            Navigator.pushNamed(context, 'profile');
          } else if (index == 1) {
            Navigator.pushNamed(context, 'assignments');
          } else if (index == 2) {
            Navigator.pushNamed(context, 'projects');
          } else if (index == 3) {
            Navigator.pushNamed(context, 'exams');
          } else if (index == 4) {
            Navigator.pushNamed(context, 'results');
          } else if (index == 5) {
            Navigator.pushNamed(context, 'fees');
          }
          
        },
      ),
      body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Welcome to your Dashboard!',
        style: TextStyle(fontSize: 28),
      ),
      Text(
        'Keep track of all your tasks/activities',
        style: TextStyle(fontSize: 24),
      ),
     
    ],
  ),
),
    );
  }
}
