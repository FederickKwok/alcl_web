import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:alcl_web/utils/theme_data.dart';
import 'package:alcl_web/screens/home_page.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(
    EasyDynamicThemeWidget(
      child: AlclWeb(),
    ),
  );
}

class AlclWeb extends StatelessWidget {
  const AlclWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Air & LCL Platform',
      theme: lightThemeData,
      darkTheme: darkThemeData,
      debugShowCheckedModeBanner: false,
      themeMode: EasyDynamicTheme.of(context).themeMode,
      home: HomePage()
    );
  }
}


