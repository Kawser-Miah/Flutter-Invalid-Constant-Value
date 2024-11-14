import 'package:flutter/material.dart';

const int itemCount = 5;

class MyWidget extends StatelessWidget {
  const MyWidget({super.key, required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Coseries"),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            '$count items',
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyWidget(
      count:
          itemCount)); // Error: Flutter Invalid Constant Value Using Variable as Parameter
}
