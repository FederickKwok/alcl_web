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
      'Our customers look to us for innovative, industry-leading solutions, new ways to connect and make it simpler to do business with Maersk. The New SCM Platform is going to be a milestone proof point in our global integrator story, and one that is going to unlock a lot of growth - Martin Holme, Global Head of Lead Logistics.',
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontFamily: 'Maersk Text',
      ),
    );
  }

  SizedBox splashImage() {
    return SizedBox(
      height: 673,
      width: 475,
      child: SvgPicture.asset("images/Air_and_LCL_Splash_clean.svg"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Container(
            height: 400,
            padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
            color: HexColor("#00243D"),
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
          )
        : Container(
            height: 400,
            color: HexColor("#00243D"),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(100, 20, 50, 20),
                        child: const Text(
                          'Welcome to Air & LCL Platform',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontFamily: 'Maersk Headline'
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(100, 20, 50, 20),
                        child: RichText(
                          maxLines: 5,
                          softWrap: true,
                          text: const TextSpan(
                            text: 'Our customers look to us for innovative, industry-leading solutions, new ways to connect and make it simpler to do business with Maersk. The New SCM Platform is going to be a milestone proof point in our global integrator story, and one that is going to unlock a lot of growth - Martin Holme, Global Head of Lead Logistics. Our customers look to us for innovative, industry-leading solutions, new ways to connect and make it simpler to do business with Maersk. The New SCM Platform is going to be a milestone proof point in our global integrator story, and one that is going to unlock a lot of growth - Martin Holme, Global Head of Lead Logistics. Our customers look to us for innovative, industry-leading solutions, new ways to connect and make it simpler to do business with Maersk. The New SCM Platform is going to be a milestone proof point in our global integrator story, and one that is going to unlock a lot of growth - Martin Holme, Global Head of Lead Logistics. Our customers look to us for innovative, industry-leading solutions, new ways to connect and make it simpler to do business with Maersk. The New SCM Platform is going to be a milestone proof point in our global integrator story, and one that is going to unlock a lot of growth - Martin Holme, Global Head of Lead Logistics.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Maersk Text',
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(50, 20, 100, 20),
                    child: SvgPicture.asset('images/Air_and_LCL_Splash_clean.svg'),
                  ),
                ),
              ],
            ),
          );
  }
}
