import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Calculator'),
      ),
      body: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text('Result : 0',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black))),
          SizedBox(
            height: 30,
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: TextField(
                controller: controller1,
                decoration: InputDecoration(
                    labelText: 'Enter first number',
                    filled: true,
                    fillColor: Colors.white),
              )),
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: TextField(
                controller: controller2,
                decoration: InputDecoration(
                    labelText: 'Enter second number',
                    filled: true,
                    fillColor: Colors.white),
              )),
          SizedBox(
            height: 20,
          ),
          Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('Add')),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('Substract')),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('Multipy')),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('Divide'))
                ],
              ))
        ],
      ),
    ));
  }
}
