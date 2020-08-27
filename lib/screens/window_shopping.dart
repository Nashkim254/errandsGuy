import 'package:errands_guy/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:errands_guy/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title:Text(
            "ErrandsGuy",
            style:TextStyle(color: kTextColor,
            fontFamily: Constants.OPEN_SANS,
            fontWeight: FontWeight.bold
            )
          ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
            // By default our  icon color is white
            color: kTextColor,
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.add_shopping_cart),
            // By default our  icon color is white
            color: kTextColor,
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}