import 'package:flutter/material.dart';
import 'package:shieldher/screens/signup.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 232, 217, 193),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  //USER INPUT
                  SizedBox(height: 50),
                  Text(
                    'Welcome to ShieldHer!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  SizedBox(height: 180),
                  Text(
                    'username',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter a username',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'password',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter a password',
                      ),
                    ),
                  ),

                  SizedBox(height: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size.fromWidth(180),
                      backgroundColor: Color.fromARGB(255, 221, 232, 185),
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 60,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                        // side: BorderSide(
                        //     color: Color.fromARGB(255, 238, 153, 64)),
                      ),
                    ),
                    onPressed: () async {
                      print("going to validate login info");
                    },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Color.fromARGB(255, 87, 61, 43),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        
        //NAV BAR
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color.fromARGB(255, 203, 133, 137),
            selectedItemColor: Color.fromARGB(255, 87, 61, 43),
            items: [
              BottomNavigationBarItem(
                icon: Tooltip(
                  message: 'Login',
                  child: Padding(
                    padding:
                        EdgeInsets.all(8.0), // Adjust the padding as needed
                    child: Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 87, 61, 43),
                    ),
                  ),
                ),
                label: 'Login',
              ),
              BottomNavigationBarItem(
                icon: Tooltip(
                  message: 'Sign up',
                  child: Padding(
                    padding:
                        EdgeInsets.all(8.0), // Adjust the padding as needed
                    child: Icon(
                      Icons.add_circle_outline,
                      color: Color.fromARGB(255, 87, 61, 43),
                    ),
                  ),
                ),
                label: 'Sign up',
              ),
            ],
          )

      ),
    );
  }
}
