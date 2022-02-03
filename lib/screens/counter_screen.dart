import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30.0);

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('CounterScreen'),
        ),
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Número de clics', style: fontSize30),
            Text('$counter', style: fontSize30),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(
              Icons.exposure_minus_1_outlined,
            ),
            onPressed: () {
              counter--;
              setState(() {}); // Función anónima
            },
          ),
          FloatingActionButton(
            child: const Icon(
              Icons.exposure_zero_outlined,
            ),
            onPressed: () {
              counter = 0;
              setState(() {}); // Función anónima
            },
          ),
          FloatingActionButton(
            child: const Icon(
              Icons.exposure_plus_1_outlined,
            ),
            onPressed: () {
              counter++;
              setState(() {}); // Función anónima
            },
          ),
        ],
      ),
    );
  }
}
