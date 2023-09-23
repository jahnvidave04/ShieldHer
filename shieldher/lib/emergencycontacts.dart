import 'package:flutter/material.dart';

class EmergencyContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 232, 217, 193),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 232, 217, 193),
        title: Text('Emergency Contacts'),
      ),
      body: Center(
        child: ProfileCard(),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return Card ( 
      color: Color.fromARGB(255, 232, 217, 193),
      child: ListView(
        children: [
          Divider (color: Color.fromARGB(255, 87, 61, 43), thickness: 0.5),
          ListTile ( 
            leading: CircleAvatar ( 
              radius: 20.0, 
              backgroundColor: Color(0xFF573D2B), 
            ), 
            title: Text("John Doe"),
            subtitle: Text("Friend"), 
            trailing: Icon (
              Icons.person, 
              color: Colors.black,
              size: 20.0,
            ),
          ),
          Divider (color: Color.fromARGB(255, 87, 61, 43), thickness: 0.5),
          ListTile(
            leading: CircleAvatar(
              radius: 20.0,
              backgroundColor: Color.fromARGB(255, 203, 133, 137),
            ),
            title: Text("Sal Smith"),
            subtitle: Text("Friend"),
            trailing: Icon(
              Icons.person,
              color: Colors.black,
              size: 20.0,
            ),
          ),
          Divider (color: Color.fromARGB(255, 87, 61, 43), thickness: 0.5),
          ListTile(
            leading: CircleAvatar(
              radius: 20.0,
              backgroundColor: Color.fromARGB(255, 221, 232, 185),
            ),
            title: Text("Sarah Jane"),
            subtitle: Text("Sister"),
            trailing: Icon(
              Icons.person,
              color: Colors.black,
              size: 20.0,
            ),
          ),
          Divider (color: Color.fromARGB(255, 87, 61, 43), thickness: 0.5),
        ],
      ),
    );
  }
}
