import 'package:flutter/material.dart';

class PhoneCall extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 82, 72, 60),
      ),
      body: Center ( 
        child: PhoneScreen ()
      )
    ); 
  }
}

class PhoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/phonecall.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}