import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Brightness bright = Brightness.dark;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador mejorado',
      theme: ThemeData(
        primaryColor: Colors.blueAccent[700],
        brightness: Brightness.dark,
      ),
      home: MyHomePage(title: 'Contador'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 170),
              child: Text(
                'Valor del contador actual:',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Text('$_counter',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 220),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: FloatingActionButton(
                      onPressed: _decrementCounter,
                      tooltip: 'Decrement',
                      child: Icon(Icons.minimize),
                      backgroundColor: Colors.purple,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: FloatingActionButton(
                      onPressed: _resetCounter,
                      tooltip: 'Reset',
                      child: Icon(Icons.restore),
                      backgroundColor: Colors.greenAccent[400],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: FloatingActionButton(
                      onPressed: _incrementCounter,
                      tooltip: 'Increment',
                      child: Icon(Icons.add),
                      backgroundColor: Colors.orange[800],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
