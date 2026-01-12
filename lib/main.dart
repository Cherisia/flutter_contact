import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Image.asset('shoes.jpg')
      // home: Text('hi')
      // home: Container( width: 50, height: 50, color: Colors.blue )
      // Flutter 의 모든 단위는 LP (Local Pixel) 1cm = 38LP
      home: Center(
        child: Container( width: 50, height: 50, color: Colors.blue )
      )
    );
  }
}
