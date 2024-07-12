import 'package:audio_player/components/my_drawer_tile.dart';

import 'package:audio_player/pages/settings_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(
              Icons.lock,
              size: 50,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          MyDrawerTile(
            title: 'H O M E',
            icon: Icons.home,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          MyDrawerTile(
            title: 'S E T T I N G S',
            icon: Icons.settings,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const Settings();
                  },
                ),
              );
            },
          ),
          const Spacer(),
          MyDrawerTile(
            title: 'L O G O U T',
            icon: Icons.logout,
            onTap: () {
              FirebaseAuth.instance.signOut();
            },
          ),
          const SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
