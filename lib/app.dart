import 'package:flutter/material.dart';

class App extends StatelessWidget {
  // Build é o método responsável por desenhar a tela.
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
                    TextField(),
                    Text('Peso'),
                    TextField(),
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
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
                color: Color(0xFFFF0000),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
