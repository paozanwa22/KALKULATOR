import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _inputController = TextEditingController();
  var angka;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Kalkulator'),),
        body: Column(
          children: [
            TextField(
              controller: _inputController,
              onChanged: (value) {
                for(int i = 0; i < value.length; i++){
                    if(value[i] == '+'){
                      var list = value.split('+'); // angka = 1,1
                      angka = int.parse(list[0]) + int.parse(list[1]); //angka = 2
                    }
                    if(value[i] == '-'){
                      var list = value.split('-'); // angka = 1,1
                      angka = int.parse(list[0]) - int.parse(list[1]); //angka = 2
                    }
                  }
              }
              ),
            ElevatedButton(onPressed: () {setState(() {
              _inputController.text = _inputController.text + ' = $angka';
            });}, child: Text('='))
          ],
        )
      )
    );
  }
}