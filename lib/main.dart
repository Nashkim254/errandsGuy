import 'dart:io';
import 'package:errands_guy/constants/constants.dart';
import 'package:errands_guy/pages/banking.dart';
import 'package:errands_guy/pages/book_keeping.dart';
import 'package:errands_guy/pages/branding.dart';
import 'package:errands_guy/pages/covid.dart';
import 'package:errands_guy/pages/customized.dart';
import 'package:errands_guy/pages/delivery.dart';
import 'package:errands_guy/pages/diaspora.dart';
import 'package:errands_guy/pages/digital.dart';
import 'package:errands_guy/pages/land.dart';
import 'package:errands_guy/pages/register.dart';
import 'package:errands_guy/pages/returns.dart';
import 'package:errands_guy/pages/shopping.dart';
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
  
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ErrandsGuy',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primaryColor: Color(0xff08D294),
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        ),
        home: LandingPage(),
        routes: <String, WidgetBuilder>{
          '/signup': (BuildContext context) => Signup(),
          '/login': (BuildContext context) => Login(),
          '/window': (BuildContext context)=> HomeScreen(),
          '/banking': (BuildContext context)=> Banking(),
          '/shopping': (BuildContext context)=> Shopping(),
          '/delivery': (BuildContext context) => Delivery(),
          '/book': (BuildContext context) => Book(),
          '/covid': (BuildContext context) => Covid(),
          '/register': (BuildContext context) => Register(),
          '/returns': (BuildContext context) => Returns(),
          '/branding': (BuildContext context) => Branding(),
          '/diaspora': (BuildContext context) => Diaspora(),
          '/land': (BuildContext context) => Land(),
          '/custom': (BuildContext context) => Custom(),
          '/media': (BuildContext context) => Digital(),
        });
  }
}
