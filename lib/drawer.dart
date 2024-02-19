import 'package:flutter/material.dart';
import 'package:saral_app/request_close_from_screen.dart';
import 'package:saral_app/your_request_screen.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Hello User!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.chat,
              color: Colors.black,
            ),
            title: Text(
              'Your Request?',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => YourRequestScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
