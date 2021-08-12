import 'package:flutter/material.dart';

class App extends StatelessWidget {
  // Build é o método responsável por desenhar a tela.
  @override
  Widget build(BuildContext context) {
    // Stateless = Executa uma única vez.
    // Statefull = Executa toda vez que o estado altera (setState())
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Text("Hello"),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
        drawer: Drawer(),
        endDrawer: ListView(),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Home"),
          ],
        ),
      ),
    );
  }
}
