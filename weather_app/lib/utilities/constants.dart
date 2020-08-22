import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 42.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  icon: Icon(Icons.location_city, color: Colors.white),
  hintText: 'Type a city',
  //hintStyle: TextStyle(color: Colors.blue,),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(23.0),
    ),
    borderSide: BorderSide.none,
  ),
);
