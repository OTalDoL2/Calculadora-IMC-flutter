import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Calculadora IMC',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Icon(Icons.person_outline, color: Colors.green, size: 110),
          const TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                // label: Text('Insira seu email')
                labelText: 'Peso kg'),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.amber, fontSize: 30),
          ),
          const TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                // label: Text('Insira seu email')
                labelText: 'Altura'),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.amber, fontSize: 30),
          ),
          ElevatedButton(
              onPressed: () {},
              child: const Text('Pressione',
                  textAlign: TextAlign.center)
        ],
      ),
    );
  }
}
