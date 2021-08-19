import 'package:flutter/material.dart';
import 'user_inputs(no.5).dart';

void main() {
  print('My name is Sana Udoekong');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: UserInputs());
  }
}
