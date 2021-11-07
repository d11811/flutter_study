import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      int result = 0;
      for (int i = 1; i <= 100; i++) {
        result = i + result;
      }
      _counter = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.orange[400],
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.yellow[400],
              child: Text('안녕하세요'),
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.green[400],
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.blue[400],
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.indigo[900],
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.purple[900],
              width: 100,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
