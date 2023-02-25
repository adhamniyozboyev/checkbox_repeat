import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool value = false;
  bool value2 = false;
  bool value3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CheckboxListTile(
            activeColor: Colors.black,
             checkColor: Colors.green,
            tileColor: Colors.blue,
              title: Text('First'),
              value: value,
              onChanged: (val1) {
                setState(() {
                  value = val1!;
                });
              }),
          CheckboxListTile(
            activeColor: Colors.yellow,
             checkColor: Colors.green,
            tileColor: Colors.red,
              title: Text('Second'),
              value: value2,
              onChanged: (val2) {
                setState(() {
                  value2 = val2!;
                });
              }),
          CheckboxListTile(
            activeColor: Colors.white,
            checkColor: Colors.green,
            tileColor: Colors.orange,
              title: Text('Third'),
              value: value3,
              onChanged: (val3) {
                setState(() {
                  value3 = val3!;
                });
              }),
        ],
      ),
    );
  }
}
