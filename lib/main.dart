import 'dart:io';
import 'package:errands_guy/pages/banking.dart';
import 'package:errands_guy/screens/home_page.dart';
import 'package:errands_guy/screens/landing_page.dart';
import 'package:errands_guy/screens/login.dart';
import 'package:errands_guy/screens/signup.dart';
import 'package:errands_guy/screens/window_shopping.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness:
          Platform.isAndroid ? Brightness.dark : Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.grey,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ErrandsGuy',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primaryColor: Color(0xff08D294),
          brightness: Brightness.dark,
        ),
        home: LandingPage(),
        routes: <String, WidgetBuilder>{
          '/signup': (BuildContext context) => Signup(),
          '/login': (BuildContext context) => Login(),
          '/homepage':(BuildContext context)=> HomePage(),
          '/window': (BuildContext context)=> Window(),
          '/banking': (BuildContext context)=> Banking(),
        });
  }
}
