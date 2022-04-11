import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:alcl_web/widgets/responsive.dart';
import 'package:hexcolor/hexcolor.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key, required this.screenSize}) : super(key: key);

  final Size screenSize;

  Text splashTitle() {
    return const Text(
      'Welcome to Air & LCL Platform',
      style: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontFamily: 'Maersk Headline'
      ),
    );
  }

  Text splashBodyText() {
    return const Text(
      'Our customers look to us for innovative, industry-leading solutions, '
      'new ways to connect and make it simpler to do business with Maersk. '
      'The New SCM Platform is going to be a milestone proof point in our '
      'global integrator story, and one that is going to unlock a lot of '
      'growth - Martin Holme, Global Head of Lead Logistics',
      softWrap: true,
      style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontFamily: 'Maersk Text'
      ),
    );
  }

  SizedBox splashImage() {
    return SizedBox(
      height: 673,
      width: 475,
      child: SvgPicture.asset("assets/images/Air_and_LCL_Splash_clean.svg"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Container(
            height: 400,
            padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
            color: HexColor("#00243D"),
            child: Expanded(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 20.0),
                    alignment: Alignment.topLeft,
                    child: splashTitle(),
                  ),
                  Expanded(
                    child: splashBodyText()
                  ),
                  Expanded(
                    child: splashImage()
                  ),
                ],
              ),
            ),
          )
        : Container(
            height: 400,
            padding: EdgeInsets.fromLTRB(100.0, 50.0, 100.0, 50.0),
            color: HexColor("#00243D"),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0.0, 70.0, 0.0, 10.0),
                        alignment: Alignment.topLeft,
                        child: splashTitle()
                      ),
                      Expanded(
                        child: splashBodyText()
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: splashImage()
                ),
              ],
            ),
          );
  }
}