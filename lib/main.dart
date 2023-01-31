import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Mi Aplicacion 1'),
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
   void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
   void _resetCounter() {
    setState(() {
      _counter=0;
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
          children: <Widget>[
            
            const Text(
              'Pulse en boton para el contador:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            const Text(
              'Pulse en boton para el contador:',
            )
          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(child: Container()),
              FloatingActionButton(
                backgroundColor: Colors.red,
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ), 
          Expanded(child: Container()),
          FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: _resetCounter,
            tooltip: 'Reset',
            child: const Icon(Icons.restart_alt),  ),
            Expanded(child: Container()),
        FloatingActionButton(
          backgroundColor: Colors.blue,
        onPressed: _decrementCounter,
        tooltip: 'Decrement',
        child: const Icon(Icons.minimize),  ),
        Expanded(child: Container()), 
      ],
    
      ),
    );
  }
}
