import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:alcl_web/widgets/responsive.dart';
import 'package:alcl_web/widgets/top_bar_contents.dart';
import 'package:alcl_web/widgets/alcl_drawer.dart';
import 'package:alcl_web/widgets/web_scrollbar.dart';
import 'package:alcl_web/widgets/splash_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String route = '/';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScrollController _scrollController;
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    _opacity = _scrollPosition < screenSize.height * 0.40
      ? _scrollPosition / (screenSize.height * 0.40)
      : 1;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: ResponsiveWidget.isSmallScreen(context)
        ? AppBar(
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            elevation: 0,
            centerTitle: true,
            iconTheme: IconThemeData(color: Colors.blue),
            actions: [
              IconButton(
                icon: Icon(Icons.brightness_6),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  EasyDynamicTheme.of(context).changeTheme();
                },
              ),
            ],
            title: Container(
              width: 150,
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              child: Image.asset('assets/images/maersk_logo.png'),
            ),
          )
        : PreferredSize(
            preferredSize: Size(screenSize.width, 1000),
            child: TopBarContents(_opacity),
          ),
      drawer: AlclDrawer(),
      body: WebScrollbar(
        color: Colors.blueGrey,
        backgroundColor: Colors.blueGrey.withOpacity(0.3),
        width: 10,
        heightFraction: 0.3,
        controller: _scrollController,
        child: SingleChildScrollView(
          controller: _scrollController,
          physics: ClampingScrollPhysics(),
          child: Column(
            children: [
              SplashPage(screenSize: screenSize),
              //HubCards(screenSize: screenSize),
            ],
          ),
        ),
      ),
    );
  }
}