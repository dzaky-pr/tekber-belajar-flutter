import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Main'),
            onTap: () {
              Navigator.pushNamed(context, '/main');
            },
          ),
          ListTile(
            title: const Text('About Me'),
            onTap: () {
              Navigator.pushNamed(context, '/aboutMe');
            },
          ),
        ],
      ),
    );
  }
}
