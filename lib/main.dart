import 'package:flutter/material.dart';
import 'package:flutter_radio_button/check_box.dart';
import 'package:flutter_radio_button/radio_button.dart';
import 'package:flutter_radio_button/switch_on_off.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: SwitchOnAndOff()
      //home: CheckBox(),
      home: RadioButton(),
    );
  }
}

