import 'package:calculadora/componets/display.dart';
import 'package:calculadora/componets/keyboard.dart';
import 'package:calculadora/models/memory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();

  _onPressed(String command){
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);
    
    return MaterialApp(
      home: Column(
        children: [
          Display(memory.value),
          Keyboard(_onPressed)
          ],),);
  }
}