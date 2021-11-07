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
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('냠냠님의 어플'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 50,
              color: Colors.green,
              child: Center(
                child: Text(
                  'Name: Nyam',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
            Container(
              width: 300,
              height: 10,
              color: Colors.white,
            ),
            Container(
              width: 300,
              height: 50,
              color: Colors.green,
              child: Center(
                child: Text(
                  'Call: +82 1234 5678',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
            Container(
              width: 300,
              height: 10,
              color: Colors.white,
            ),
            Container(
              width: 300,
              height: 50,
              color: Colors.green,
              child: Text(
                'Portfolio: www.test.com',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
