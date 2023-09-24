import 'package:flutter/material.dart';

class EditScreen extends StatefulWidget {
  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 232, 217, 193),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //USER INPUT
                  SizedBox(height: 30),
                  Text(
                    'Personal Info',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Color.fromARGB(255, 87, 61, 43),
                    ),
                  ),
          
                 Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Text(
                          'Username',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 87, 61, 43),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter a password',
                        ),
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 203, 133, 137),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: () async {
                          print("going to validate login info");
                          // go to home after Edit if authenticated
                          // pop-up box disclaimer for phone call page --> how to exit
                        },
                        child: Icon(Icons.refresh),
                      ),
                  ],
                ),


                  
                  // ),
                  SizedBox(height: 20),
                  Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 87, 61, 43),
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter email',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Phone Number',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 87, 61, 43),
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter number',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
