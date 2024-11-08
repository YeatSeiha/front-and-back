import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text('ABA'),
          actions: [
            IconButton(
              icon: Icon(Icons.chat),
              onPressed: () {
                // Handle chat button press
                print('Chat icon pressed');
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                // Handle notifications button press
                print('Notifications icon pressed');
              },
            ),
            IconButton(
              icon: Icon(Icons.qr_code),
              onPressed: () {
                // Handle QR code button press
                print('QR icon pressed');
              },
            ),
          ],

        ),
        drawer: const Drawer(
            child: Column(
              children: [     UserAccountsDrawerHeader(
                accountName: Text("Zorin"),
                accountEmail: Text("Zorin@mail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage:   NetworkImage("https://picsum.photos/200"),
                ),
              ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Profile"),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Setting"),
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("Logout"),
                ),
                ListTile(
                  leading: Icon(Icons.info),
                  title: Text("About app"),
                ),
              ],
            )),



        body: Column(
          children: [
            // Horizontal scrolling section (Top)
            SingleChildScrollView(
              padding: EdgeInsets.all(20),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Image.network(
                      "https://coolbeans.sgp1.digitaloceanspaces.com/legend-cinema-prod/ac132b32-1e1d-4225-a2a9-5633a177437e.jpeg",
                      width: 400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Image.network(
                      "https://coolbeans.sgp1.digitaloceanspaces.com/legend-cinema-prod/f2112620-2f17-4d51-9e0d-648a449a7298.jpeg",
                      width: 400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Image.network(
                      "https://coolbeans.sgp1.digitaloceanspaces.com/legend-cinema-prod/5194d602-2667-4ae7-9e83-fc76b4753e5e.jpeg",
                      width: 400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Image.network(
                      "https://coolbeans.sgp1.digitaloceanspaces.com/legend-cinema-prod/2a853f81-f008-4022-9732-7491fa0de572.jpeg",
                      width: 400,
                    ),
                  ),
                ],
              ),
            ),

            // Vertical scrolling section (Below)
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(20),
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Image.network(
                        "https://coolbeans.sgp1.digitaloceanspaces.com/legend-cinema-prod/cc7c9150-c940-4540-b92e-3a54b98854d8.jpeg",
                        width: 400,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Image.network(
                        "https://coolbeans.sgp1.digitaloceanspaces.com/legend-cinema-prod/c22d5817-ca3c-4e6d-b119-68fd0f15f5f3.jpeg",
                        width: 400,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Image.network(
                        "https://coolbeans.sgp1.digitaloceanspaces.com/legend-cinema-prod/bab652d6-8f39-42d8-98c5-2661fc0a3bdd.jpeg",
                        width: 400,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Image.network(
                        "https://coolbeans.sgp1.digitaloceanspaces.com/legend-cinema-prod/37c1b050-709f-40fe-b374-23c2035177bb.jpeg",
                        width: 400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
