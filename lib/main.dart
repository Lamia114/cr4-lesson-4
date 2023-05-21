import 'package:flutter/material.dart';
import 'chat_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            ChatWidget(
              chatName: 'Mohammed',
              messageBody: 'Hello one',
              time: '10:00 AM',
              imagePath: 'https://picsum.photos/200/300.jpg',
            ),
            ChatWidget(
              chatName: 'Abdullah',
              messageBody: 'Hello Two',
              time: '12:00 AM',
              imagePath: 'https://picsum.photos/seed/picsum/200/300',
            ),
            ChatWidget(
              chatName: 'Shahad',
              messageBody: 'Hello one',
              time: '10:00 AM',
              imagePath: 'https://picsum.photos/200/300?grayscale',
            ),
            ChatWidget(
              chatName: 'Duha',
              messageBody: 'Hello Two',
              time: '12:00 AM',
              imagePath: 'https://picsum.photos/200/300/?blur',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
