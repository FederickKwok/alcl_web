import 'package:flutter/material.dart';
//import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;

  TopBarContents(this.opacity);

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [false,false,false];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(0,2),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                padding: EdgeInsets.fromLTRB(50.0, 0.0, 0.0, 0.0),
                child: Image.asset('assets/images/maersk_logo.png'),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: screenSize.width / 8),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                            ? _isHovering[0] = true
                            : _isHovering[0] = false;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'About Us',
                            style: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'Maersk Text',
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[0],
                            child: Container(
                              height: 2,
                              width: 70,
                              color: Colors.blue,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenSize.width / 40),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                            ? _isHovering[1] = true
                            : _isHovering[1] = false;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Dashboard',
                            style: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'Maersk Text',
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[1],
                            child: Container(
                              height: 2,
                              width: 70,
                              color: Colors.blue,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenSize.width / 40),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[2] = true
                              : _isHovering[2] = false;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Developer',
                            style: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'Maersk Text',
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[2],
                            child: Container(
                              height: 2,
                              width: 70,
                              color: Colors.blue,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              // Light/Dark switch
              /*IconButton(
                icon: Icon(Icons.brightness_6),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                color: Colors.white,
                onPressed: () {
                  EasyDynamicTheme.of(context).changeTheme();
                },
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}