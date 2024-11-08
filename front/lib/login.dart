import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF005d85), // Set the background color
      body: Padding(
        padding: const EdgeInsets.all(20.0), // Add padding to make it look nice
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo and title at the top
            Image.network(
              'https://play-lh.googleusercontent.com/WU6sZMD1UspzwqYnlACtmN60rckp8hoINSgsR21mKLJBbsHPwXtzwvOocpjC7FcO1g',
              height: 100,
            ),
            SizedBox(height: 10), // Add some spacing
            Text(
              'ABA\nYour money is your',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 40), // Add space before the form fields

            // Email input field
            TextField(
              decoration: InputDecoration(
                hintText: 'user@gmail.com',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 20), // Space between email and password fields

            // Password input field
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 30), // Space before the login button

            // Login button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  textStyle: TextStyle(fontSize: 18),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Text('LOGIN'),
              ),
            ),
            SizedBox(height: 10), // Space before the forgot password text

            // Forgot password text
            TextButton(
              onPressed: () {
                // Handle forgot password action
              },
              child: Text(
                'Forgot password?',
                style: TextStyle(color: Colors.white70),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF005d85),
        title: Text('ABA'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.chat),
            tooltip: 'Message',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notification_add),
            tooltip: 'Notification',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.qr_code),
            tooltip: 'QR Code',
            onPressed: () {},
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
              title: Text("Home"),
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
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0sxtqDWc7cdi5WWspKuH4eTx18h9lbWOIFQ&s",
                    width: 250,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Image.network(
                    "https://southeastasiaglobe.com/wp-content/uploads/2017/07/payway2.jpg",
                    width: 250,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1pGZY-cxJ_xVQEB9qeMGSI9rUOcz9z_VgWzpY2b0P60qVRPIMrpyxWIDHPTcUZmfF3C4&usqp=CAU",
                    width: 250,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7AgoPWL4sBhrOWq9SFeazPfwHnrQrTB_NoPjJRxy35SJScUGGHpXulqD_XSJbBIrY45Y&usqp=CAU",
                    width: 250,
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
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1pGZY-cxJ_xVQEB9qeMGSI9rUOcz9z_VgWzpY2b0P60qVRPIMrpyxWIDHPTcUZmfF3C4&usqp=CAU",
                      width: 250,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7AgoPWL4sBhrOWq9SFeazPfwHnrQrTB_NoPjJRxy35SJScUGGHpXulqD_XSJbBIrY45Y&usqp=CAU",
                      width: 250,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Image.network(
                      "https://southeastasiaglobe.com/wp-content/uploads/2017/07/payway2.jpg",
                      width: 250,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0sxtqDWc7cdi5WWspKuH4eTx18h9lbWOIFQ&s",
                      width: 250,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
