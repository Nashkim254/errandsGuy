import 'package:flutter/material.dart';

class Delivery extends StatefulWidget {
  @override
  _DeliveryState createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  bool _brightness = false;
  ThemeData _dark = ThemeData(brightness:Brightness.dark);
  ThemeData _light = ThemeData(brightness:Brightness.dark);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery',
      theme: _brightness ? _dark : _light,
      home: Scaffold(
        appBar: AppBar(
          elevation:0.0,
          backgroundColor:Color(0xff08D294),
        ),
        backgroundColor:Color(0xff08D294),
        body:Container(
          child:ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  color:Color(0xff08D294),
                  elevation: 0.8,
                  child: Row(
                    children:<Widget>[
                      Icon(Icons.directions_subway),
                      Text('Distance Calculator'),
                    ],
                  ),
                ),
              ),
              
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Origin LandMark*',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'OpenSans'),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Nearest LandMark/street',
                        hintText: 'LandMark',
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Origin Town/City*',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'OpenSans'),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Name of town/city',
                        hintText: 'Town/city',
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Destination LandMark*',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'OpenSans'),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Nearest LandMark/street',
                        hintText: 'LandMark',
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Destination Town/City*',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'OpenSans'),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Name of town/city',
                        hintText: 'Town/city',
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 190.0, top: 10.0),
                    child: Text(
                      'Description*',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'OpenSans'),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText:'Enter house/building, gate no. if any.Describe the package,whether delicate etc.'
                      ),
                      maxLines: 4,
                      maxLength: 500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 100,
                      child: RaisedButton(
                          splashColor: Color(0xff08D294),
                          color: Colors.white,
                          child: Text(
                            'Estimate Cost',
                            style: TextStyle(
                              color: Color(0xff08D294),
                            ),
                          ),
                          onPressed: () {},
                          elevation: 6.0),
                    ),
                  ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: Text('E'),
                ),
                accountName: Text('ErransGuy'),
                accountEmail: Text('errandsguy@gmail.com'),
              ),
              ListTile(
                title: Text(
                  'Close',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(Icons.close),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                title: Text(
                  'Services',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(Icons.work),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/window');
                },
              ),
              Divider(),
              ListTile(
                title: Text(
                  'Light/Dark mode',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Switch(
                    value: _brightness,
                    onChanged: (_newValue) {
                      setState(() {
                        _brightness = _newValue;
                      });
                    }),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'ErrandsPro',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(Icons.shopping_basket),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                title: Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(Icons.account_circle),
                onTap: () {},
              ),
              
              Divider(),
              ListTile(
                title: Text(
                  'Contacts',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(Icons.account_circle),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                title: Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(Icons.account_box),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}