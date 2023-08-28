import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Contador'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$contador',
              style: const TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.w200,
              ),
            ),
            Text(
              'Click${contador == 1 ? '' : 's'}',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              contador++;
              //Reenderizar pantalla
              setState(() {});
            },
            child: const Icon(Icons.plus_one),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: () {
              contador < 1 ? contador = 0 : contador--;
              //Reenderizar pantalla
              setState(() {});
            },
            child: const Icon(Icons.exposure_minus_1),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: () {
              contador = 0;
              //Reenderizar pantalla
              setState(() {});
            },
            child: const Icon(Icons.refresh_outlined),
          ),
        ],
      ),
    );
  }
}
