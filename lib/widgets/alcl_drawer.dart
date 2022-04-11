import 'package:flutter/material.dart';

class AlclDrawer extends StatefulWidget {
  const AlclDrawer({Key? key}) : super(key: key);

  @override
  _AlclDrawerState createState() => _AlclDrawerState();
}

class _AlclDrawerState extends State<AlclDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).bottomAppBarColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Maersk Headline',
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text(
                'About Us',
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'Maersk Text',
                  fontSize: 16,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Dashboard',
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'Maersk Text',
                  fontSize: 16,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Developer',
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'Maersk Text',
                  fontSize: 16,
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}