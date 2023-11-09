import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SwitchOnAndOff extends StatefulWidget {

  const SwitchOnAndOff({super.key});

  @override
  State<SwitchOnAndOff> createState() => _SwitchOnAndOffState();
}

class _SwitchOnAndOffState extends State<SwitchOnAndOff> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch On and Off',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        ),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            FlutterSwitch(
                width: 100.0,
                height: 50.0,
                toggleSize: 45.0,
                value: status,
              borderRadius: 30.0,
              activeToggleColor: Colors.purple,
              inactiveToggleColor: Colors.black,
              activeSwitchBorder: Border.all(
                color: Colors.orange,
                width: 6.0,
              ),
              inactiveSwitchBorder: Border.all(
                color: Colors.black,
                width: 6.0,
              ),
              activeColor: Colors.deepPurpleAccent,
              inactiveColor: Colors.white,
              activeIcon: Icon(
                Icons.nightlight_round,
                color: Colors.white,
              ),
              inactiveIcon: Icon(
                Icons.wb_cloudy,
                color: Color(0xFFFFDF5D),
              ),
              onToggle: (val) {
                setState(() {
                  status = val;
                });
              },
            ),
            SizedBox(height: 20.0),
            FlutterSwitch(
              width: 100.0,
              height: 55.0,
              toggleSize: 45.0,
              value: status,
              borderRadius: 30.0,
              padding: 2.0,
              activeToggleColor: Colors.purple,
              inactiveToggleColor: Colors.white,
              activeSwitchBorder: Border.all(
                color: Colors.green,
                width: 6.0,
              ),
              inactiveSwitchBorder: Border.all(
                color: Colors.deepPurple,
                width: 6.0,
              ),
              activeColor: Colors.greenAccent,
              inactiveColor: Colors.blueAccent,
              activeIcon: Image.asset(
                "images/on-button-green-.png",
                fit: BoxFit.cover,
              ),
              inactiveIcon: Image.asset(
                "images/off-button-red.png",
                fit: BoxFit.cover,
              ),
              onToggle: (val) {
                setState(() {
                  status = val;
                });
              },
            ),
          ],
        ),
        ),
      ),
    );
  }
}
