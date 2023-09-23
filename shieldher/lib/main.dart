import 'package:flutter/material.dart';
import 'package:shieldher/emergencycontacts.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MainPage(), // Set the main page as the home page
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second page when the button is pressed
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => EmergencyContacts(),
              ),
            );
          },
          child: Text('Welcome'),
        ),
      ),
    );
  }
}