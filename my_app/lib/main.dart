import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeworkProviderScreen(),
    );
  }
}

class HomeworkProviderScreen extends StatefulWidget {
  const HomeworkProviderScreen({super.key});

  @override
  State<HomeworkProviderScreen> createState() => _HomeworkProviderScreenState();
}

class _HomeworkProviderScreenState extends State<HomeworkProviderScreen> {
  
  bool isSwitched = false;

  
  Color squareColor = Colors.green;
  Color titleColor = Colors.pinkAccent;

  
  final List<Color> colors = [
    Colors.green,
    Colors.lightGreenAccent,
    Colors.deepPurpleAccent,
    Colors.purple,
    Colors.blue,
    Colors.red,
    Colors.teal,
    Colors.amber,
  ];

  
  void _changeColors(bool value) {
    final random = Random();
    setState(() {
      isSwitched = value;
      
      squareColor = colors[random.nextInt(colors.length)];
      titleColor = colors[random.nextInt(colors.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Homework Provider',
          style: TextStyle(
            color: titleColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Container(
              width: 200,
              height: 200,
              color: squareColor,
            ),
            const SizedBox(height: 30),
        
            Switch(
              value: isSwitched,
              onChanged: _changeColors,
              activeColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}