import 'package:flutter/material.dart';

void main() {
  runApp(
    const Text(
      "Hello World!!!!",
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 20,
        color: Colors.red,
        fontWeight: FontWeight.bold
      )
    ),
  );
  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

}