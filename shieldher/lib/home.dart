import 'package:flutter/material.dart';
import 'package:shieldher/hometab.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: Scaffold(
        body: TabBarView(
          children: [
            // Placeholder(),
            HomeTab(),
            Placeholder(),
            Placeholder(),
            // HomeTab(
            // ),
            // ContactsTab(),
            // SettingsTab(),
          ],
        ),
        bottomNavigationBar: TabBar(
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
            indicatorColor: Color.fromARGB(255, 232, 217, 193),
            unselectedLabelColor: Color.fromARGB(255, 232, 217, 193),

        ),
        backgroundColor: Color.fromARGB(255, 203, 133, 137),
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 203, 133, 137),
      child: FloatingActionButton(
        onPressed: () {}
        
      ),
    );
  }
}
