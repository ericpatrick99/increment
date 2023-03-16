import 'package:flutter/material.dart';
import 'package:inmind/src/controllers/homecontroller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = HomeControler.of(context);
    var size = MediaQuery.of(context).size;
    var navigation = Navigator.of(context);
    var theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(child: Text('Contador: ${controller.value}')),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          controller.incrementar();
        },
      ),
    );
  }
}
