import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(Demo());
}

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "counter App",
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Grocery"),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            "${count}", style: TextStyle(fontSize: 100),
        )),
        floatingActionButton: FloatingActionButton(onPressed: (){
          setState(() {
            
            count++;
            log(count.toString());
          });
        },child: Icon(Icons.add),),);
  }
}
