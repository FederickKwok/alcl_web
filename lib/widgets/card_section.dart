import 'package:flutter/material.dart';
import 'package:alcl_web/widgets/responsive.dart';
import 'package:hexcolor/hexcolor.dart';

class CardSection extends StatelessWidget {
  double _card_height = 450;
  double _card_width = 380;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
      ? Container(
        height: 700,
        padding: EdgeInsets.all(10.0),
        color: HexColor("#f7f7f7"),
      )
      : Container(
        height: 550,
        padding: EdgeInsets.all(10.0),
        color: HexColor("#f7f7f7"),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome to Air & LCL Platform',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Maersk Headline'
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Container(
                    height: _card_height,
                    width: _card_width,
                    margin: EdgeInsets.only(right: 15.0),
                    child: Card(
                      elevation: 2.0,
                      margin: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset("images/air.png"),
                          ),
                          Text(
                            'Developer Hub',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Maersk Headline'
                            ),
                          ),
                          Text(
                            'This is the developer hub. This is the developer hub. This is the developer hub',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Maersk Text'
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: _card_height,
                    width: _card_width,
                    margin: EdgeInsets.only(right: 15.0),
                    child: Card(
                      elevation: 2.0,
                      margin: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset("images/lcl.png"),
                          ),
                          Text(
                            'Developer Hub',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Maersk Headline'
                            ),
                          ),
                          Text(
                            'This is the developer hub. This is the developer hub. This is the developer hub',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Maersk Text'
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: _card_height,
                    width: _card_width,
                    margin: EdgeInsets.only(right: 15.0),
                    child: Card(
                      elevation: 2.0,
                      margin: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 180,
                            child: Image.asset("images/air.png"),
                          ),
                          Container(
                            padding: EdgeInsets.only(),
                            child: Text(
                              'Developer Hub',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontFamily: 'Maersk Headline'
                              ),
                            ),
                          ),
                          Text(
                            'This is the developer hub. This is the developer hub. This is the developer hub',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Maersk Text'
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: _card_height,
                    width: _card_width,
                    margin: EdgeInsets.only(right: 15.0),
                    child: Card(
                      elevation: 2.0,
                      margin: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          SizedBox(
                            height: 180,
                            child: Image.asset("images/lcl.png"),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text(
                              'Developer Hub',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'Maersk Headline'
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10.0,right: 5.0,top: 10.0),
                            child: Text(
                              'This is the developer hub. This is the developer hub. This is the developer hub',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Maersk Text'
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
  }
}