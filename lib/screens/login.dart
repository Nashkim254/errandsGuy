import'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernameController  = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor:
        Colors.greenAccent,
        primaryColor: Color(0xff08D294),
        brightness: Brightness.dark,
        ),
        home: Scaffold(
          backgroundColor: Color(0xff08D294),
          body: SafeArea(
              child: ListView(
                padding:EdgeInsets.symmetric(horizontal:24.0),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical:64),
                    child: SizedBox(
                      height:60.0,
                      child: Image.asset('lib/assets/errands.png'),
                    ),
                    ),
                    TextField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        labelText:'Username',
                      ),
                      onChanged: (value){},
                    ),
                    TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        labelText:'Password',
                      ),
                      obscureText: true,
                      onChanged: (value){},
                    ),
                    Container(height: 50.0,),
                    SizedBox(
                      height: 120.0,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed('/window');
                        },
                        child: Image.asset('lib/assets/thumb.png')),
                    ),
                    Container(height:20.0),
                    Container(
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.start,
                        children:<Widget>[
                          Text('Dont have an account?',
                          style:TextStyle(
                            color: Colors.black,
                          )
                          ),
                    RaisedButton(
                      color: Color(0xffff8ea0),
                      child: Text('Signup',textScaleFactor:1.5),
                      onPressed: (){
                        Navigator.of(context).pushNamed('/signup');
                      }
                      ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
        ),
    );
  }
}