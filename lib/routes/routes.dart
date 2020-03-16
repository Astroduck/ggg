import 'package:flutter/widgets.dart';
import 'package:ggg/screens/firstscreen/firstscreen.dart';
import 'package:ggg/screens/secondscreen/secondscreen.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => FirstScreen(),
  "/SecondScreen": (BuildContext context) => SecondScreen(),
};