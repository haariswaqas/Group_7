import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  static const String routeName = '/dashboard';

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
                color: Colors.blue,
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
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: 'Profile'),
              Tab(text: 'Assignments'),
              Tab(text: 'Projects'),
              Tab(text: 'Exam Timetable'),
              Tab(text: 'Fees Payment'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Student Profile',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20),
                              const CircleAvatar(
                                radius: 60,
                                backgroundImage: AssetImage('assets/profile_picture.jpg'),
                              ),
                              Text(
                                'Name',
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                'Haaris Ali Waqas',
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Student ID',
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                '10947015',
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Department',
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                'Computer Engineering (CPEN)',
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Email',
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                'haarisali9@gmail.com',
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
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
                SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Upcoming Projects',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Card(
                        child: ListTile(
                          title: const Text('Linear Circuits AM Project'),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: const Text('Data Communications Final Project'),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: const Text('Software Engineering Project 2 (Flutter)'),
                          subtitle: const Text('Due: 26th June, 2023'),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: const Text('Software Engineering Assignment 1'),
                          subtitle: const Text('Due: 22nd June, 2023'),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Exam Timetable',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Card(
                        child: ListTile(
                          title: const Text('Linear Circuits'),
                          subtitle: const Text('Date: 25th June, 2023'),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: const Text('Data Communications'),
                          subtitle: const Text('Date: 30th June, 2023'),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: const Text('Software Engineering Midterm'),
                          subtitle: const Text('Date: 5th July, 2023'),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fees Payment',
                        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      DataTable(
                        columns: const <DataColumn>[
                          DataColumn(
                            label: Text(
                              'Payment Type',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Amount',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Status',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                        rows: <DataRow>[
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('Tuition Fees')),
                              DataCell(Text('\Ghc1000.00')),
                              DataCell(Text('Paid')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('Library Fines')),
                              DataCell(Text('\Ghc50.00')),
                              DataCell(Text('Unpaid')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('Exam Fees')),
                              DataCell(Text('\Ghc200.00')),
                              DataCell(Text('Paid')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('ESUG Dues')),
                              DataCell(Text('\Ghc12.00')),
                              DataCell(Text('Unpaid')),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
