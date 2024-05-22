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
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  String mensagem = '';
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
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                // label: Text('Insira seu email')
                labelText: 'Peso kg'),
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.amber, fontSize: 30),
            controller: pesoController,
           
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                // label: Text('Insira seu email')
                labelText: 'Altura'),
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.amber, fontSize: 30),
            controller: alturaController,
          ),
          ElevatedButton(
              onPressed: () {
                double peso = double.parse(pesoController.text);
                double altura = double.parse(alturaController.text);
                double imc = peso / (altura*altura);

                // switch(imc) {
                //   case <18.5:
                mensagem = 'abaixo do peso';
                //   break;
                // }

        //          const valorP = peso.value;
        // const valorA = altura.value;
        
        // const valorIMC = (valorP / (valorA * valorA)).toFixed(1);
        
        // let classific = '';
        
        // if(valorIMC < 18.5){
        //     classific = 'abaixo do peso'
        // }

        // else if(valorIMC < 25){
        //     classific = 'peso ideal, boa!'
        // }
        // else if(valorIMC < 30){
        //     classific = 'um pouco acima do peso!'
        // }
        // else if(valorIMC < 35){
        //     classific = 'obesidade grau I'
        // }
        // else if(valorIMC < 40){
        //     classific = 'obesidade grau II'
        // }
        // else{
        //     classific = 'obesidade grau III, cuidado!'
        // }
                // Use dataOne and dataTwo (weight and height) for BMI calculation
              },
              child: const Text('Pressione',
                  textAlign: TextAlign.center)
          ),
          Text(
            mensagem,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.red,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
