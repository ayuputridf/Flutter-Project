import 'package:flutter/material.dart';
import 'package:counter_7/page/budget_form.dart';
import 'package:counter_7/page/budget_data.dart';
import 'package:counter_7/model/budget.dart';
import 'package:counter_7/drawer/drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'counter_7',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  final String title = 'Program Counter';

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
      if (_counter < 1) {
        return;
      }
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

//NAVIGATION BAR
      drawer: MyDrawer(),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
  // Mengecek nilai counter apakah genap atau ganjil            
            if (_counter %2 == 0)
              const Text(
                'GENAP' ,
                style: TextStyle(
                  color: Colors.red,
                ),
              )
            else if (_counter %2 == 1)
              const Text(
                'GANJIL' ,
                style: TextStyle(
                  color:Colors.blue,
                ),
              ),            
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children:[
          if (_counter != 0) ...[
            FloatingActionButton(
              onPressed: _decrementCounter,
              tooltip: 'Decrement',
              child: const Icon(Icons.remove)) 
        ],
        const Spacer(),
        FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add)) 
      ]),  
    ));
  }
}
