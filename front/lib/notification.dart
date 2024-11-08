import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'ABA',
              style: TextStyle(color: Colors.white),
            ),
          ),
    actions: [
    TextButton(
    onPressed: () {
    // Handle logout logic
    },
    child: Text(
    'LOGOUT',
    style: TextStyle(color: Colors.white),
    ),
    ),
    ],
    backgroundColor: Color(0xFF005d85),
    ),
    drawer: Drawer(
    child: ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
    // Drawer header
    DrawerHeader(
    decoration: BoxDecoration(
    color: Color(0xFF005d85),
    ),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Icon(Icons.person, size: 60, color: Colors.white),
    SizedBox(height: 10),
    Text(
    'Mr.Dara',
    style: TextStyle(
    color: Colors.white,
    fontSize: 24,
    ),
    ),
    Text(
    'MIRT Chair',
    style: TextStyle(
    color: Colors.white70,
    fontSize: 16,
    ),
    ),
    ],
    ),
    ),
    // Drawer items
    ListTile(
    leading: Icon(Icons.dashboard),
    title: Text('Dashboard'),
    onTap: () {
    // Handle dashboard navigation
    Navigator.pop(context); // Close drawer after tap
    },
    ),
    ListTile(
    leading: Icon(Icons.event),
    title: Text('Events'),
    onTap: () {
    // Handle events navigation
    Navigator.pop(context);
    },
    ),
    ListTile(
    leading: Icon(Icons.settings),
    title: Text('Settings'),
    onTap: () {
    // Handle settings navigation
    Navigator.pop(context);
    },
    ),
    ListTile(
    leading: Icon(Icons.logout),
    title: Text('Logout'),
    onTap: () {
    // Handle logout logic
    Navigator.pop(context);
    },
    ),
    ],
    ),
    ),
    body: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    // Active MIRT and Chair Actions button
    Text(
    'ACTIVE',
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(height: 10),
    ElevatedButton(
    onPressed: () {
    // Handle chair actions
    },
    style: ElevatedButton.styleFrom(
    backgroundColor: Color(0xFF005d85),
    padding: EdgeInsets.symmetric(vertical: 15),
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Icons.event_note, color: Colors.white),
      SizedBox(width: 10),
      Text(
        'CHAIR ACTIONS',
        style: TextStyle(
          fontSize: 18,
          color: Colors.white, // Change text color to white
        ),
      )

    ],
    ),
    ),
    SizedBox(height: 20),
    // Fire Event section

      Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Fire Event',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text('11:30 am  |  10/10/2018'),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.location_on, color: Color(0xFF005d85)),
                  SizedBox(width: 5),
                  Text('Building #7 (IT department)'),
                ],
              ),
              SizedBox(height: 5),
              Text('Primary Emergency Operation Centre'),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Close MIRT logic
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF005d85),
                ),
                child: Text(
                  'CLOSE MIRT',
                  style: TextStyle(
                    color: Colors.white, // Change text color to white
                  ),
                ),

              ),
            ],
          ),
        ),
      ),
      SizedBox(height: 20),
      // Notified users list
      Expanded(
        child: ListView(
          children: [
            UserNotification(
              name: 'Ma Jhon',
              message: 'You should know in time - declined',
            ),
            UserNotification(
              name: 'Jek Ahryka',
              message: 'Suggest at 2:30 pm, 11/10/24',
            ),
            UserNotification(
              name: 'Hij Funder',
              message: 'Notyet for the new project',
            ),
            UserNotification(
              name: 'Fiker Rix',
              message: 'Will up to all of you',
            ),
          ],
        ),
      ),
    ],
    ),
    ),
        ),
    );
  }
}

class UserNotification extends StatelessWidget {
  final String name;
  final String message;

  const UserNotification({
    required this.name,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Color(0xFF005d85),
        child: Icon(Icons.person, color: Colors.white),
      ),
      title: Text(name),
      subtitle: Text(message),
    );
  }
}
