import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;
  @override
  void initState() {
    animationController =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    animation = Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeIn));
        animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child){
        return Scaffold(
          backgroundColor: Color(0xff08D294),
          body: Transform(
            transform:Matrix4.translationValues(animation.value * width, 0.0, 0.0),
              child:Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 50.0),
                        child:
                        Container(
                          height: 50.0,
                          width: 50.0,
                          child: Image.asset('lib/assets/errands.png')),
                        ),
                      Padding(
                    padding: const EdgeInsets.only(top:50.0,right: 200.0),
                    child: Text('ErrandsGuy', style: TextStyle(
                      fontFamily: 'Roboto Condensed',
                      fontSize:20.0,
                      fontWeight:FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.start,
                    ),
                  ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(70.0),
                    child: Image.asset('lib/assets/deliveryy.png'),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:20.0,top:50.0),
                        child: RaisedButton(
                          color:Color(0xfff68401),
                          onPressed: (){
                            Navigator.of(context).pushNamed('/login');
                          },
                          child:Text('Login',textScaleFactor:1.5)
                          ),
                      ),
                        Padding(
                          padding: const EdgeInsets.only(left:140.0,top:50.0),
                          child: RaisedButton(
                            color:Color(0xffff8ea0),
                          onPressed: (){
                            Navigator.of(context).pushNamed('/signup');
                          },
                          child:Text('Signup',textScaleFactor:1.5)
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
        );
      }
      );
  }
}
