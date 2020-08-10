import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/rich.png'),
            //image: NetworkImage('https://pbs.twimg.com/profile_images/764160114093850624/1Lrto5jt.jpg'),
          ),
        ),
      ),
    ),
  );
}