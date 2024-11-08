import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF005d85),
          title: Center(
            child: Text(
              'ABA',
              style: TextStyle(color: Colors.white),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Handle logout action
              },
              child: Text(
                'Logout',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        drawer: const Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Hov"),
                accountEmail: Text("hovgaming@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.blue,
                  backgroundImage: NetworkImage("https://picsum.photos/200"),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Dashboard"),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text("Contact Us"),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Setting"),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Log out"),
              ),
            ],
          ),
        ),
        body: GridView.count(
          crossAxisCount: 2, // Two columns
          padding: EdgeInsets.all(8.0),
          children: List.generate(5, (index) {
            IconData? iconData; // Make iconData nullable
            String text = ''; // Initialize text

            switch (index) {
              case 0:
                iconData = Icons.person;
                text = 'User';
                break;
              case 1:
                iconData = Icons.contact_mail;
                text = 'Contact Us';
                break;
              case 2:
                iconData = Icons.group;
                text = 'Group';
                break;
              case 3:
                iconData = Icons.description; // Document icon
                text = 'Document';
                break;
              case 4:
                iconData = Icons.departure_board; // List icon
                text = 'List';
                break;
            }

            return Card(
              color: Color(0xFF005d85),
              margin: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(iconData, color: Colors.white, size: 40),
                  SizedBox(height: 8), // Space between icon and text
                  Text(
                    text,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
