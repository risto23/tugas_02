import 'package:flutter/material.dart';

class TabNavigatorWidget extends StatelessWidget {
  const TabNavigatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Navigator'),
          bottom: TabBar(
            tabs : [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.person),
                text: 'Profile',
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: 'Setting', 
              )
            ]
          ),
        ),
        body: TabBarView(
          children: [
            const Center(
              child: Text('Home'),
            ),
            const Center(
              child: Text('Profile'),
            ),
            const Center(
              child: Text('Setting'),
            ),
          ],
        ),
      ),
    );
  }
}