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

  double result = 0, angkaPertama = 0, angkaKedua = 0;

  tambah(){
    setState(() {
      angkaPertama = double.parse(controller1.text);
      angkaKedua = double.parse(controller2.text);
      result = angkaPertama + angkaKedua;
    });
  }

  kurang(){
    setState(() {
      angkaPertama = double.parse(controller1.text);
      angkaKedua = double.parse(controller2.text);
      result = angkaPertama - angkaKedua;
    });
  }

  kali(){
    setState(() {
      angkaPertama = double.parse(controller1.text);
      angkaKedua = double.parse(controller2.text);
      result = angkaPertama * angkaKedua;
    });
  }

  bagi(){
    setState(() {
      angkaPertama = double.parse(controller1.text);
      angkaKedua = double.parse(controller2.text);
      result = angkaPertama / angkaKedua;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blueAccent.shade700,title: Text('Calculator'),),
        body: Column(
            children: [
              Align(alignment: Alignment.centerLeft, child: 
              Padding(padding: EdgeInsets.fromLTRB(20, 10, 0, 0), 
              child: Text('Result : $result', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)))),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20,0,20,0),
                child : 
              TextField(
                controller: controller1,
                decoration: InputDecoration(
                  labelText: 'Enter first number',
                  filled: true,
                  fillColor: Colors.black12
                ),
              )),
              SizedBox(
                height: 20,
              ),
              Padding(padding: EdgeInsets.fromLTRB(20,0,20,0),
              child:
              TextField(
                controller: controller2,
                decoration: InputDecoration(
                  labelText: 'Enter second number',
                  filled: true,
                  fillColor: Colors.black12
                ),
              )),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Column (
                  children: [
                    ElevatedButton(onPressed: (){
                      tambah();
                      controller1.clear();
                      controller2.clear();
                    }, child: Text('ADD')),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(onPressed: (){
                      kurang();
                      controller1.clear();
                      controller2.clear();
                    }, child: Text('SUBTRACT')),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(onPressed: (){
                      kali();
                      controller1.clear();
                      controller2.clear();
                    }, child: Text('MULTIPLY')),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(onPressed: (){
                      bagi();
                      controller1.clear();
                      controller2.clear();
                    }, child: Text('DIVIDE'))],
              ))
            ],
          ),
        )
    );
  }
}