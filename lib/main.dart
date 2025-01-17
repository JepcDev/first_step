import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home: MyTexField(),
  ));
}

class MyTexField extends StatefulWidget {
  const MyTexField({super.key});

  @override
  State<MyTexField> createState() => _MyTexFieldState();
}

class _MyTexFieldState extends State<MyTexField> {
  void onChangedInput(String value){
    print(value);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField App"),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(hintText: "Ingrese el texto aquí..."),
                onSubmitted: (String value) {onChangedInput(value);},
              )
            ],
          ),
        ),
      ),
    );
  }
}