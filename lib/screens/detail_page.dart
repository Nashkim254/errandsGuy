import 'package:errands_guy/constants/constants.dart';
import 'package:errands_guy/model/details_model.dart';
import 'package:errands_guy/screens/details/components/body.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final ServicesInfo services;

  const DetailsScreen({Key key, this.services}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: services.color,
      appBar: buildAppBar(context),
      body: Body(services: services,),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: services.color,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
          color: Colors.white,
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.add_shopping_cart),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}