import 'package:flutter/material.dart';

void main() {
  runApp(const AlclWeb());
}

class AlclWeb extends StatelessWidget {
  const AlclWeb({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ToggleScaffold()
    );
  }
}

class ToggleScaffold extends StatefulWidget {
  const ToggleScaffold({Key? key}) : super(key: key);

  @override
  _ToggleScaffoldState createState() => _ToggleScaffoldState();
}

class _ToggleScaffoldState extends State<ToggleScaffold> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return width > 640
        ? Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Container(
                width: 200,
                padding: EdgeInsets.fromLTRB(50.0, 0.0, 0.0, 0.0),
                child: Image.asset('assets/maersk_logo.png'),
              ),
              centerTitle: false,
              iconTheme: const IconThemeData(color: Colors.blue),
              actions: _ListMenu(),
            ),
            body: Center(
              child: Text('Content'),
            ),
        )
        : Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Container(
                width: 150,
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                child: Image.asset('assets/maersk_logo.png'),
              ),
              centerTitle: false,
              iconTheme: const IconThemeData(color: Colors.blue),
            ),
            drawer: Drawer(
              child: ListView(
                  padding: EdgeInsets.zero,
                  children: const <Widget>[
                    DrawerHeader(
                      child: Text('Drawer Header'),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                    ListTile(
                      title: Text('Item 1'),
                    ),
                    ListTile(
                      title: Text('Item 2'),
                    ),
                  ]
              ),
            ),
            body: Center(
              child: Text('Content'),
            ),
        );
  }

  List<Widget> _ListMenu() {
    return <Widget>[
      Container(
        margin: EdgeInsets.fromLTRB(0.0, 20.0, 20.0, 15.0),
        child: Text(
          'About Us',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 16,
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(0.0, 20.0, 20.0, 15.0),
        child: Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 16,
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(0.0, 20.0, 100.0, 15.0),
        child: Text(
          'Developer',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 16,
          ),
        ),
      ),
    ];
  }
}


