import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    final names = ['Joao', 'Eric', 'Mat', 'Lucas'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(names[index]),
            );
          },
        ),
      ),
    );
  }
}
// class _HomePageState extends State<HomePage> {
//   var count = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//       ),
//       body: Center(child: Text('Contador: $count')),
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.add),
//         onPressed: () {
//           setState(() {
//             count++;
//           });
//         },
//       ),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var controller = HomeControler.of(context);
//     var size = MediaQuery.of(context).size;
//     var navigation = Navigator.of(context);
//     var theme = Theme.of(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//       ),
//       body: Center(child: Text('Contador: ${controller.value}')),
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.add),
//         onPressed: () {
//           controller.incrementar();
//         },
//       ),
//     );
//   }
// }
