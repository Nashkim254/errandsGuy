import 'package:errands_guy/constants/constants.dart';
import 'package:errands_guy/data.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final ServicesInfo planetInfo;
  const DetailPage({Key key, this.planetInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff08D294),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 300),
                        Text(
                          planetInfo.name,
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 50,
                            color: primaryTextColor,
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          'ErrandsGuy services',
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 31,
                            color: primaryTextColor,
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Divider(color: Colors.black38),
                        SizedBox(height: 32),
                        Text(
                          planetInfo.description ?? '',
                          maxLines: 20,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 20,
                            color: contentTextColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 20),
                        Divider(color: Colors.black38),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0,bottom: 32.0),
                    child: RaisedButton(
                      elevation: 6.0,
                      child:Text(
                        'Book Errand',
                        ),
                      onPressed: (){
                      if(planetInfo.name == 'Banking & Utilities'){
                        Navigator.of(context).pushNamed('/banking');
                      }
                      },
                      ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: -64,
              child: Hero(
                  tag: planetInfo.position,
                  child: Image.asset(planetInfo.iconImage)),
            ),
            Positioned(
              top: 60,
              left: 32,
              child: Text(
                planetInfo.position.toString(),
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 50,
                  color: primaryTextColor.withOpacity(0.08),
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}