import 'package:errands_guy/constants/constants.dart';
import 'package:flutter/material.dart';

class Shopping extends StatefulWidget {
  @override
  _ShoppingState createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  bool _brightness = false;
  ThemeData _darkTheme = ThemeData(brightness: Brightness.dark);
  ThemeData _lightTheme = ThemeData(brightness: Brightness.light);
  var _currentItemSelected = '<6Hours';
  var _urgency = ['<6Hours', '24Hours', '48Hours'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _brightness ? _darkTheme : _lightTheme,
      title: 'Shopping',
      home: Scaffold(
        appBar: AppBar(
          elevation:0.0,
          backgroundColor:Color(0xff08D294),
        ),
        backgroundColor: Color(0xff08D294),
        body: Container(
          child: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Container(
                        height: 50.0,
                        width: 50.0,
                        child: Image.asset('lib/assets/errands.png')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(
                      'ErrandsGuy',
                      style: TextStyle(
                        fontFamily: Constants.OPEN_SANS,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffffffff),
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 150.0),
                    child: Text(
                      'Order Form',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: Constants.OPEN_SANS,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 190.0, top: 10.0),
                    child: Text(
                      'Market name ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                          fontFamily: Constants.OPEN_SANS),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Market name',
                        hintText: 'Market name',
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 190.0, top: 10.0),
                    child: Text(
                      'Market location',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'OpenSans'),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Market location',
                        hintText: 'Market location',
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 190.0, top: 10.0),
                    child: Text(
                      'Shopping list',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'OpenSans'),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Shopping list',
                        hintText: 'Shopping list',
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 190.0, top: 10.0),
                    child: Text(
                      'Drop location ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'OpenSans'),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Drop location ',
                        hintText: 'Drop location ',
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 190.0, top: 10.0),
                    child: Text(
                      'Urgency*',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'OpenSans'),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 190.0, top: 10.0),
                    child: DropdownButton<String>(
                      items: _urgency.map((String dropDownStringItem) {
                        return DropdownMenuItem<String>(
                          value: dropDownStringItem,
                          child: Text(dropDownStringItem),
                        );
                      }).toList(),
                      onChanged: (String newValueSelected) {
                        setState(() {
                          this._currentItemSelected = newValueSelected;
                        });
                      },
                      value: _currentItemSelected,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                        splashColor: Color(0xff08D294),
                        color: Colors.white,
                        child: Text(
                          'Place Order',
                          style: TextStyle(
                            color: Color(0xff08D294),
                          ),
                        ),
                        onPressed: () {},
                        elevation: 6.0),
                  ),
                ],
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
