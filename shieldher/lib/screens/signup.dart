import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  Future<void> registerUser() async {
    var url = Uri.parse(
        'http://localhost:8080/register'); // Replace with your backend API URL

    var response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json', // Add this line
      },
      body: jsonEncode({
        'userName': usernameController.text,
        'firstName': firstNameController.text,
        'lastName': lastNameController.text,
        'email': emailController.text,
        'password': passwordController.text,
        'phone': phoneController.text,
      }),
    );

    if (response.statusCode == 200) {
      print('Signup Successful');
      // You can show a success message here if needed
    } else {
      print('Error: ${response.reasonPhrase}');
      // You can show an error message here if needed
    }
  }

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
                    'SignUp to ShieldHer!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Color.fromARGB(255, 87, 61, 43),
                    ),
                  ),
                  SizedBox(height: 80),
                  Text(
                    'Username',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 87, 61, 43),
                    ),
                  ),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter a username',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'First Name',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 87, 61, 43),
                    ),
                  ),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      controller: firstNameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter first name',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Last Name',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 87, 61, 43),
                    ),
                  ),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      controller: lastNameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter last name',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 87, 61, 43),
                    ),
                  ),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter email',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 87, 61, 43),
                    ),
                  ),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter a password',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Phone Number',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 87, 61, 43),
                    ),
                  ),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      controller: phoneController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter number',
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size.fromWidth(180),
                      backgroundColor: Color.fromARGB(255, 221, 232, 185),
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        // side: BorderSide(
                        //     color: Color.fromARGB(255, 238, 153, 64)),
                      ),
                    ),
                    onPressed: () async {
                      await registerUser();
                      print("going to validate login info");
                      //go to home after signup if authenticated
                      //pop up box disclaimer for phone call page --> how to exit
                    },
                    child: Text(
                      'SIGN UP',
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
      ),
    );
  }
}
