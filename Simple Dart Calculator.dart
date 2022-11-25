import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mock Calculator',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'CAL-C00L-8-ER'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class Calcoolator {
  Calcoolator.empty();

  String addNumber(String n, String previous) {
    if (previous == "0") {
      previous = "";
    }
    String result = previous + n;
    return result;
  }

  String showResult(String previous) {
    String argument = " ";
    int accumulator = 0;
    String lastOperator = "+";
    var equation = previous.split(" ");
    for (argument in equation) {
      if (argument == "+") {
        lastOperator = "+";
      } else if (argument == "-") {
        lastOperator = "-";
      } else {
        if (lastOperator == "+") {
          accumulator += int.parse(argument);
        } else if (lastOperator == "-") {
          accumulator -= int.parse(argument);
        }
      }
      print(accumulator);
    }
    return accumulator.toString();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  String reading = "0";
  String result = " ";

  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Calcoolator calcEmpty = new Calcoolator.empty();
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 104, 80, 170),
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title, style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 600,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 8, 24, 32),
                boxShadow: [BoxShadow(color: Color.fromARGB(255, 71, 71, 71).withOpacity(0.9), spreadRadius: 5, blurRadius: 7, offset: Offset(0,3),)]
              ),
              margin: const EdgeInsets.only(bottom: 10.0, left: 100, right: 150),
              width: 400,
              height: 80,
              child: Column(  
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 5, left: 50),
                    alignment: Alignment.topLeft,
                    child: Text(
                      '$reading',
                      //style: Theme.of(context).textTheme.headline4,
                      style: TextStyle(color: Colors.white, fontSize: 28),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 50),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'ANS:$result',
                      style: TextStyle(color: Colors.white, fontSize: 28),
                       
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              )
            ),
            ),
            Container(
              width: 450,
              child: Table(
                children: [
                  TableRow(
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: 10),
                        child: FloatingActionButton(
                        child: const Text("1", style: TextStyle(fontSize: 30)),
                        onPressed: () {
                          reading = calcEmpty.addNumber("1", reading);
                          _incrementCounter();
                        },
                      ),
                      ),
                      
                      FloatingActionButton(
                        child: const Text("2", style: TextStyle(fontSize: 30)),
                        onPressed: () {
                          reading = calcEmpty.addNumber("2", reading);
                          _incrementCounter();
                        },
                      ),
                      FloatingActionButton(
                        child: const Text("3", style: TextStyle(fontSize: 30)),
                        onPressed: () {
                          reading = calcEmpty.addNumber("3", reading);
                          _incrementCounter();
                        },
                      ),
                      FloatingActionButton(
                        child: const Icon(Icons.add),
                        shape: const RoundedRectangleBorder(),
                        onPressed: () {
                          reading = calcEmpty.addNumber(" + ", reading);
                          _incrementCounter();
                        },
                      )
                    ]
                  ),
                  TableRow(
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: 10),
                        child: FloatingActionButton(
                        child: const Text("4", style: TextStyle(fontSize: 30)),
                        onPressed: () {
                          reading = calcEmpty.addNumber("4", reading);
                          _incrementCounter();
                        },
                      ),
                      ),
                      FloatingActionButton(
                        child: const Text("5", style: TextStyle(fontSize: 30)),
                        onPressed: () {
                          reading = calcEmpty.addNumber("5", reading);
                          _incrementCounter();
                        },
                      ),
                      FloatingActionButton(
                        child: const Text("6", style: TextStyle(fontSize: 30)),
                        onPressed: () {
                          reading = calcEmpty.addNumber("6", reading);
                          _incrementCounter();
                        },
                      ),
                      FloatingActionButton(
                        child: const Icon(Icons.remove),
                        shape: const RoundedRectangleBorder(),
                        onPressed: () {
                          reading = calcEmpty.addNumber(" - ", reading);
                          _incrementCounter();
                        },
                      )
                    ]
                  ),
                  TableRow(
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: 10),
                        child: FloatingActionButton(
                        child: const Text("7", style: TextStyle(fontSize: 30)),
                        onPressed: () {
                          reading = calcEmpty.addNumber("7", reading);
                          _incrementCounter();
                        },
                      ),
                      ),
                      FloatingActionButton(
                        child: const Text("8", style: TextStyle(fontSize: 30)),
                        onPressed: () {
                          reading = calcEmpty.addNumber("8", reading);
                          _incrementCounter();
                        },
                      ),
                      FloatingActionButton(
                        child: const Text("9", style: TextStyle(fontSize: 30)),
                        onPressed: () {
                          reading = calcEmpty.addNumber("9", reading);
                          _incrementCounter();
                        },
                      ),
                      Container(),
                    ]
                  ),
                  TableRow(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: const Text("Elias Syyrilä", style: TextStyle(color: Color.fromARGB(255, 63, 26, 105),
                        fontSize: 15, fontWeight: FontWeight.bold), textAlign: TextAlign.center, 
                        ),
                      ),
                      FloatingActionButton(
                        child: const Text("0", style: TextStyle(fontSize: 30)),
                        onPressed: () {
                          reading = calcEmpty.addNumber("0", reading);
                          _incrementCounter();
                        },
                      ),
                      Container(),
                      FloatingActionButton(
                        child: const Text("=", style: TextStyle(fontSize: 30)),
                        shape: const RoundedRectangleBorder(),
                        onPressed: () {
                          result = calcEmpty.showResult(reading);
                          _incrementCounter();
                          reading = "0";
                        },
                      )
                    ]
                  ),
              ]
            ),
            ),
          ],
        ),
      ),
    );
  }
}
