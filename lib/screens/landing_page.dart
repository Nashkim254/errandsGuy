import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:errands_guy/constants/constants.dart';
import 'package:errands_guy/ui_view/slider_layout_view.dart';
import 'package:errands_guy/widgets/custom_font.dart';

class LandingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff08D294),
      body: onBordingBody(),
    );
  }

  Widget onBordingBody() => Container(
        child: SliderLayoutView(),
      );
}