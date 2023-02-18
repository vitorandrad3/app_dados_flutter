import 'package:flutter/material.dart';
import 'dart:math';

int _num2 = 1;
int _num1 = 1;
Random randomGenerate = Random();

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade700,
      appBar: AppBar(
        title: const Center(
          child: Text('Dados Aleatórios'),
        ),
        backgroundColor: const Color.fromARGB(115, 19, 139, 89),
      ),
      body: const Dado1(),
    );
  }
}

//body
class Dado1 extends StatefulWidget {
  const Dado1({super.key});
  final int num1 = 1;
  @override
  State<Dado1> createState() => _Dado1State();
}

class _Dado1State extends State<Dado1> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(6),
              child: TextButton(
                child: Image.asset(
                  'images/dado$_num1.png',
                ),
                onPressed: () {
                  setState(() {
                    randomGen();
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
                padding: const EdgeInsets.all(4),
                child: TextButton(
                  child: Image.asset(
                    'images/dado$_num2.png',
                  ),
                  onPressed: () {
                    setState(() {
                      randomGen();
                    });
                  },
                )),
          ),
        ],
      ),
    );
  }
}

void randomGen() {
  _num1 = randomGenerate.nextInt(6) + 1;
  _num2 = randomGenerate.nextInt(6) + 1;
}
