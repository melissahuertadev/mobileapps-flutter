import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat_wf/components/rounded_button.dart';
import 'package:flash_chat_wf/screens/registration_screen.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  //the static modifier makes the variable 'id' part of the class and not to the object
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 1),
      //upperBound: 100, < only for controller but not for animation.
      vsync: this,
    );
    //animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);

    controller.forward();
    controller.addListener(() {
      setState(() {
        //no code here, setState is called so the changes are displayed when the build happens
      });
      //print(animation.value);
    });
  }

  @override
  void dispose() {
    //Make sure to kill everything after destroying the screen, to avoid using resources
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    //height: animation.value * 100.0,
                    height: 60.0,
                  ),
                ),
                TypewriterAnimatedTextKit(
                  text: ['Flash Chat'],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                  speed: Duration(milliseconds: 500),
                  repeatForever: true,
                  pause: Duration(milliseconds: 1000),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              btnColor: Colors.lightBlueAccent,
              btnTitle: 'Log In',
              btnAction: () {
                //Go to login screen.
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            RoundedButton(
              btnColor: Colors.blueAccent,
              btnTitle: 'Register',
              btnAction: () {
                //Go to registration screen.
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
