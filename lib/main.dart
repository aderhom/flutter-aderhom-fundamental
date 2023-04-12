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

  double result = 0, angka1 = 0, angka2 = 0;

  tambah() {
    setState(() {
      angka1 = double.parse(controller1.text);
      angka2 = double.parse(controller2.text);
      result = angka1 + angka2;
    });
  }

  kurang() {
    setState(() {
      angka1 = double.parse(controller1.text);
      angka2 = double.parse(controller2.text);
      result = angka1 - angka2;
    });
  }

  kali() {
    setState(() {
      angka1 = double.parse(controller1.text);
      angka2 = double.parse(controller2.text);
      result = angka1 * angka2;
    });
  }

  bagi() {
    setState(() {
      angka1 = double.parse(controller1.text);
      angka2 = double.parse(controller2.text);
      result = angka1 / angka2;
    });
  }

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
              child: Text('Result : $result',
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
                  ElevatedButton(
                      onPressed: () {
                        tambah();
                        controller1.clear();
                        controller2.clear();
                      },
                      child: Text('Add')),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        kurang();
                        controller1.clear();
                        controller2.clear();
                      },
                      child: Text('Substract')),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        kali();
                        controller1.clear();
                        controller2.clear();
                      },
                      child: Text('Multipy')),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        bagi();
                        controller1.clear();
                        controller2.clear();
                      },
                      child: Text('Divide'))
                ],
              ))
        ],
      ),
    ));
  }
}