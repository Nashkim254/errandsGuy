import 'package:flutter/material.dart';

class Banking extends StatefulWidget {
  Banking({Key key}) : super(key: key);

  @override
  _BankingState createState() => _BankingState();
}

class _BankingState extends State<Banking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 50.0),
                  child: Container(
                      height: 50.0,
                      width: 50.0,
                      child: Image.asset('lib/assets/errands.png')),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0, right: 200.0),
                  child: Text(
                    'ErrandsGuy',
                    style: TextStyle(
                      fontFamily: 'Roboto Condensed',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff08D294),
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: (){},
                  ),
              ],
            ),
            Column(
              children: <Widget>[
                Text('Order Form',
                style: TextStyle(
                  color:Colors.black,
                  fontSize:30.0,
                  fontWeight:FontWeight.w500,
                  fontFamily: 'OpenSans'
                ),
                ),
                Text('Bank Name',
                style: TextStyle(
                  color:Colors.black,
                  fontSize:20.0,
                  fontWeight:FontWeight.w300,
                  fontFamily: 'OpenSans'
                ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Banking Name',
                    hintText: 'Banking Name',
                  ),
                ),
                    Text('Bank Branch',
                style: TextStyle(
                  color:Colors.black,
                  fontSize:20.0,
                  fontWeight:FontWeight.w300,
                  fontFamily: 'OpenSans'
                ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Bank Branch',
                    hintText: 'Bank Branch',
                  ),
                ),
                RaisedButton(
                  child: Text('Order'),
                  onPressed: (){},
                  elevation:6.0
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
