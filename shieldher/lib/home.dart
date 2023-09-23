import 'package:flutter/material.dart';
import 'package:shieldher/phonecall.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: TabBarView(
          children: [
            // Placeholder(),
            const HomeTab(),
            EmergencyContacts(),
            Placeholder(),
            // HomeTab(
            // ),
            // ContactsTab(),
            // SettingsTab(),
          ],
        ),
        bottomNavigationBar: const TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.list),
            ),
            Tab(
              icon: Icon(Icons.settings),
            ),
          ],
          indicatorColor: Color.fromARGB(255, 87, 61, 43),
          unselectedLabelColor: Color.fromARGB(255, 232, 217, 193),
        ),
        backgroundColor: Color.fromARGB(255, 203, 133, 137),
      ),
    );
  }
}

// ------hometab------
class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(15),
            minimumSize: Size(180, 180),
          ),
          onPressed: () async {
             Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PhoneCall(),
              ),
            );
          },
          child: Icon(Icons.call),
        ),
      ),
    );
  }
}

// ---------contact list--------
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
    return Card(
      color: Color.fromARGB(255, 232, 217, 193),
      child: ListView(
        children: const [
          Divider(color: Color.fromARGB(255, 87, 61, 43), thickness: 0.5),
          ListTile(
            leading: CircleAvatar(
              radius: 20.0,
              backgroundColor: Color(0xFF573D2B),
            ),
            title: Text("John Doe"),
            subtitle: Text("Friend"),
            trailing: Icon(
              Icons.person,
              color: Colors.black,
              size: 20.0,
            ),
          ),
          Divider(color: Color.fromARGB(255, 87, 61, 43), thickness: 0.5),
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
          Divider(color: Color.fromARGB(255, 87, 61, 43), thickness: 0.5),
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
          Divider(color: Color.fromARGB(255, 87, 61, 43), thickness: 0.5),
        ],
      ),
    );
  }
}
