import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 70.0,
                backgroundColor: Colors.purple[100],
                child: CircleAvatar(
                  radius: 68.0,
                  backgroundImage: AssetImage('images/mh-profilepicture.png'),
                )
              ),
              Text(
                'Melissa Huerta',
                style: TextStyle(
                  fontSize: 29.0,
                  color: Colors.white,
                  letterSpacing: 2.5,
                  fontFamily: '',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'SOFTWARE DEVELOPER',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Source Sans Pro',
                  fontSize: 15.0,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 100.0,
                child: Divider(
                  color: Colors.purple[50],
                ),
              ),
              Card(
                color: Colors.purple.shade100,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.indigo,
                  ),
                  title: Text(
                      '+1 510 *** 2**4',
                      style: TextStyle(
                        color: Colors.indigo,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                ),
              ),
              Card(
                color: Colors.purple.shade100,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: ListTile(
                  leading: Icon(
                      Icons.email,
                      color: Colors.indigo,
                    ),
                  title: Text(
                      'thecodeloops@gmail.com',
                      style: TextStyle(
                        color: Colors.indigo,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

//CHALLENGE:

/*
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Container(
        width: 100.0,
        color: Colors.red,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 100.0,
            height: 100.0,
            color: Colors.yellow,
          ),
          Container(
            color: Colors.green,
            width: 100.0,
            height: 100.0,
          ),
        ],
      ),
      Container(
        width: 100.0,
        color: Colors.blue,
      ),
    ],
  ),
*/