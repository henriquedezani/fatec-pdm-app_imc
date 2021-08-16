import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final txtCtrlAltura = new TextEditingController();
  final txtCtrlPeso = new TextEditingController();

  String imagem = "images/ideal.png";

  String classificaIMC(double imc) {
    if (imc < 18.5)
      return "magreza";
    else if (imc < 24.9)
      return "ideal";
    else if (imc < 29.9)
      return "sobre";
    else
      return "obesidade";
  }

  void calcularIMC() {
    final altura = double.parse(txtCtrlAltura.text);
    final peso = double.parse(txtCtrlPeso.text);

    final imc = peso / (altura * altura);
    final classificacao = classificaIMC(imc);

    // todo vez que executo o SetState, o app executará
    // o método build().
    imagem = "images/$classificacao.png";
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // Stateless = Executa uma única vez.
    // Statefull = Executa toda vez que o estado altera (setState())
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Flexible(
              child: Container(
                padding: EdgeInsets.all(50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Altura'),
                    TextField(
                      controller: txtCtrlAltura,
                    ),
                    Text('Peso'),
                    TextField(
                      controller: txtCtrlPeso,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: calcularIMC,
                        child: Text('Calcular IMC'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                child: Image.asset(imagem),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
