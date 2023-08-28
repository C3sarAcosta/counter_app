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
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                contador = 0;
              });
            },
            icon: const Icon(Icons.refresh_outlined),
          )
        ],
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
          CustomButton(
              onPressed: () {
                setState(() {
                  contador++;
                });
              },
              icono: Icons.plus_one),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            icono: Icons.exposure_minus_1_rounded,
            onPressed: () {
              setState(() {
                if (contador == 0) return;
                contador--;
              });
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            icono: Icons.refresh_rounded,
            onPressed: () {
              setState(() {
                contador = 0;
              });
            },
          )
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icono;
  final VoidCallback? onPressed;
  const CustomButton({super.key, required this.icono, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icono),
    );
  }
}
