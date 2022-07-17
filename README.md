switcher_xliv

A Xlive Switcher plugin for Flutter

Getting Started
This plugin is based on Oleg Frolov's animation design and xlive_switch package that is not updated for years (non null safety)
Dribbble: https://dribbble.com/shots/5429846-Switcher-XLIV
xlive_switch: https://pub.dev/packages/xlive_switch

Thanks Oleg Forlov for this beautiful design, phucgaoxam for the base code and also istornz for his work on null safety update

Design:

Demo:

Usage
To use plugin, just import package import 'package:switcher_xlive/switcher_xlive.dart';

You can change the color of the switch follow by these attributes:

activeColor: background color when value is true
unActiveColor: background color when value is false
thumbColor: your thumb color
Example
import 'package:flutter/material.dart';
import 'package:switcher_xlive/switcher_xlive.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
@override
\_MyAppState createState() => \_MyAppState();
}

class \_MyAppState extends State<MyApp> {
bool \_value = true;

@override
void initState() {
super.initState();
}

@override
Widget build(BuildContext context) {
return MaterialApp(
home: Scaffold(
appBar: AppBar(
title: const Text('Plugin example app'),
),
body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
SwitcherXlive(
value: _value,
onChanged: _changeValue,
),
Text('Current value: $_value'),
],
),
),
),
);
}

void \_changeValue(bool value) {
setState(() {
\_value = value;
});
}
}
