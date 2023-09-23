import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    var child;
    return Scaffold(
      // ignore: prefer_typing_uninitialized_variables
      backgroundColor: const Color.fromARGB(255, 232, 217, 193),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Text(
                'Welcome to ShieldHer!',
                
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              const SizedBox(height: 12),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20)
              ),
              const Text(
                'Login.',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

              // const SizedBox(height: 35),
              // // Positioned(
              // //       child: Image.asset('assets/images/bbreadpng.png'),
              // //     ),
              //      const SizedBox(height: 25),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size.fromWidth(180),
                  backgroundColor: Color.fromARGB(255, 221, 155, 33),
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                    side: const BorderSide(
                        color: Color.fromARGB(0, 238, 153, 64)),
                  ),
                ),
                onPressed: () async {
                  print("going to validate login info");
                },
                child: const Center(
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              // Text(
              //   //TBD error need backend
              //   style: TextStyle(color: Colors.red),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
